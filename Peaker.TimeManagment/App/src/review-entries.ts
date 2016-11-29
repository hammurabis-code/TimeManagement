import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, EntryFilter } from './Models/Models';
import { ApplicationState } from './application-state';
import { TimeEntryService } from './Services/time-entry-service'

@autoinject
export class reviewEntries {
    heading: string;
    timeEntries: TimeEntry[];
    total: number;
    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private router: Router) {
        this.heading = 'Review Time';
        this.timeEntries = new Array<TimeEntry>();
    }

    activate() {
        this.timeEntryService.get(new EntryFilter(this.appState.currentUser.UserId, null, new Date(+new Date - 12096e5), null, null))
            .then(entries => {
                this.timeEntries = this.timeEntries.concat(entries);
                this.total = 0;
                for (var count = 0; count < this.timeEntries.length; count++) {
                    this.total += +this.timeEntries[count].hours;
                }
            });
    }

    editEntry(entry: TimeEntry) {
        if (!entry.exported) {
            this.router.navigateToRoute('edit', { 'id': entry.id });
        }
    }

    // delete(entry: TimeEntry) {
    //     // this.timeEntryService.delete(entry)
    //     //     .then(entries => {
    //     //         console.log('Delete Fired!');
    //     //         this.timeEntries = entries;
    //     //         this.total = 0;
    //     //         for (var count = 0; count < this.timeEntries.length; count++) {
    //     //             this.total += +this.timeEntries[count].hours;
    //     //         }
    //     //     });
    // }
}
