import { bindable } from 'aurelia-framework';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { ExportType, TimeEntry, EntryFilter } from '../Models/Models';
import { ApplicationState } from '../application-state';
import { TimeEntryService, AdminService, FileService } from '../Services/services';
import * as toastr from 'toastr';

@autoinject
export class PayrollExport {
    @bindable timeEntries: TimeEntry[] = undefined;
    @bindable filterCriteria: EntryFilter = new EntryFilter(null, null, true, null, null, null, null, null, null);
    @bindable total: number;
    exportTypes: ExportType[] = [];
    @bindable exportType: ExportType;
    entriesFound: boolean = false;

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private adminService: AdminService, private fileService: FileService, private router: Router) {
        toastr.options.positionClass = 'toast-bottom-right';
    }

    activate() {
        if (this.exportTypes.length == 0) {
            this.exportTypes.push(undefined);
            this.exportTypes.push(new ExportType(1, 'Navision'));
            this.exportTypes.push(new ExportType(2, 'Payroll'))
        }
    }

    exportTypeChanged(newValue) {
        if (this.timeEntries != undefined) {
            this.timeEntries.length = 0;
            this.timeEntries = undefined;
        }
        if (newValue != undefined) {
            if (newValue.Type == 1) {
                this.filterCriteria.ExportedToNavision = false;
                this.filterCriteria.ExportedToPayroll = null;
                this.filterCriteria.RequireJobCode = true;
            }
            else {
                this.filterCriteria.ExportedToNavision = null;
                this.filterCriteria.ExportedToPayroll = false;
                this.filterCriteria.RequireJobCode = false;
            }
        }
    }

    getEntries() {
        this.appState.isLoading = true;
        if (this.exportType != undefined) {
            if (this.exportType.Type == 1) {
                this.filterCriteria.FilterStartDate = null;
                this.filterCriteria.FilterEndDate = null;
            }
            this.retrieveEntries();
        }
        this.appState.isLoading = false;
    }

    getAllPayrollEntries() {
        this.appState.isLoading = true;
        this.filterCriteria.ExportedToNavision = null;
        this.filterCriteria.ExportedToPayroll = false;
        this.filterCriteria.FilterStartDate = null;
        this.filterCriteria.FilterEndDate = null;
        this.retrieveEntries();
        this.appState.isLoading = false;
    }

    retrieveEntries() {
        this.timeEntryService.get(this.filterCriteria)
            .then(entries => {
                this.timeEntries = entries;
                if (this.timeEntries.length > 0) {
                    this.entriesFound = true;
                }
                else {
                    this.entriesFound = false;
                }
            });
    }

    clearPayrollExport() {
        this.router.isNavigating = true;
        this.adminService.clearPayrollExportFlag()
            .then(result => {
                if (result) {
                    toastr.success('You may need to reload the page to see updates.', 'Payroll export flag cleared.');
                }
                else {
                    toastr.error('Something went wrong during the requested operation.', 'And error occured.');
                }
            });
        this.router.isNavigating = false;
    }

    clearNavisionExport() {
        this.router.isNavigating = true;
        this.adminService.clearNavisionFlag()
            .then(result => {
                if (result) {
                    toastr.success('You may need to reload the page to see updates.', 'Navision export flag cleared.');
                }
                else {
                    toastr.error('Something went wrong during the requested operation.', 'And error occured.');
                }
            });
        this.router.isNavigating = false;
    }


    exportEntries() {
        this.router.isNavigating = true;
        if (this.exportType != undefined) {
            if (this.exportType.Type == 1) {
                this.fileService.exportEntriesForNavision(this.filterCriteria)
                    .then(result => {
                        this.timeEntries.length = 0;
                        this.timeEntries = undefined;
                    });
            }
            else {
                this.fileService.exportEntriesForPayroll(this.filterCriteria)
                    .then(result => {
                        this.timeEntries.length = 0;
                        this.timeEntries = undefined;
                    });
            }
        }
        else {
            toastr.error('Please select an export type.', 'Export Type Error')
        }
        this.router.isNavigating = false;
    }

}