import { autoinject } from 'aurelia-dependency-injection';
import { AccountService, TimeEntryService } from './Services/services';
import { User, TimeEntry, WorkCode } from './Models/Models';
import { singleton } from 'aurelia-framework'

@autoinject
@singleton()
export class ApplicationState {
    returnRoute: string;
    defaultRoute: string;
    currentUser: User;
    activeWorkCodes: WorkCode[];
    loggedIn: boolean;
    isLocal: boolean;
    restrictedJobnumbers: string[];

    constructor(private accountService: AccountService, private timeEntryService: TimeEntryService) {
        this.currentUser = null;
        this.returnRoute = '';
        this.defaultRoute = 'entry';
        this.activeWorkCodes = new Array<WorkCode>();
        this.loggedIn = false;
        var thisDomain = location.hostname.split('.')[1];
        if (thisDomain == 'timemanagement') {
            this.isLocal = true;
        }
        else {
            this.isLocal = false;
        }
    }

    get authenticated(): Promise<boolean> {
        return new Promise(resolve => {
            this.accountService.getAuthenticated()
                .then(response => {
                    this.loggedIn = response;
                    resolve(response);
                }).catch(err => {
                    console.log('Error getting Authentication: ' + err);
                    resolve(false);
                })
        });
    }

    fillRestrictedJobnumbers(): Promise<boolean> {
        return new Promise(resolve => {
            this.timeEntryService.getRestrictedJobnumbers()
                .then(jobnumbers => {
                    this.restrictedJobnumbers = jobnumbers;
                    resolve(true);
                });
        })
    }

    fillUser(): Promise<boolean> {
        return new Promise(resolve => {
            this.getUserInfo()
                .then(result => {
                    if (result) {
                        this.fillRestrictedJobnumbers()
                            .then(result => {
                                if (result) {
                                    resolve(true);
                                }
                                else {
                                    resolve(false);
                                }
                            });
                    }
                    else {
                        resolve(false);
                    }
                });
        })
            .catch(err => {
                console.log('Error filling user model: ' + err);
            });
    }

    getUserInfo(): Promise<boolean> {
        return new Promise(resolve => {
            this.accountService.getUserInfo()
                .then(user => {
                    this.currentUser = user;
                    let codes = new Array<WorkCode>();
                    codes = this.activeWorkCodes.filter(c =>
                        this.currentUser.UserWorkCodes.find(uc => uc.baseCode == c.BaseCode))
                    if (codes.length != 0) {
                        this.activeWorkCodes = codes;
                    }
                    resolve(true);
                });
        })
            .catch(err => {
                console.log('Error filling user model: ' + err);
            });
    }

    addPendingTimeEntries(pendingEntries: TimeEntry[], entryDate: Date) {
        for (var count = 0; count < pendingEntries.length; count++) {
            pendingEntries[count].entryDate = entryDate;
            pendingEntries[count].workCodeId = pendingEntries[count].workCode.WorkCodeId;
            this.currentUser.pendingTimeEntries.push(pendingEntries[count]);
        }
    }

    clearPendingEntries() {
        this.currentUser.pendingTimeEntries.length = 0;
    }

    isInRole(roleName: string) {

    }
}