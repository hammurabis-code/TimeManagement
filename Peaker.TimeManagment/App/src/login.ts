import { autoinject } from 'aurelia-dependency-injection';
import { ApplicationState } from './application-state';
import { Router } from 'aurelia-router';
import { Login } from './Models/Models';
import { AccountService } from './Services/Services';

@autoinject
export class loginForm {
    username: string;
    password: string;
    usernameError: boolean;
    passwordError: boolean;
    loginFailed: boolean;

    constructor(private appState: ApplicationState, private accountService: AccountService, private router: Router) {
        this.usernameError = false;
        this.passwordError = false;
        this.username = '';
        this.password = '';
        this.loginFailed = false;
        console.log('Login constructed');
    }


    bind() {
        this.accountService.getAuthenticated()
            .then(success => {
                if (!this.appState.loggedIn || this.appState.currentUser == undefined) {
                    if (success) {
                        this.appState.loggedIn = true;
                        this.appState.fillUser().then(result => {
                            if (result) {
                                let route = this.appState.returnRoute;
                                if (route === null || route === '') {
                                    route = this.appState.defaultRoute;
                                }
                                this.router.navigate(route);
                            }
                        })
                    }
                }
            });
    }

    login() {
        if (this.formValid) {
            let login = new Login(this.username, this.password);
            this.accountService.login(login)
                .then(success => {
                    if (success) {
                        this.appState.loggedIn = true;
                        this.appState.fillUser()
                            .then(result => {
                                console.log('Login Filluser Promise Returned');
                                if (result) {

                                    let route = this.appState.returnRoute;
                                    if (route === null || route === '') {
                                        route = this.appState.defaultRoute;
                                    }
                                    console.log(route);
                                    this.router.navigate(route);
                                }
                            })
                        //this.router.navigate('entry');
                    }
                    else {
                        console.log('Login Failed.');
                    }
                });
        }
    }

    logout() {
        this.appState.loggedIn = false;
        this.appState.currentUser = null;
        this.accountService.logout();
    }

    formValid() {
        this.username == '' ? this.usernameError = true : this.usernameError = false;
        this.password == '' ? this.passwordError = true : this.passwordError = false;
        if (this.usernameError || this.passwordError) {
            return false;
        }
        else {
            return true;
        }
    }
}