import { Router } from 'aurelia-router';
import { HttpClient, json } from 'aurelia-fetch-client';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, Constants, EntryFilter, Helper, UserInRole, Week } from '../Models/Models';

@autoinject
export class AdminService {
    constructor(private client: HttpClient, private router: Router) {
        client.configure(config => {
            config.useStandardConfiguration();
        });
    }

    getWeeks(year: number): Promise<Array<Week>> {
        if (sessionStorage.getItem(Constants.tokenName) == undefined || sessionStorage.getItem(Constants.tokenName) == null) {
            return null;
        }
        else {
            return this.client.fetch(Constants.adminApi + 'GetWeekList?year=' + year,
                {
                    method: 'get',
                    headers: { 'Authorization': Helper.getAuthHeader() }
                })
                .then(resp => resp.json<Week[]>())
                .then(resp => {
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
                }
            })
            .catch(err => {
                console.log(err);
            });
    }

    clearNavisionFlag(): Promise<boolean> {
        return this.client.fetch(Constants.adminApi + 'ClearNavisionExportedFlag',
            {
                method: 'get',
                headers: { 'Authorization': Helper.getAuthHeader() }
            })
            .then(resp => {
                if (resp.status == 200) {
                    return true;
                }
                return false;
            })
    }

    clearPayrollExportFlag(): Promise<boolean> {
        return this.client.fetch(Constants.adminApi + 'ClearPayrollExportedFlag',
            {
                method: 'get',
                headers: { 'Authorization': Helper.getAuthHeader() }
            })
            .then(resp => {
                if (resp.status == 200) {
                    return true;
                }
                return false;
            })
    }

    getUsersAndRoles(roleName: string): Promise<UserInRole[]> {
        return this.client.fetch(Constants.adminApi + 'GetUsersInRoleList?rolename=' + roleName,
            {
                method: 'get',
                headers: { 'Authorization': Helper.getAuthHeader() }
            })
            .then(resp => resp.json<UserInRole[]>())
            .then(resp => {
                return resp;
            })
    }

    updateUsersInRoles(users: UserInRole[]): Promise<boolean> {
        return this.client.fetch(Constants.adminApi + 'UpdateUsersInRoles',
            {
                body: JSON.stringify(users),
                headers: {
                    'Authorization': Helper.getAuthHeader(),
                    'Content-Type': 'application/json',
                    'Accept': '*/*',
                },
                method: 'POST',
            })
            .then(resp => {
                if (resp.status == 200) {
                    return true;
                }
                else {
                    return false;
                }
            })
    }
}