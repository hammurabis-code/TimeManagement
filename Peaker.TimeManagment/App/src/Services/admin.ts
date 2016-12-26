import { Router } from 'aurelia-router';
import { HttpClient, json } from 'aurelia-fetch-client';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, Constants, EntryFilter, Helper, Week } from '../Models/Models';

@autoinject
export class AdminService {
    constructor(private client: HttpClient, private router: Router) {
        client.configure(config => {
            config.useStandardConfiguration();
        });
    }

    getWeeks(): Promise<Array<Week>> {
        if (sessionStorage.getItem(Constants.tokenName) == undefined || sessionStorage.getItem(Constants.tokenName) == null) {
            return null;
        }
        else {
            return this.client.fetch(Constants.adminApi + 'GetWeekList',
                {
                    method: 'get',
                    headers: { 'Authorization': Helper.getAuthHeader() }
                })
                .then(resp => resp.json<Week[]>())
                .then(resp => {
                    console.log(resp);
                    return resp;
                })
        }
    }

    exportEntries(filter: EntryFilter) {
        return this.client.fetch(Constants.timeEntryApi + 'ExportEntries',
            {
                body: JSON.stringify(filter),
                headers: {
                    'Authorization': Helper.getAuthHeader(),
                    'Content-Type': 'application/json',
                    'Accept': '*/*',
                },
                method: 'POST',

            })
            .then(response => {
                if (response.status == 200) {
                    var filename = response.headers['x-filename'] || 'FileName.csv';

                    // Determine the content type from the header or default to "application/octet-stream"
                    var contentType = response.headers['content-type'];
                    try {
                        var defaultFileName = "FileName.csv";
                        var blobUrl = window.URL.createObjectURL(response.blob);
                        var anchor = document.createElement('a');
                        anchor.download = defaultFileName;
                        anchor.href = blobUrl;
                        document.body.appendChild(anchor);
                        anchor.click();
                        document.body.removeChild(anchor);

                    } catch (ex) {
                        console.log("saveBlob method failed with the following exception:");
                        console.log(ex);
                    }
                    // var defaultFileName = "FileName.csv";
                    // var blobUrl = window.URL.createObjectURL(response.text);
                    // var anchor = document.createElement('a');
                    // anchor.download = defaultFileName;
                    // anchor.href = blobUrl;
                    // document.body.appendChild(anchor);
                    // anchor.click();
                    // document.body.removeChild(anchor);
                    // return response;
                }
            })
            .catch(err => {
                console.log(err);
            });
        // .then(response => {
        //     this.router.isNavigating = false;
        //     if (response.status == 200) {
        //         return true;
        //     }
        //     return false;
        // }).catch(err => {
        //     this.router.isNavigating = false;
        //     console.log("Error saving entry.");
        //     return false;
        // });
    }
}