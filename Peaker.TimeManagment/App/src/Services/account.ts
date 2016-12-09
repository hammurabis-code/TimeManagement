import { autoinject } from 'aurelia-dependency-injection';
import { HttpClient, json } from 'aurelia-fetch-client';
import { Constants, Login, User, Helper, UserInfoViewModel } from '../Models/Models';

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
                                console.log('Setting Token :' + Constants.tokenName);
                                sessionStorage.setItem(Constants.tokenName, data.access_token);
                                loginSuccess = true;
                            }
                            resolve(loginSuccess);
                        });
                }).catch(err => {
                    console.log("Error requesting login: " + err);
                    resolve(false);
                });
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
                    resp.json().then(data => {
                        //console.log(data);
                        let user = new User(data.UserId, data.Username, data.AccountingName, data.DefaultJobEntries, data.UserDepartments, data.UserWorkCodes, data.UsedJobNumbers);
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
                        console.log('IsAuthenticated Result: ' + resp);
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
}