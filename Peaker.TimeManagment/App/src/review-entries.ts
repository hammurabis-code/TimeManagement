import { bindable } from 'aurelia-framework';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, EntryFilter } from './Models/Models';
import { ApplicationState } from './application-state';
import { TimeEntryService } from './Services/time-entry-service'

@autoinject
export class reviewEntries {
    heading: string;
    entry: TimeEntry;
    @bindable timeEntries: TimeEntry[] = [];
    @bindable total: number = 0;
    @bindable filterCriteria: EntryFilter = new EntryFilter(-1, null, null, null, new Date(+new Date - 12096e5), null, null);
    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private router: Router) {
        this.heading = 'Review Time';
        this.filterCriteria.CurrentUserDetailId = this.appState.currentUser.UserDetailId;
    }

    activate() {
        console.log(this.appState);
        this.getEntries();
    }

    editEntry(entry: TimeEntry) {
        if (!entry.exportedToNavision) {
            this.router.navigateToRoute('edit', { 'id': entry.id });
        }
    }

    delete(entry: TimeEntry) {
        this.timeEntryService.delete(entry)
            .then(result => {
                if (result) {
                    this.getEntries();
                }
            });
    }

    getEntries(): Promise<any> {
        return this.timeEntryService.get(this.filterCriteria)
            .then(entries => {
                this.timeEntries = entries;
                this.total = 0;
                for (var count = 0; count < this.timeEntries.length; count++) {
                    this.total += +this.timeEntries[count].userHours;
                }
            });
    }
}
