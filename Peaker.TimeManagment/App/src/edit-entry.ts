import { Router } from 'aurelia-router';
import { autoinject, bindable } from 'aurelia-framework';
import { TimeEntry, UserWorkCode, EntryFilter } from './Models/models';
import { ApplicationState } from './application-state';
import { TimeEntryService } from './Services/time-entry-service'
import * as toastr from 'toastr';

@autoinject
export class editEntries {
    heading: string;
    @bindable timeEntries: TimeEntry[];
    entryDate: Date;
    total: number = 0;
    @bindable workCodes: UserWorkCode[];
    returnRoute: string = 'edit';
    originalHours: number;
    originalDate: Date;

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private router: Router) {
        this.heading = 'Edit Time';
        this.workCodes = new Array<UserWorkCode>();
        this.timeEntries = new Array<TimeEntry>();
        toastr.options.positionClass = 'toast-bottom-right';

    }

    activate(params) {
        if (this.appState.currentUser !== null &&
            this.appState.currentUser !== undefined) {
            this.appState.currentUser.UserWorkCodes.forEach(element => {
                this.workCodes.push(element);
            });
        }
        if (this.appState.currentUser == null) {
            this.appState.returnRoute = this.returnRoute;
            this.router.navigate('login');
        }
        if (this.appState.editEntry == null) {
            this.router.navigate('entry');
        }
        this.timeEntries.push(this.appState.editEntry);
        this.workCodes.forEach(code => {
            if (code.workCodeId === this.timeEntries[0].workCode.workCodeId) {
                code.isViewable = true;
                this.timeEntries[0].workCode = code;
            }
        });
        this.entryDate = this.timeEntries[0].entryDate;
        this.originalDate = this.entryDate;
        this.appState.editEntry = null;
        this.originalHours = this.timeEntries[0].userHours;

    }

    validateTotalTimeForDate(): Promise<boolean> {
        let result = true;
        return this.timeEntryService.getTotalHours(new EntryFilter(this.appState.currentUser.UserDetailId, null, null, null, this.entryDate, this.entryDate, null))
            .then(hours => {
                let validationTotal: number = hours;
                if (this.originalDate === this.entryDate) {
                    validationTotal -= this.originalHours;
                }
                validationTotal += this.timeEntries[0].userHours;
                if (validationTotal > 24) {
                    result = false;
                }
                return result;
            });
    }

    submit() {
        this.router.isNavigating = true;
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
                                        this.timeEntries.length = 0;
                                        this.router.isNavigating = false;
                                        this.router.navigate(this.appState.returnRoute);
                                    }
                                });
                        }
                    }
                })
        }
        this.router.isNavigating = false;
    }

    cancel() {
        this.router.navigate(this.appState.returnRoute);
    }
}