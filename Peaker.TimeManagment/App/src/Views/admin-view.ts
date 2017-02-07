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
    showExportText: string;
    showRolesText: string;
    showCodesText: string;
    showUserRoles: boolean = false;
    showExport: boolean = false;
    showCodes: boolean = false;
    returnRoute: string = 'admin';

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private adminService: AdminService, private fileService: FileService, private router: Router) {

        this.showExportText = "Export Jobs";
        this.showRolesText = "User Roles";
        this.showCodesText = "Manage Codes";
    }

    activate() {
        if (this.appState.currentUser == null) {
            this.appState.returnRoute = this.returnRoute;
            this.router.navigate('login');
        }
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
}