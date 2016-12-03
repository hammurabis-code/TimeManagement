import { Router } from 'aurelia-router';
import { HttpClient, json } from 'aurelia-fetch-client';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, Constants, EntryFilter, Helper } from '../Models/Models';

@autoinject
export class TimeEntryService {
    isRequesting = false;

    constructor(private client: HttpClient, private router: Router) {
        client.configure(config => {
            config.useStandardConfiguration();
        });
    }

    saveEntries(entries: TimeEntry[], userId: string): Promise<boolean> {
        this.isRequesting = true;
        return new Promise(resolve => {
            entries.forEach(entry => {
                this.saveEntry(entry);
            });
            this.isRequesting = false;
            resolve(true);
        });
    }

    saveEntry(entry: TimeEntry): Promise<boolean> {
        return new Promise(resolve => {
            this.client.fetch(Constants.timeEntryApi + 'SaveEntry',
                {
                    body: JSON.stringify(entry),
                    headers: {
                        'Authorization': Helper.getAuthHeader(),
                        'Content-Type': 'application/json',
                        'Accept': '*/*',
                    },
                    method: 'POST'
                })
                .then(response => response.json())
                .then(response => {
                    if (response != -1) {
                        resolve(true);
                    }
                    resolve(false);
                }).catch(err => {
                    console.log("Error saving entry.");
                    resolve(false);
                });
        });
    }

    get(entryFilter: EntryFilter): Promise<Array<TimeEntry>> {
        this.router.isNavigating = true;
        this.isRequesting = true;
        return this.client.fetch(Constants.timeEntryApi + 'GetEntries?' + $.param(entryFilter),
            {
                method: 'GET',
                headers: {
                    'Authorization': Helper.getAuthHeader(),
                }
            })
            .then(response => response.json())
            .then(response => {
                let returnEntries = new Array<TimeEntry>();
                response.forEach(element => {
                    let entry = new TimeEntry(element.Date, element.UserId, 0);
                    entry.comments = element.comments;
                    entry.exported = element.exported;
                    console.log(element.hours);
                    entry.hours = +element.hours;
                    entry.id = element.id;
                    entry.jobNumber = element.jobnumber;
                    entry.date = new Date(element.date);
                    this.router.isNavigating = false;
                    returnEntries.push(entry);
                });
                return returnEntries;
            }).catch(err => {
                console.log("Error retrieving entries.");
                this.router.isNavigating = false;
                return new Array<TimeEntry>();
            });
    }

    delete(entry: TimeEntry): Promise<boolean> {
        this.router.isNavigating = true;
        return this.client.fetch(
            Constants.timeEntryApi + 'GetEntries' + $.param(entry.id),
            {
                method: 'DELETE',
                headers: {
                    'Authorization': Helper.getAuthHeader(),
                }
            })
            .then(response => response.json())
            .then(response => {
                return response;
            }).catch(err => {
                console.log('Error deleting entry.');
                return false;
            });
    }
}