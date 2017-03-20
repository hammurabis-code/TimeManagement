import { autoinject } from 'aurelia-dependency-injection';
import { Router } from 'aurelia-router';
import { ApplicationState } from './application-state';
import { Constants, Department, UserWorkCode, User } from './Models/Models';
import { AccountService } from './Services/Services';
import * as toastr from 'toastr';

@autoinject
export class profile {
    heading: string;
    subheading: string;
    subheading2: string;
    currentUser: User;
    currentAccountingName: string;
    currentEntryCount: number;
    showCodeSelection: boolean;
    showCodeSelectionText: string;
    codeSelectionIsDirty: boolean;
    profileIsDirty: boolean;
    originalDepartments: Department[];
    originalWorkCodes: UserWorkCode[];
    returnRoute: string = 'profile';

    constructor(private appState: ApplicationState, private accountService: AccountService, private router: Router) {
        this.heading = 'Profile';
        this.subheading = 'Departments';
        this.subheading = 'Work Codes';
        this.currentUser = appState.currentUser;
        this.showCodeSelection = true;
        this.codeSelectionIsDirty = false;
        this.profileIsDirty = false;
        toastr.options.positionClass = 'toast-bottom-right';
    }

    activate() {
        if (this.appState.currentUser == null) {
            this.appState.returnRoute = this.returnRoute;
            this.router.navigate('login');
        }
        this.currentAccountingName = this.currentUser.AccountingName;
        this.currentEntryCount = this.currentUser.DefaultJobEntries;
        this.showCodeSelectionText = Constants.codeSelectionTextShow;
        this.originalDepartments = this.currentUser.UserDepartments;
        this.originalWorkCodes = this.currentUser.UserWorkCodes;
    }

    get userDepartments(): string {
        let result = '';
        this.currentUser.UserDepartments.forEach(dept => {
            if (dept.IsSelected) {
                result += dept.BaseCode + ', ';
            }
        });
        return result.substring(0, result.length - 2);
    }

    departmentCheckChanged(index: number) {
        var department = this.currentUser.UserDepartments[index];
        department.IsSelected = !department.IsSelected;
        this.currentUser.UserDepartments[index] = department;
        this.codeSelectionIsDirty = true;
    }

    resetModel() {
        this.currentUser.DefaultJobEntries = this.currentEntryCount;
        this.currentUser.UserDepartments = this.originalDepartments;
        this.currentUser.UserWorkCodes = this.originalWorkCodes;
        this.profileIsDirty = false;
    }

    showHideCodeSelection() {
        this.showCodeSelection = !this.showCodeSelection;
        if (this.showCodeSelection) {
            this.showCodeSelectionText = Constants.codeSelectionTextShow;
        }
        else {
            this.showCodeSelectionText = Constants.codeSelectionTextHide;
        }
    }

    goToChangePassword() {
        this.router.navigate('changepassword');
    }

    resetCodes() { }

    saveProfile() {
        this.appState.isLoading = true;
        this.accountService.updateUserProfile(this.currentUser)
            .then(response => {
                if (response) {
                    this.currentUser.sortUserWorkCodes();
                    this.appState.currentUser = this.currentUser;
                    this.appState.isLoading = false;
                    toastr.success("Profile Updated.");
                }
            })
            .catch(err => {
                toastr.error("An error occured updating your profile.");
                console.log("Profile update error: " + err);
                this.appState.isLoading = false;
            });
    }

}