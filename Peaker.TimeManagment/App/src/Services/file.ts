import { HttpClient } from 'aurelia-http-client';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry, Constants, EntryFilter, Helper } from '../Models/Models';

@autoinject
export class FileService {

    constructor(private http: HttpClient) {
    }

    exportEntriesForNavision(filter: EntryFilter) {
        return this.http.createRequest(Constants.timeEntryApi + 'ExportEntriesForNavision')
            .asPost()
            .withHeader('Authorization', Helper.getAuthHeader())
            .withHeader('Content-Type', 'application/json')
            .withHeader('Accept', '*/*')
            .withContent(JSON.stringify(filter))
            .withResponseType('blob')
            .send()
            .then(response => {
                if (response.statusCode == 200) {
                    var filename = response.headers['x-filename'] || 'FileName.csv';

                    // Determine the content type from the header or default to "application/octet-stream"
                    var contentType = response.headers['content-type'];
                    try {
                        var defaultFileName = "NAV_EXPORT_";
                        var date = new Date();
                        var utc = new Date().toJSON().slice(0, 10);
                        defaultFileName = defaultFileName + utc + '.csv';
                        var blobUrl = window.URL.createObjectURL(response.content);
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

    exportEntriesForPayroll(filter: EntryFilter) {
        return this.http.createRequest(Constants.timeEntryApi + 'ExportEntriesForPayroll')
            .asPost()
            .withHeader('Authorization', Helper.getAuthHeader())
            .withHeader('Content-Type', 'application/json')
            .withHeader('Accept', '*/*')
            .withContent(JSON.stringify(filter))
            .withResponseType('blob')
            .send()
            .then(response => {
                if (response.statusCode == 200) {
                    var filename = response.headers['x-filename'] || 'FileName.csv';

                    // Determine the content type from the header or default to "application/octet-stream"
                    var contentType = response.headers['content-type'];
                    try {
                        var defaultFileName = "PAYROLL_EXPORT_";
                        var date = new Date();
                        var utc = new Date().toJSON().slice(0, 10);
                        defaultFileName = defaultFileName + utc + '.csv';
                        var blobUrl = window.URL.createObjectURL(response.content);
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

    exportEntriesForReview(filter: EntryFilter) {
        return this.http.createRequest(Constants.timeEntryApi + 'ExportEntriesForReview')
            .asPost()
            .withHeader('Authorization', Helper.getAuthHeader())
            .withHeader('Content-Type', 'application/json')
            .withHeader('Accept', '*/*')
            .withContent(JSON.stringify(filter))
            .withResponseType('blob')
            .send()
            .then(response => {
                if (response.statusCode == 200) {
                    var filename = response.headers['x-filename'] || 'FileName.csv';

                    // Determine the content type from the header or default to "application/octet-stream"
                    var contentType = response.headers['content-type'];
                    try {
                        var defaultFileName = "EntryExport_";
                        var date = new Date();
                        var utc = new Date().toJSON().slice(0, 10);
                        defaultFileName = defaultFileName + utc + '.csv';
                        var blobUrl = window.URL.createObjectURL(response.content);
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

}