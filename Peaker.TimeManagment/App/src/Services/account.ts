import { autoinject } from 'aurelia-dependency-injection';
import { HttpClient, json } from 'aurelia-fetch-client';
import { ChangePassword, Constants, Login, User, Helper, UserInfoViewModel, Register } from '../Models/Models';

@autoinject
export class AccountService {
    constructor(private client: HttpClient) {
        client.configure(config => {
            config.useStandardConfiguration();
        });
    }

    login(data: Login): Promise<boolean> {
        return new Promise(resolve => {
            let loginSuccess = false;
            this.client.fetch('/token',
                {
                    body: $.param(data),
                    method: 'post',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                })
                .then(response => {
                    response.json()
                        .then(data => {
                            if (data.access_token != undefined) {
                                sessionStorage.setItem(Constants.tokenName, data.access_token);
                                loginSuccess = true;
                            }
                            resolve(loginSuccess);
                        });
                }).catch(err => {
                    console.log("Error requesting login: ");
                    console.log(err);
                    resolve(false);
                });
        });
    }

    logout() {
        sessionStorage.removeItem(Constants.tokenName);
        this.client.fetch(Constants.accountApi + 'Logout',
            {
                method: 'post',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                    'Authorization': Helper.getAuthHeader()
                }
            })
            .catch(err => {
                console.log("Error requesting logout: " + err);
            });
    }

    getUserInfo(): Promise<User> {
        return new Promise(resolve => {
            this.client.fetch(Constants.accountApi + 'UserInfo',
                {
                    method: 'get',
                    headers: { 'Authorization': Helper.getAuthHeader() }
                })
                .then(resp => {
                    resp.json()
                        .then(data => {
                            let user = new User(data.UserDetailId, data.UserId, data.Username, data.AccountingName,
                                data.IsSecondShift, data.DefaultJobEntries, data.UserDepartments, data.UserWorkCodes, data.UsedJobNumbers, data.UserRoles);
                            resolve(user);
                        })
                }).catch(err => {
                    console.log('Error filling user: ' + err);
                    resolve(null);
                });
        });
    }

    getAuthenticated(): Promise<boolean> {
        return new Promise(resolve => {
            if (sessionStorage.getItem(Constants.tokenName) == undefined || sessionStorage.getItem(Constants.tokenName) == null) {
                resolve(false);
            }
            else {
                this.client.fetch(Constants.accountApi + 'IsAuthenticated',
                    {
                        method: 'get',
                        headers: { 'Authorization': Helper.getAuthHeader() }
                    })
                    .then(resp => {
                        resp.json().then(result => {
                            resolve(result);
                        })
                    })
            }
        });
    }
    updateUserProfile(user: User): Promise<boolean> {
        return this.client.fetch(
            Constants.accountApi + 'UpdateUserProfile',
            {
                body: json(new UserInfoViewModel(user)),
                headers: {
                    'Authorization': Helper.getAuthHeader(),
                    'Content-Type': 'application/json',
                    'Accept': '*/*',
                },
                method: 'POST'
            })
            .then(response => {
                return response.ok;
            });
    }

    getUserInRole(roleName: string): Promise<boolean> {
        return new Promise(resolve => {
            if (sessionStorage.getItem(Constants.tokenName) == undefined || sessionStorage.getItem(Constants.tokenName) == null) {
                resolve(false);
            }
            else {
                this.client.fetch(Constants.accountApi + 'IsInRole',
                    {
                        body: json(roleName),
                        headers: {
                            'Authorization': Helper.getAuthHeader(),
                            'Content-Type': 'application/json',
                            'Accept': '*/*',
                        },
                        method: 'POST'
                    })
                    .then(resp => {
                        resp.json().then(result => {
                            resolve(result);
                        })
                    })
                    .catch(err => {
                        console.log(err);
                        resolve(false);
                    })
            }
        });
    }

    createUser(username: string, password: string, confirmPassword: string): Promise<boolean> {
        let registerModel = new Register(username, password, confirmPassword);
        return this.client.fetch(Constants.accountApi + 'Register',
            {
                body: json(registerModel),
                headers: {
                    'Authorization': Helper.getAuthHeader(),
                    'Content-Type': 'application/json',
                    'Accept': '*/*',
                },
                method: 'POST'
            })
            .then(resp => {
                if (resp.status == 200) {
                    return true;
                }
                return false;
            })
            .catch(err => {
                console.log(err);
                return false;
            })
    }

    changePassword(changePasswordModel: ChangePassword): Promise<boolean> {
        return this.client.fetch(Constants.accountApi + 'ChangePassword',
            {
                body: json(changePasswordModel),
                headers: {
                    'Authorization': Helper.getAuthHeader(),
                    'Content-Type': 'application/json',
                    'Accept': '*/*',
                },
                method: 'POST'
            })
            .then(resp => {
                if (resp.status == 200) {
                    return true;
                }
                return false;
            })
            .catch(err => {
                console.log(err);
                return false;
            })
    }
}