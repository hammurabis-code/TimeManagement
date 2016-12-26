import { autoinject, bindable } from 'aurelia-framework';
import { UserWorkCode, TimeEntry, EntryFilter } from './models/models';
import { ApplicationState } from './application-state';
import { Router } from 'aurelia-router';
import { TimeEntryService } from './Services/Services';
import * as toastr from 'toastr';

@autoinject
export class entry {
    heading: string;
    entryDate: Date;
    @bindable timeEntries: TimeEntry[];
    workCodes: UserWorkCode[];

    constructor(private appState: ApplicationState, private router: Router, private timeEntryService: TimeEntryService) {
        this.heading = 'Enter Time';
        this.workCodes = new Array<UserWorkCode>();
        this.timeEntries = new Array<TimeEntry>();
        this.entryDate = new Date();
    }

    activate(params) {
        if (params != undefined) {
            if (params.submitted) {
                toastr.success("Time entries submitted.");
            }
        }
        this.appState.currentUser.UserWorkCodes.forEach(element => {
            this.workCodes.push(element);
        });
        if (this.appState.currentUser.hasPendingEntries) {
            let dateSet = false;
            for (let count = 0; count < this.appState.currentUser.pendingTimeEntries.length; count++) {
                this.timeEntries.push(this.appState.currentUser.pendingTimeEntries[count]);
                if (!dateSet) {
                    this.entryDate == new Date(this.appState.currentUser.pendingTimeEntries[count].entryDate);
                }
            }
            this.appState.clearPendingEntries();
        }
        else {
            this.entryDate = new Date();
            let entryCount = this.appState.currentUser.DefaultJobEntries;
            for (let count = 0; count < entryCount; count++) {
                this.timeEntries.push(new TimeEntry(this.entryDate, this.appState.currentUser.UserDetailId, count))
            }
        }
    }

    addJob() {
        this.timeEntries.push(new TimeEntry(this.entryDate, this.appState.currentUser.UserDetailId, this.timeEntries.length));
    }

    review() {
        if (this.entryDate === undefined) {
            toastr.error("You must select an entry date.", "Date Error");
            return;
        }
        let entriesValid = true;
        for (let index = 0; index < this.timeEntries.length; index++) {
            let entry = this.timeEntries[index];
            if (!entry.isValid(this.appState.currentUser)) {
                entriesValid = false;
            }
        }
        if (entriesValid) {
            this.validateTotalTimeForDate()
                .then(result => {
                    if (!result) {
                        toastr.error("Total time exceeds 24 hours.", "Duration Error");
                        return;
                    }
                    else {
                        if (entriesValid) {
                            this.appState.addPendingTimeEntries(this.timeEntries, this.entryDate);
                            this.timeEntries.length = 0;
                            this.router.navigate('submit');
                        }
                    }
                })
        }
    }

    validateTotalTimeForDate(): Promise<boolean> {
        let result = true;
        return this.timeEntryService.getTotalHours(new EntryFilter(this.appState.currentUser.UserDetailId, null, null, null, this.entryDate, this.entryDate, null))
            .then(hours => {
                let total: number = hours;
                for (let count = 0; count < this.timeEntries.length; count++) {
                    total += +this.timeEntries[count].userHours;
                }
                if (total > 24) {
                    result = false;
                }
                return result;
            });

    }

    delete(entry: TimeEntry) {
        this.timeEntries.splice(entry.index, 1);
        let index = 0;
        this.timeEntries.forEach(element => {
            element.index = index;
            index++;
        });
    }

    setDate(e) {
        this.entryDate = e.detail.event.date;
    }
}