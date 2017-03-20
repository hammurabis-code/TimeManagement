import { ChangePassword } from '../models/models';
import { AccountService } from '../Services/services';
import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import * as toastr from 'toastr';
import { ApplicationState } from '../application-state';

@autoinject
export class ChangePasswordView {
    changePasswordModel: ChangePassword;
    passwordError: boolean = false;
    newPasswordError: boolean = false;
    newPasswordConfirmError: boolean = false;
    passwordChangeErrorMessage: string = "";

    constructor(private appState: ApplicationState, private accountService: AccountService, private router: Router) {
        this.changePasswordModel = new ChangePassword();
        toastr.options.positionClass = 'toast-bottom-right';
    }

    submit() {
        this.appState.isLoading = true;
        if (this.validate()) {
            this.accountService.changePassword(this.changePasswordModel)
                .then(response => {
                    if (response) {
                        toastr.success('Password changed.');
                    }
                    else {
                        toastr.error('A error occured updating your password.')
                    }
                    this.appState.isLoading = false;
                })
                .catch(err => { this.appState.isLoading = false; });
        }

    }

    validate() {
        if (this.changePasswordModel.OldPassword != "") {
            this.passwordError = false;
        }
        else {
            this.passwordError = true;
        }
        if (this.changePasswordModel.NewPassword != "") {
            this.newPasswordError = false;
        }
        else {
            this.newPasswordError = true;
        }
        if (this.changePasswordModel.ConfirmPassword != "") {
            this.newPasswordConfirmError = false;
        }
        else {
            this.newPasswordConfirmError = true;
        }
        if (!this.newPasswordConfirmError && !this.newPasswordError) {
            if (this.changePasswordModel.NewPassword != this.changePasswordModel.ConfirmPassword) {
                this.passwordChangeErrorMessage = "New Password fields do not match.";
            }
        }
        return !this.passwordError && !this.newPasswordError && !this.newPasswordConfirmError
            && (this.passwordChangeErrorMessage === "");
    }

    cancel() {
        this.router.navigate('profile');
    }
}