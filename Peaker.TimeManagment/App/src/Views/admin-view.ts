import { bindable } from 'aurelia-framework';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, EntryFilter } from '../Models/Models';
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

    years: number[] = [];
    @bindable selectedYear: number;

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private adminService: AdminService, private fileService: FileService, private router: Router) {
        this.filterCriteria.CurrentUserDetailId = this.appState.currentUser.UserDetailId;
        this.showExportText = "Export Jobs";
        this.showRolesText = "User Roles";
        this.showCodesText = "Manage Codes";
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

    goToExport() {
        this.router.navigate('export');
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
}