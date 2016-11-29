import { autoinject } from 'aurelia-dependency-injection';
import { ApplicationState } from './application-state';
import { Constants, Department, WorkCode, User } from './Models/Models';
import { AccountService } from './Services/Services';
import * as toastr from 'toastr';

@autoinject
export class profile {
    heading: string;
    subheading: string;
    CurrentUser: User;
    currentAccountingName: string;
    currentEntryCount: number;
    showCodeSelection: boolean;
    showCodeSelectionText: string;
    codeSelectionIsDirty: boolean;
    profileIsDirty: boolean;

    constructor(private appState: ApplicationState, private accountService: AccountService) {
        this.heading = 'Profile';
        this.subheading = 'Departments';
        this.CurrentUser = appState.currentUser;
        this.currentAccountingName = this.CurrentUser.Username;
        this.currentEntryCount = this.CurrentUser.DefaultJobEntries;
        this.showCodeSelection = true;
        this.showCodeSelectionText = Constants.codeSelectionTextShow;
        this.codeSelectionIsDirty = false;
        this.profileIsDirty = false;
    }

    get userDepartments(): string {
        let result = '';
        this.CurrentUser.UserDepartments.forEach(dept => {
            if (dept.IsSelected) {
                result += dept.BaseCode + ', ';
            }
        });
        return result.substring(0, result.length - 2);
    }

    departmentCheckChanged(index: number) {
        console.log(this.CurrentUser.UserDepartments);
        var department = this.CurrentUser.UserDepartments[index];
        department.IsSelected = !department.IsSelected;
        this.CurrentUser.UserDepartments[index] = department;
        console.log(this.CurrentUser.UserDepartments);
        this.codeSelectionIsDirty = true;
    }

    resetModel() {
        this.CurrentUser.DefaultJobEntries = this.currentEntryCount;
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

}