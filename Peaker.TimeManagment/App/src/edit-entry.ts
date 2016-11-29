import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, WorkCode, EntryFilter } from './Models/models';
import { ApplicationState } from './application-state';
import { TimeEntryService } from './Services/time-entry-service'

@autoinject
export class editEntries {
    heading: string;
    timeEntry: TimeEntry;
    entryDate: Date;
    total: number;
    workCodes: WorkCode[];

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private router: Router) {
        this.heading = 'Edit Time';
        this.workCodes = new Array<WorkCode>();
    }

    activate(params) {
        console.log(params.id);
        this.timeEntryService.get(new EntryFilter(this.appState.currentUser.UserId, params.id, null, null, null))
            .then(entries => {
                this.timeEntry = entries[0];
                this.entryDate = this.timeEntry.date;
            });
        this.appState.activeWorkCodes.forEach(element => {
            this.workCodes.push(element);
        });
    }

    submit() {
        this.timeEntry.date = this.entryDate;
        this.timeEntryService.saveEntry(this.timeEntry).then(success => {
            if (success) {
                this.timeEntry = null;
                this.router.navigate('review');
            }
        });
    }

    cancel() {
        this.router.navigate('review');
    }
}