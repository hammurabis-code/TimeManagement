import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, UserWorkCode, EntryFilter } from './Models/models';
import { ApplicationState } from './application-state';
import { TimeEntryService } from './Services/time-entry-service'

@autoinject
export class editEntries {
    heading: string;
    timeEntry: TimeEntry;
    entryDate: Date;
    total: number;
    workCodes: UserWorkCode[];

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private router: Router) {
        this.heading = 'Edit Time';
        this.workCodes = new Array<UserWorkCode>();
    }

    activate(params) {
        console.log(params.id);
        console.log(this.appState);
        this.appState.currentUser.UserWorkCodes.forEach(element => {
            this.workCodes.push(element);
        });
        this.timeEntryService.get(new EntryFilter(null, null, null, params.Id, null, null, null))
            .then(entries => {
                this.timeEntry = entries[0];
                this.entryDate = this.timeEntry.entryDate;
            });
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
        this.timeEntryService.saveEntry(this.timeEntry).then(success => {
            if (success) {
                this.timeEntry = null;
                this.router.navigate('review');
            }
        });

        if (this.entryDate === undefined) {
            toastr.error("You must select an entry date.", "Date Error");
            return;
        }
        let entryValid = this.timeEntry.isValid(this.appState.currentUser)
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