import { bindable } from 'aurelia-framework';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { ApplicationState } from '../application-state';
import { AccountService } from '../Services/services';
import * as toastr from 'toastr';

@autoinject
export class CreateUser {
    userName: string;
    password: string;
    confirmPassword: string;
    usernameError: boolean;
    passwordError: boolean;
    passwordConfirmError: boolean;
    passwordMismatchError: boolean;

    constructor(private appState: ApplicationState, private accountService: AccountService, private router: Router) {
        this.setupForm();
        toastr.options.positionClass = 'toast-bottom-right';
    }

    create() {
        this.router.isNavigating = true;
        if (this.validateForm()) {
            this.accountService.createUser(this.userName, this.password, this.confirmPassword)
                .then(result => {
                    if (result) {
                        toastr.success('Account ' + this.userName + ' created.');
                        this.setupForm();
                    }
                    else {
                        toastr.error('An error occured creating the account.');
                    }
                });
        }
        this.router.isNavigating = false;
    }

    validateForm(): boolean {
        if (this.userName == '') {
            this.usernameError = true;
        }
        else {
            this.usernameError = false;
        }

        if (this.password == '') {
            this.passwordError = true;
        }
        else {
            this.passwordError = false;
        }
        if (this.confirmPassword == '') {
            this.passwordConfirmError = true;
        }
        else {
            this.passwordConfirmError = false;
        }
        if (this.password != this.confirmPassword) {
            this.passwordMismatchError = true;
        }
        else {
            this.passwordMismatchError = false;
        }
        return (!this.usernameError && !this.passwordError && !this.passwordConfirmError && !this.passwordMismatchError);
    }

    setupForm() {
        this.userName = '';
        this.password = '';
        this.confirmPassword = '';
        this.usernameError = false;
        this.passwordError = false;
        this.passwordConfirmError = false;
        this.passwordMismatchError = false;
    }
}