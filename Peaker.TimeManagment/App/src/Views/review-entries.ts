import { bindable } from 'aurelia-framework';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, EntryFilter } from '../Models/Models';
import { ApplicationState } from '../application-state';
import { FileService, TimeEntryService } from '../Services/Services';
import * as moment from 'moment';
import * as toastr from 'toastr';

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
        toastr.options.positionClass = 'toast-bottom-right';
    }

    activate() {
        if (this.appState.currentUser == null) {
            this.appState.returnRoute = this.returnRoute;
            this.router.navigate('login');
        }
        if (this.appState.reviewFilterCriteria == undefined) {
            let startDate = new Date(+new Date() - 12096e5);
            console.log(this.appState.currentUser.UserDetailId);
            this.filterCriteria = new EntryFilter(this.appState.currentUser.UserDetailId, null, false, null, startDate, null, null, null, null);
        }
        else {
            this.filterCriteria = this.appState.reviewFilterCriteria;
        }
        this.getEntries();
    }

    editEntry(entry: TimeEntry) {
        if (!entry.exportedToNavision) {
            this.appState.reviewFilterCriteria = this.filterCriteria;
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
        this.appState.isLoading = true;
        return this.timeEntryService.get(this.filterCriteria)
            .then(entries => {
                this.total = 0;
                for (var count = 0; count < entries.length; count++) {
                    this.total += +entries[count].userHours;
                }
                this.timeEntries = entries;
                if (this.timeEntries.length > 0) {
                    this.noEntriesFound = false;
                }
                else {
                    this.noEntriesFound = true;
                }
                this.appState.isLoading = false;
            })
            .catch(err => {
                toastr.error('An error occured retrieving the entries.');
                this.appState.isLoading = false;
            });

    }
    export() {
        this.appState.isLoading = true;
        this.fileService.exportEntriesForReview(this.filterCriteria)
            .then(result => {
                toastr.success('Entries exported.');
                this.appState.isLoading = false;
            })
            .catch(err => {
                toastr.error('An error occured during export.');
                this.appState.isLoading = false;
            });
    }
}
