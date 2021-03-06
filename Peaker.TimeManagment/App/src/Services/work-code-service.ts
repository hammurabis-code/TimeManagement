import { autoinject } from 'aurelia-dependency-injection';
import { HttpClient } from 'aurelia-fetch-client';
import { WorkCode, Constants, Helper } from '../Models/Models';


@autoinject
export class WorkCodeService {
    constructor(private client: HttpClient, ) {
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
                    resp.json()
                        .then(data => {
                            resolve(data);
                        })
                }).catch(err => {
                    console.log('Error filling workcodes: ' + err);
                    resolve(null);
                });
        });
    }

    addUpdateWorkCode(code: WorkCode): Promise<boolean> {
        return this.client.fetch(Constants.workCodeServiceApi + 'AddUpdateWorkCode',
            {
                body: JSON.stringify(code),
                headers: {
                    'Authorization': Helper.getAuthHeader(),
                    'Content-Type': 'application/json',
                    'Accept': '*/*',
                },
                method: 'POST'
            })
            //.then(response => response.json<number>())
            .then(response => {
                if (response.status == 200) {
                    return true;
                }
                return false;
            }).catch(err => {
                console.log("Error saving work code.");
                return false;
            });
    }
}