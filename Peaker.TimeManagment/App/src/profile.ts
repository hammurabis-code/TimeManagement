import { autoinject } from 'aurelia-dependency-injection';
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

    constructor(private appState: ApplicationState, private accountService: AccountService) {
        this.heading = 'Profile';
        this.subheading = 'Departments';
        this.subheading = 'Work Codes';
        this.currentUser = appState.currentUser;
        this.currentAccountingName = this.currentUser.Username;
        this.currentEntryCount = this.currentUser.DefaultJobEntries;
        this.showCodeSelection = true;
        this.showCodeSelectionText = Constants.codeSelectionTextShow;
        this.codeSelectionIsDirty = false;
        this.profileIsDirty = false;
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
        console.log(this.currentUser.UserDepartments);
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

    resetCodes() { }

    saveProfile() {
        this.accountService.updateUserProfile(this.currentUser)
            .then(response => {
                if (response) {
                    this.appState.currentUser = this.currentUser;
                    toastr.success("Profile Updated.");
                }
            })
            .catch(err => {
                toastr.error("An error occured updating your profile.");
                console.log("Profile update error: " + err);
            });
    }

}