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
    @bindable filterCriteria: EntryFilter = new EntryFilter(null, null, true, null, new Date(+new Date - 12096e5), null, null);
    exportList: string[] = [];
    showExportText: string;
    showRolesText: string;
    showCodesText: string;
    showUserRoles: boolean = false;
    showExport: boolean = false;
    showCodes: boolean = false;
    weeks: Week[];
    selectedWeek: Week;

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private adminService: AdminService, private fileService: FileService, private router: Router) {
        this.filterCriteria.CurrentUserDetailId = this.appState.currentUser.UserDetailId;
        this.exportList.push("NAV");
        this.showExportText = "Export Jobs";
        this.showRolesText = "User Roles";
        this.showCodesText = "Manage Codes";
        this.selectedWeek = undefined;
        console.log("Admin constructed");
    }

    activate() {
        this.adminService.getWeeks()
            .then(weeks => {
                this.weeks = new Array<Week>();
                this.weeks.push(undefined);
                this.weeks = this.weeks.concat(weeks);
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

    getEntries() {
        this.filterCriteria.FilterStartDate = this.selectedWeek.weekStart;
        this.filterCriteria.FilterEndDate = this.selectedWeek.weekFinish;
        this.timeEntryService.get(this.filterCriteria)
            .then(entries => {
                this.timeEntries = entries;
            });
    }

    exportEntries() {
        this.fileService.exportEntries(this.filterCriteria);
    }
}