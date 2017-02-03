import { Router } from 'aurelia-router';
import { autoinject, bindable } from 'aurelia-framework';
import { TimeEntry, UserWorkCode, EntryFilter } from './Models/models';
import { ApplicationState } from './application-state';
import { TimeEntryService } from './Services/time-entry-service'

@autoinject
export class editEntries {
    heading: string;
    @bindable timeEntry: TimeEntry;
    entryDate: Date;
    total: number;
    workCodes: UserWorkCode[];
    returnRoute: string = 'edit';

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private router: Router) {
        this.heading = 'Edit Time';
        this.workCodes = new Array<UserWorkCode>();
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
        this.timeEntry = this.appState.editEntry;
        this.entryDate = this.timeEntry.entryDate;
        this.appState.editEntry = null;
        // this.appState.currentUser.UserWorkCodes.forEach(element => {
        //     this.workCodes.push(element);
        // });
        // this.timeEntryService.get(new EntryFilter(null, null, null, params.Id, null, null, null))
        //     .then(entries => {
        //         this.timeEntry = entries[0];
        //         this.entryDate = this.timeEntry.entryDate;
        //     });
    }

    validateTotalTimeForDate(): Promise<boolean> {
        let result = true;
        return this.timeEntryService.getTotalHours(new EntryFilter(this.appState.currentUser.UserDetailId, null, null, null, this.entryDate, this.entryDate, null))
            .then(hours => {
                let total: number = hours;
                total += this.timeEntry.userHours;
                if (total > 24) {
                    result = false;
                }
                return result;
            });
    }

    submit() {
        this.timeEntry.entryDate = this.entryDate;
        if (this.entryDate === undefined) {
            toastr.error("You must select an entry date.", "Date Error");
            return;
        }
        let entryValid = this.timeEntry.isValid(this.appState.currentUser, this.appState.restrictedJobnumbers)
        if (entryValid) {
            this.validateTotalTimeForDate()
                .then(result => {
                    if (!result) {
                        toastr.error("Total time exceeds 24 hours.", "Duration Error");
                        return;
                    }
                })
                .then(r => {
                    if (entryValid) {
                        this.timeEntryService.saveEntry(this.timeEntry)
                            .then(success => {
                                if (success) {
                                    this.timeEntry = null;
                                    this.router.navigate('review');
                                }
                            });
                    }
                });
        }
    }

    cancel() {
        this.router.navigate('review');
    }
}