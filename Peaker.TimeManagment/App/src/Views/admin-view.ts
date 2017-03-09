import { bindable } from 'aurelia-framework';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { EntryFilter, ExportType, TimeEntry } from '../Models/Models';
import { ApplicationState } from '../application-state';
import { AdminService } from '../Services/services';
import * as toastr from 'toastr';

@autoinject
export class AdminView {
    heading: string;
    showClearExport: boolean = false;
    @bindable filterCriteria: EntryFilter = new EntryFilter(null, null, true, null, null, null, null, null, null);
    @bindable exportType: ExportType;
    returnRoute: string = 'admin';

    constructor(private appState: ApplicationState, private adminService: AdminService, private router: Router) {
        toastr.options.positionClass = 'toast-bottom-right';
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
    showClearExports() {
        if (this.showClearExport) {
            this.showClearExport = false;
        }
        else {
            this.showClearExport = true;
        }
    }

    clearExports() {
        console.log(this.filterCriteria.FilterStartDate);
        if (this.formIsValid()) {
            this.appState.isLoading = true;
            if (this.exportType.Type == 1) {
                this.adminService.clearNavisionFlagByDate(this.filterCriteria)
                    .then(resp => {
                        this.appState.isLoading = false;
                        toastr.success('Navision export flags have been cleared.');
                    })
                    .catch(err => {
                        this.appState.isLoading = false;
                        toastr.error('An error occured performing the operation.');
                    });
            }
            else {
                this.adminService.clearPayrollExportFlagByDate(this.filterCriteria)
                    .then(resp => {
                        this.appState.isLoading = false;
                        toastr.success('Payroll export flags have been cleared.');
                    })
                    .catch(err => {
                        this.appState.isLoading = false;
                        toastr.error('An error occured performing the operation.');
                    });
            }
        }
    }
    formIsValid(): boolean {
        let isValid = true;
        if (this.exportType === undefined) {
            toastr.error("Please select export type.");
            isValid = false;
        }
        if (this.filterCriteria.FilterStartDate === null || this.filterCriteria.FilterStartDate === undefined) {
            toastr.error("Please select start date.");
            isValid = false;
        }
        if (this.filterCriteria.FilterEndDate === null || this.filterCriteria.FilterEndDate === undefined) {
            toastr.error("Please select end date.");
            isValid = false;
        }
        return isValid;
    }
}