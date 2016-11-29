import { HttpClient, json } from 'aurelia-fetch-client';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, Constants, EntryFilter, Helper } from '../Models/Models';

@autoinject
export class TimeEntryService {
    isRequesting = false;

    constructor(private client: HttpClient) { }

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
                .then(resp => resp.json())
                .then(id => {
                    if (id != -1) {
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
        this.isRequesting = true;
        return new Promise(resolve => {
            this.client.fetch(Constants.timeEntryApi + 'GetEntries?' + $.param(entryFilter),
                {
                    method: 'GET',
                    headers: {
                        'Authorization': Helper.getAuthHeader(),
                    }
                })
                .then(response => response.json())
                .then(entries => {
                    let returnEntries = new Array<TimeEntry>();
                    entries.forEach(element => {
                        let entry = new TimeEntry(element.Date, element.UserId, 0);
                        entry.comments = element.comments;
                        entry.exported = element.exported;
                        console.log(element.hours);
                        entry.hours = +element.hours;
                        entry.id = element.id;
                        entry.jobNumber = element.jobnumber;
                        entry.date = new Date(element.date);
                        returnEntries.push(entry);
                    });
                    resolve(returnEntries)
                }).catch(err => {
                    console.log("Error retrieving entries.");
                    resolve(new Array<TimeEntry>());
                });
        });
    }

    // delete(entry: TimeEntry): Promise<Array<TimeEntry>> {
    //     this.isRequesting = true;
    //     return new Promise(resolve => {
    //         setTimeout(() => {
    //             this.isRequesting = false;
    //             let index = 0;
    //             let itemIndex = 0;
    //             this.model.savedEntries.forEach(element => {
    //                 if (element.id === entry.id) {
    //                     itemIndex = index;
    //                 }
    //                 index++;
    //             });
    //             this.model.savedEntries.splice(itemIndex, 1);
    //             resolve(this.model.savedEntries.filter(x => x.userId === entry.userId));
    //         }, latency);
    //     });
    // }
}