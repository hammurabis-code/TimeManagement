import { bindable } from 'aurelia-framework';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, EntryFilter, Week } from '../Models/Models';
import { ApplicationState } from '../application-state';
import { TimeEntryService, AdminService, FileService } from '../Services/services';
import * as toastr from 'toastr';

@autoinject
export class AdminView {
    heading: string;
    @bindable timeEntries: TimeEntry[] = undefined;
    @bindable total: number = 0;
    @bindable filterCriteria: EntryFilter = new EntryFilter(null, null, true, null, new Date(+new Date - 12096e5), null, false, true, null);
    showExportText: string;
    showRolesText: string;
    showCodesText: string;
    showUserRoles: boolean = false;
    showExport: boolean = false;
    showCodes: boolean = false;
    weeks: Week[];
    selectedWeek: Week;
    years: number[] = [];
    @bindable selectedYear: number;

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private adminService: AdminService, private fileService: FileService, private router: Router) {
        this.filterCriteria.CurrentUserDetailId = this.appState.currentUser.UserDetailId;
        this.showExportText = "Export Jobs";
        this.showRolesText = "User Roles";
        this.showCodesText = "Manage Codes";
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

    showHideUserRoles() {
        if (this.showUserRoles) {
            this.showRolesText = 'Hide Roles';
        }
        else {
            this.showRolesText = 'User Roles';
        }
        this.showUserRoles = !this.showUserRoles;
    }

    showHideExport() {
        if (this.showExport) {
            this.showExportText = 'Hide Export';
        }
        else {
            this.showExportText = 'Export Jobs';
        }
        this.showExport = !this.showExport;
    }

    goToWorkCodes() {
        this.router.navigate('workCodeEdit');
    }
    goToCreateUsers() {
        this.router.navigate('createUsers');
    }

    goToManageRoles() {
        this.router.navigate('manageRoles');
    }

    goToAdminReview() {
        this.router.navigate('adminReview');
    }

    clearNavisionExport() {
        console.log('Clear navision flag called.');
        this.adminService.clearNavisionFlag()
            .then(result => {
                if (result) {
                    toastr.success('You may need to reload the page to see updates.', 'Export flag cleared.');
                }
                else {
                    toastr.error('Something went wrong during the requested operation.', 'And error occured.');
                }
            });
    }

    getEntries() {
        this.filterCriteria.FilterStartDate = this.selectedWeek.weekStart;
        this.filterCriteria.FilterEndDate = this.selectedWeek.weekFinish;
        this.filterCriteria.RequireJobCode = true;
        this.timeEntryService.get(this.filterCriteria)
            .then(entries => {
                this.timeEntries = entries;
            });
    }

    exportEntries() {
        this.fileService.exportEntriesForNavision(this.filterCriteria)
            .then(result => {
                this.timeEntries.length = 0;
                this.timeEntries = undefined;
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
}