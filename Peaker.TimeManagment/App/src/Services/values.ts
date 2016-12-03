import { autoinject } from 'aurelia-dependency-injection';
import { HttpClient } from 'aurelia-fetch-client';
import { WorkCode, Constants, Helper } from '../Models/Models';

@autoinject
export class ValuesService {
    constructor(private client: HttpClient) {
        client.configure(config => {
            config.useStandardConfiguration();
        });
    }

    getWorkCodes(): Promise<Array<WorkCode>> {
        return new Promise(resolve => {
            this.client.fetch(Constants.valuesApi + 'GetWorkCodes',
                {
                    method: 'get',
                    headers: { 'Authorization': Helper.getAuthHeader() }
                })
                .then(resp => {
                    resp.json().then(data => {
                        let workCodes = new Array<WorkCode>();
                        console.log(data[0]);
                        console.log(data);
                        resolve(workCodes);
                    })
                }).catch(err => {
                    console.log('Error filling workcodes: ' + err);
                    resolve(null);
                });
        });
    }
}