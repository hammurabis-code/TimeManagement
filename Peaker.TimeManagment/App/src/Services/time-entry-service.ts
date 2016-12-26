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

    saveEntries(entries: TimeEntry[]) {
        this.router.isNavigating = true;
        return this.client.fetch(Constants.timeEntryApi + 'SaveEntries',
            {
                body: JSON.stringify(entries),
                headers: {
                    'Authorization': Helper.getAuthHeader(),
                    'Content-Type': 'application/json',
                    'Accept': '*/*',
                },
                method: 'POST'
            })
            .then(response => {
                this.router.isNavigating = false;
                if (response.status == 200) {
                    return true;
                }
                return false;
            }).catch(err => {
                this.router.isNavigating = false;
                console.log("Error saving entry.");
                return false;
            });

    }

    // saveEntries(entries: TimeEntry[], userId: string): Promise<boolean> {
    //     this.router.isNavigating = true;
    //     return new Promise(resolve => {
    //         entries.forEach(entry => {
    //             return this.saveEntry(entry);
    //         });
    //         this.router.isNavigating = false;
    //         resolve(true);
    //     });
    // }

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
            .then(response => {
                this.router.isNavigating = false;
                if (response.status == 200) {
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
            .then(response => response.json<TimeEntry[]>())
            .then(response => {
                let newEntries = new Array<TimeEntry>();
                let index = 0;
                response.forEach(element => {
                    var newEntry = new TimeEntry(element.entryDate, element.userDetailId, index);
                    newEntry.comments = element.comments;
                    newEntry.exportedToNavision = element.exportedToNavision;
                    newEntry.exportedToPayroll = element.exportedToPayroll;
                    newEntry.id = element.id;
                    newEntry.jobnumber = element.jobnumber;
                    newEntry.userHours = element.userHours;
                    newEntry.workCodeId = element.workCodeId;
                    newEntry.workCode = element.workCode;
                    newEntries.push(newEntry);
                    index++;
                });
                this.router.isNavigating = false;
                return newEntries;
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

    getRestrictedJobnumbers(): Promise<any[]> {
        this.router.isNavigating = true;
        return this.client.fetch(Constants.timeEntryApi + 'getRestrictedJobnumbers',
            {
                method: 'get',
                headers: { 'Authorization': Helper.getAuthHeader() }
            })
            .then(resp => resp.json<any[]>())
            .then(resp => {
                console.log(resp);
                return resp;
            })
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
            .then(response => {
                this.router.isNavigating = false;
                if (response.status == 200) {
                    return true;
                }
                return false;
            }).catch(err => {
                this.router.isNavigating = false;
                console.log('Error deleting entry.');
                return false;
            });
    }
}