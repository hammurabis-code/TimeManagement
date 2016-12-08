import { bindable } from 'aurelia-framework';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, EntryFilter } from '../Models/Models';
import { ApplicationState } from '../application-state';
import { TimeEntryService } from '../Services/time-entry-service';
import * as toastr from 'toastr';

@autoinject
export class Admin {
    heading: string;
    @bindable timeEntries: TimeEntry[] = [];
    @bindable total: number = 0;
    @bindable filterCriteria: EntryFilter = new EntryFilter(null, true, null, new Date(+new Date - 12096e5), null, null);
    exportList: string[] = [];
    showExportText: string;
    showRolesText: string;
    showCodesText: string;
    showUserRoles: boolean = false;
    showExport: boolean = false;
    showCodes: boolean = false;

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private router: Router) {
        //this.heading = 'Review Time';
        this.exportList.push("NAV");
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

    goToWorkCodes() {
        this.router.navigate('workCodeEdit');

    }

    exportEntries() {
        toastr.info('Data exported (Test)');
    }
}