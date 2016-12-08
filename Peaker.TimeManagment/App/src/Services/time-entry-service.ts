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
        this.router.isNavigating = true;
        return new Promise(resolve => {
            entries.forEach(entry => {
                this.saveEntry(entry);
            });
            this.router.isNavigating = false;
            resolve(true);
        });
    }

    saveEntry(entry: TimeEntry): Promise<boolean> {
        this.router.isNavigating = true;
        return this.client.fetch(Constants.timeEntryApi + 'SaveEntry',
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
                this.router.isNavigating = false;
                if (response != -1) {
                    return true;
                }
                return false;
            }).catch(err => {
                this.router.isNavigating = false;
                console.log("Error saving entry.");
                return false;
            });
    }

    get(entryFilter: EntryFilter): Promise<Array<TimeEntry>> {
        this.router.isNavigating = true;
        this.isRequesting = true;
        return this.client.fetch(Constants.timeEntryApi + 'GetEntries',
            {
                body: JSON.stringify(entryFilter),
                headers: {
                    'Authorization': Helper.getAuthHeader(),
                    'Content-Type': 'application/json',
                    'Accept': '*/*',
                },
                method: 'POST'
            })
            .then(response => response.json())
            .then(response => {
                let returnEntries = new Array<TimeEntry>();
                response.forEach(element => {
                    let entry = new TimeEntry(element.Date, element.userId, 0);
                    entry.comments = element.comments;
                    entry.exported = element.exported;
                    entry.hours = +element.hours;
                    entry.id = element.id;
                    entry.jobNumber = element.jobnumber;
                    entry.date = new Date(element.date);
                    returnEntries.push(entry);
                });
                this.router.isNavigating = false;
                return returnEntries;
            }).catch(err => {
                console.log("Error retrieving entries.");
                this.router.isNavigating = false;
                return new Array<TimeEntry>();
            });
    }

    getTotalHours(entryFilter: EntryFilter): Promise<number> {
        this.router.isNavigating = true;
        return this.client.fetch(Constants.timeEntryApi + 'GetTotalHoursForDate',
            {
                body: JSON.stringify(entryFilter),
                headers: {
                    'Authorization': Helper.getAuthHeader(),
                    'Content-Type': 'application/json',
                    'Accept': '*/*',
                },
                method: 'POST'
            })
            .then(response => response.json())
            .then(response => {
                this.router.isNavigating = false;
                return response;
            }).catch(err => {
                console.log("Error retrieving entries.");
                this.router.isNavigating = false;
                return 24;
            });
    }

    delete(entry: TimeEntry): Promise<boolean> {
        this.router.isNavigating = true;
        return this.client.fetch(
            Constants.timeEntryApi + 'DeleteEntry',
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
                this.router.isNavigating = false;
                return response;
            }).catch(err => {
                this.router.isNavigating = false;
                console.log('Error deleting entry.');
                return false;
            });
    }
}