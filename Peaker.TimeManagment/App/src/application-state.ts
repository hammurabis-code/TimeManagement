import { autoinject } from 'aurelia-dependency-injection';
import { AccountService, TimeEntryService } from './Services/services';
import { EntryFilter, User, TimeEntry, WorkCode } from './Models/Models';
import { singleton } from 'aurelia-framework'
import { Router, RouterConfiguration } from 'aurelia-router';

@autoinject
export class ApplicationState {
    returnRoute: string;
    defaultRoute: string;
    currentUser: User;
    loggedIn: boolean;
    isLocal: boolean;
    restrictedJobnumbers: string[];
    editEntry: TimeEntry;
    editType: string;
    isAdmin: boolean = false;
    reviewFilterCriteria: EntryFilter;
    adminFilterCriteria: EntryFilter;

    constructor(private accountService: AccountService, private timeEntryService: TimeEntryService,
        private config: RouterConfiguration, private router: Router) {
        this.currentUser = null;
        this.returnRoute = '';
        this.defaultRoute = 'entry';
        this.loggedIn = false;
        this.restrictedJobnumbers = [];
        this.editEntry = null;
        this.editType = '';
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
                        if (this.currentUser.UserRoles.find(r => r.RoleName == 'Admin') != undefined) {
                            this.isAdmin = true;
                        }
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
            this.currentUser.pendingTimeEntries.push(pendingEntries[count]);
        }
    }

    clearPendingEntries() {
        this.currentUser.pendingTimeEntries.length = 0;
    }

    isInRole(roleName: string) {
        let role = undefined;
        if (this.currentUser != null) {
            role = this.currentUser.UserRoles.find(r => r.RoleName == roleName);
        }
        return role != undefined;
    }

    isInRoles(roles: string[]) {
        let role = undefined;
        if (this.currentUser != null) {
            roles.some(targetRole => {
                role = this.currentUser.UserRoles.find(r => r.RoleName == targetRole);
                return role != undefined;
            });
        }
        return role != undefined;
    }
}