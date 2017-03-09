import { HttpClient, json } from 'aurelia-fetch-client';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, Constants, EntryFilter, Helper, UserWorkCode } from '../Models/Models';

@autoinject
export class TimeEntryService {
    isRequesting = false;

    constructor(private client: HttpClient) {
        client.configure(config => {
            config.useStandardConfiguration();
        });
    }

    saveEntries(entries: TimeEntry[]) {
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
                if (response.status == 200) {
                    return true;
                }
                return false;
            }).catch(err => {
                console.log("Error saving entry.");
                return false;
            });

    }

    saveEntry(entry: TimeEntry): Promise<boolean> {
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
                if (response.status == 200) {
                    return true;
                }
                return false;
            }).catch(err => {
                console.log("Error saving entry.");
                return false;
            });
    }

    get(entryFilter: EntryFilter): Promise<Array<TimeEntry>> {
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
                    let code = new UserWorkCode();
                    code.baseCode = element.workCode.baseCode;
                    code.description = element.workCode.description;
                    code.isJobNumberRequired = element.workCode.isJobNumberRequired;
                    code.workCodeId = element.workCode.workCodeId;
                    code.isSelected = element.workCode.isSelected;
                    newEntry.workCode = code;
                    newEntry.userAccountingName = element.userAccountingName;
                    newEntries.push(newEntry);
                    index++;
                });
                return newEntries;
            }).catch(err => {
                console.log("Error retrieving entries.");
                return new Array<TimeEntry>();
            });
    }

    getTotalHours(entryFilter: EntryFilter): Promise<number> {
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
                return response;
            }).catch(err => {
                console.log("Error retrieving entries.");
                return 24;
            });
    }

    getRestrictedJobnumbers(): Promise<any[]> {
        return this.client.fetch(Constants.timeEntryApi + 'getRestrictedJobnumbers',
            {
                method: 'get',
                headers: { 'Authorization': Helper.getAuthHeader() }
            })
            .then(resp => resp.json<any[]>())
            .then(resp => {
                return resp;
            })
    }

    delete(entry: TimeEntry): Promise<boolean> {
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
                if (response.status == 200) {
                    return true;
                }
                return false;
            }).catch(err => {
                console.log('Error deleting entry.');
                return false;
            });
    }
}
