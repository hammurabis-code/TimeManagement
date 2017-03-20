import { bindable } from 'aurelia-framework';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, EntryFilter, User } from '../../Models/Models';
import { ApplicationState } from '../../application-state';
import { FileService, TimeEntryService } from '../../Services/services';
import * as moment from 'moment';
import * as toastr from 'toastr';

@autoinject
export class AdminReview {
    heading: string;
    entry: TimeEntry;
    @bindable timeEntries: TimeEntry[] = [];
    @bindable total: number = 0;
    @bindable filterCriteria: EntryFilter;
    @bindable users: User[] = [];
    @bindable noEntriesFound: boolean = false;
    returnRoute: string = 'adminReview';

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private router: Router, private fileService: FileService) {
        this.heading = 'Review Users Time';
        toastr.options.positionClass = 'toast-bottom-right';
    }

    activate() {
        if (this.appState.currentUser == null) {
            this.appState.returnRoute = this.returnRoute;
            this.router.navigate('login');
        }
        if (this.appState.adminFilterCriteria == undefined) {
            let startDate = new Date(+new Date() - 12096e5);
            this.filterCriteria = new EntryFilter(null, null, true, null, moment.utc(startDate).toDate(), null, null, null);
        }
        else {
            this.filterCriteria = this.appState.adminFilterCriteria;
            this.getEntries();
        }
    }

    editEntry(entry: TimeEntry) {
        this.appState.editEntry = entry;
        this.appState.adminFilterCriteria = this.filterCriteria;
        this.appState.returnRoute = this.returnRoute;
        this.router.navigate('edit');
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
        this.router.isNavigating = true;
        return this.timeEntryService.get(this.filterCriteria)
            .then(entries => {
                this.timeEntries = entries;
                this.total = 0;
                if (this.timeEntries.length > 0) {
                    this.noEntriesFound = false;
                }
                else {
                    this.noEntriesFound = true;
                }
                this.router.isNavigating = false;
            })
            .catch(err => { this.router.isNavigating = false; });
    }

    export() {
        this.router.isNavigating = true;
        this.fileService.exportEntriesForReview(this.filterCriteria)
            .then(result => {
                toastr.success('Entries exported.');
                this.router.isNavigating = false;
            })
            .catch(err => {
                toastr.error('An error occured during export.');
                this.router.isNavigating = false;
            });
    }
}
