import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { HttpClient } from 'aurelia-fetch-client';
import { WorkCode, Constants, Helper } from '../Models/Models';

@autoinject
export class ValuesService {
    constructor(private client: HttpClient, private router: Router) {
        client.configure(config => {
            config.useStandardConfiguration();
        });
    }

    getWorkCodes(): Promise<Array<WorkCode>> {
        return new Promise(resolve => {
            this.client.fetch(Constants.workCodeServiceApi + 'GetWorkCodes',
                {
                    method: 'get',
                    headers: { 'Authorization': Helper.getAuthHeader() }
                })
                .then(resp => {
                    resp.json().then(data => {
                        let workCodes = new Array<WorkCode>();
                        resolve(workCodes);
                    })
                }).catch(err => {
                    console.log('Error filling workcodes: ' + err);
                    resolve(null);
                });
        });
    }

    addUpdateWorkCode(code: WorkCode): Promise<boolean> {
        this.router.isNavigating = true;
        return this.client.fetch(Constants.workCodeServiceApi,
            {
                body: JSON.stringify(WorkCode),
                headers: {
                    'Authorization': Helper.getAuthHeader(),
                    'Content-Type': 'application/json',
                    'Accept': '*/*',
                },
                method: 'POST'
            })
            .then(response => response.json())
            .then(response => {
                this.router.isNavigating = false;
                if (response != -1) {
                    return true;
                }
                return false;
            }).catch(err => {
                this.router.isNavigating = false;
                console.log("Error saving work code.");
                return false;
            });
    }
}