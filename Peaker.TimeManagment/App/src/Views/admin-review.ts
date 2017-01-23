import { bindable } from 'aurelia-framework';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, EntryFilter, User } from '../Models/Models';
import { ApplicationState } from '../application-state';
import { TimeEntryService } from '../Services/time-entry-service'

@autoinject
export class AdminReview {
    heading: string;
    entry: TimeEntry;
    @bindable timeEntries: TimeEntry[] = [];
    @bindable total: number = 0;
    @bindable filterCriteria: EntryFilter = new EntryFilter(-1, null, null, null, new Date(+new Date - 12096e5), null, null, null);
    @bindable users: User[] = [];
    returnRoute: string = 'review';

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private router: Router) {
        this.heading = 'Review Users Time';
    }

    activate() {
        if (this.appState.currentUser == null) {
            this.appState.returnRoute = this.returnRoute;
            this.router.navigate('login');
        }
        //this.filterCriteria.CurrentUserDetailId = this.appState.currentUser.UserDetailId;
        //this.getEntries();
    }

    editEntry(entry: TimeEntry) {
        if (!entry.exportedToNavision) {
            this.appState.editEntry = entry;
            this.router.navigate('edit');
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