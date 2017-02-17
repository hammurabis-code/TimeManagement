import { Router } from 'aurelia-router';
import { autoinject, bindable } from 'aurelia-framework';
import { TimeEntry, UserWorkCode, EntryFilter } from './Models/models';
import { ApplicationState } from './application-state';
import { TimeEntryService } from './Services/time-entry-service'

@autoinject
export class editEntries {
    heading: string;
    @bindable timeEntries: TimeEntry[];
    entryDate: Date;
    total: number = 0;
    workCodes: UserWorkCode[];
    returnRoute: string = 'edit';
    originalHours: number;

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private router: Router) {
        this.heading = 'Edit Time';
        this.workCodes = new Array<UserWorkCode>();
        this.timeEntries = new Array<TimeEntry>();
    }

    activate(params) {
        if (this.appState.currentUser == null) {
            this.appState.returnRoute = this.returnRoute;
            this.router.navigate('login');
        }
        if (this.appState.editEntry == null) {
            this.router.navigate('entry');
        }
        this.appState.currentUser.UserWorkCodes.forEach(element => {
            this.workCodes.push(element);
        });
        this.timeEntries.push(this.appState.editEntry);
        console.log(this.timeEntries[0].workCode);
        this.workCodes.forEach(element => {
            if (element === this.timeEntries[0].workCode) {
                console.log(element);
            }
        });
        this.entryDate = this.timeEntries[0].entryDate;
        this.appState.editEntry = null;
        this.originalHours = this.timeEntries[0].userHours;

    }

    validateTotalTimeForDate(): Promise<boolean> {
        let result = true;
        return this.timeEntryService.getTotalHours(new EntryFilter(this.appState.currentUser.UserDetailId, null, null, null, this.entryDate, this.entryDate, null))
            .then(hours => {
                let validationTotal: number = hours;
                console.log(this.total)
                validationTotal -= this.originalHours;
                validationTotal += this.timeEntries[0].userHours;
                console.log(this.total);
                console.log()
                if (validationTotal > 24) {
                    result = false;
                }
                console.log(result);
                return result;
            });
    }

    submit() {
        this.timeEntries[0].entryDate = this.entryDate;
        if (this.entryDate === undefined) {
            toastr.error("You must select an entry date.", "Date Error");
            return;
        }
        let entryValid = this.timeEntries[0].isValid(this.appState.currentUser, this.appState.restrictedJobnumbers)
        if (entryValid) {
            this.validateTotalTimeForDate()
                .then(result => {
                    if (!result) {
                        toastr.error("Total time exceeds 24 hours.", "Duration Error");
                        return;
                    }
                    else {
                        if (entryValid) {
                            this.timeEntryService.saveEntry(this.timeEntries[0])
                                .then(success => {
                                    if (success) {
                                        this.timeEntries.length = 0
                                        this.router.navigate(this.appState.returnRoute);
                                    }
                                });
                        }
                    }
                })
        }
    }

    cancel() {
        this.router.navigate(this.appState.returnRoute);
    }
}