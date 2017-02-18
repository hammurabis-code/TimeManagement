import { bindable } from 'aurelia-framework';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, EntryFilter } from '../Models/Models';
import { ApplicationState } from '../application-state';
import { FileService, TimeEntryService } from '../Services/Services';
import * as moment from 'moment';

@autoinject
export class reviewEntries {
    heading: string;
    entry: TimeEntry;
    @bindable timeEntries: TimeEntry[] = [];
    @bindable total: number = 0;
    @bindable filterCriteria: EntryFilter;
    @bindable noEntriesFound: boolean = false;
    returnRoute: string = 'review';
    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private router: Router, private fileService: FileService) {
        this.heading = 'Review Time';
    }

    activate() {
        if (this.appState.currentUser == null) {
            this.appState.returnRoute = this.returnRoute;
            this.router.navigate('login');
        }
        if (this.appState.filterCriteria == undefined) {
            let startDate = new Date(+new Date() - 12096e5);
            this.filterCriteria = new EntryFilter(this.appState.currentUser.UserDetailId, null, false, null, startDate, null, null, null, null);
        }
        else {
            this.filterCriteria = this.appState.filterCriteria;
        }
        this.getEntries();
    }

    editEntry(entry: TimeEntry) {
        if (!entry.exportedToNavision) {
            this.appState.filterCriteria = this.filterCriteria;
            this.appState.editEntry = entry;
            this.appState.returnRoute = this.returnRoute;
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
                for (var count = 0; count < entries.length; count++) {
                    this.total += +entries[count].userHours;
                }
                this.timeEntries = entries;
                this.total = 0;
                if (this.timeEntries.length > 0) {
                    this.noEntriesFound = false;
                }
                else {
                    this.noEntriesFound = true;
                }
            });
    }
    export() {
        this.fileService.exportEntriesForReview(this.filterCriteria)
            .then(result => {
                toastr.success('Entries exported.');
            })
            .catch(err => {
                toastr.error('An error occured during export.');
            });
    }
}
