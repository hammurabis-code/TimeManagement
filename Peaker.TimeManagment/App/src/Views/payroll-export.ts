import { bindable } from 'aurelia-framework';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, EntryFilter, Week } from '../Models/Models';
import { ApplicationState } from '../application-state';
import { TimeEntryService, AdminService, FileService } from '../Services/services';
import * as toastr from 'toastr';

export class PayrollExport {
    @bindable timeEntries: TimeEntry[] = undefined;
    @bindable total: number = 0;
    @bindable filterCriteria: EntryFilter = new EntryFilter(null, null, true, null, new Date(+new Date - 12096e5), null, false, true, null);
    weeks: Week[];
    selectedWeek: Week;
    years: number[] = [];
    @bindable selectedYear: number;

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private adminService: AdminService, private fileService: FileService, private router: Router) {
        this.selectedWeek = undefined;
        console.log("Admin constructed");
    }

    activate() {
        console.log("Admin activated");
        this.setYears();
        this.setWeeks();
    }

    selectedYearChanged() {
        this.setWeeks();
    }

    setWeeks(): Promise<any> {
        return this.adminService.getWeeks(this.selectedYear)
            .then(weeks => {
                this.weeks = new Array<Week>();
                this.weeks.push(undefined);
                this.weeks = this.weeks.concat(weeks);
                this.selectedWeek = undefined;
            });
    }

    setYears() {
        let startYear: number = 2016;
        let currentYear: number = new Date().getFullYear();
        this.selectedYear = currentYear;
        while (currentYear != startYear) {
            this.years.push(currentYear);
            currentYear--;
        }
        this.years.push(startYear);
    }

    clearPayrollExport() {
        console.log('Clear payroll flag called.');
        this.adminService.clearPayrollExportFlag()
            .then(result => {
                if (result) {
                    toastr.success('You may need to reload the page to see updates.', 'Payroll export flag cleared.');
                }
                else {
                    toastr.error('Something went wrong during the requested operation.', 'And error occured.');
                }
            });
    }

    exportEntries() {
        this.fileService.exportEntriesForPayroll(this.filterCriteria)
            .then(result => {
                this.timeEntries.length = 0;
                this.timeEntries = undefined;
            });
    }

}