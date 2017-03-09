import { autoinject } from 'aurelia-framework';
import { UserInRole } from '../models/models';
import { AdminService } from '../services/services';
import { Router } from 'aurelia-router';
import * as toastr from 'toastr';
import { ApplicationState } from '../application-state';

@autoinject
export class ManageRoles {
    usersInRole: UserInRole[] = [];
    selectedRole: string;
    dataFilled: boolean = false;

    constructor(private appState: ApplicationState, private adminService: AdminService, private router: Router) {
        this.selectedRole = '';
        toastr.options.positionClass = 'toast-bottom-right';
    }

    manageAdmin() {
        this.selectedRole = 'Admin';
        this.fillData();
    }

    manageSupervisor() {
        this.selectedRole = 'Supervisor';
        this.fillData();
    }

    fillData() {
        this.appState.isLoading = true;
        this.adminService.getUsersAndRoles(this.selectedRole)
            .then(results => {
                this.usersInRole.length = 0;
                this.usersInRole = results;
                this.dataFilled = true;
            });
        this.appState.isLoading = false;
    }

    updateUsersInRole() {
        this.appState.isLoading = true;
        this.adminService.updateUsersInRoles(this.usersInRole)
            .then(success => {
                if (success) {
                    toastr.success('Roles updated.');
                }
                else {
                    toastr.error('An error occured updating user roles.');
                }
            });
        this.appState.isLoading = false;
    }
}