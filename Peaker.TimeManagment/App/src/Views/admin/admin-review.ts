import { bindable } from 'aurelia-framework';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, EntryFilter, User } from '../../Models/Models';
import { ApplicationState } from '../../application-state';
import { FileService, TimeEntryService } from '../../Services/services';
import * as moment from 'moment';

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
    }

    activate() {
        if (this.appState.currentUser == null) {
            this.appState.returnRoute = this.returnRoute;
            this.router.navigate('login');
        }
        if (this.appState.filterCriteria == undefined) {
            let startDate = new Date(+new Date() - 12096e5);
            this.filterCriteria = new EntryFilter(null, null, true, null, moment.utc(startDate).toDate(), null, null, null);
        }
        else {
            this.filterCriteria = this.appState.filterCriteria;
            this.getEntries();
        }
    }

    editEntry(entry: TimeEntry) {
        this.appState.editEntry = entry;
        this.appState.filterCriteria = this.filterCriteria;
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
        return this.timeEntryService.get(this.filterCriteria)
            .then(entries => {
                this.timeEntries = entries;
                this.total = 0;
                if (this.timeEntries.length > 0) {
                    this.noEntriesFound = false;
                    for (var count = 0; count < this.timeEntries.length; count++) {
                        this.total += +this.timeEntries[count].userHours;
                        this.timeEntries[count].workCode.IsSelected =
                            this.appState.currentUser.UserWorkCodes.find(w =>
                                w.WorkCodeId == this.timeEntries[count].workCode.WorkCodeId).IsSelected;
                    }
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
