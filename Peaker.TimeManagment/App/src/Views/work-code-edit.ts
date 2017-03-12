import { autoinject } from 'aurelia-framework';
import { WorkCodeService } from '../services/services';
import { WorkCode } from '../Models/models';
import { Router } from 'aurelia-router';
import * as toastr from 'toastr';
import { ApplicationState } from '../application-state';

@autoinject
export class WorkCodeEdit {
    workCodes: WorkCode[];
    selectedWorkCode: WorkCode;
    originalCode: WorkCode;
    isDirty: boolean;

    constructor(private appState: ApplicationState, private workCodeService: WorkCodeService, private router: Router) {
        this.selectedWorkCode = null;
        this.isDirty = false;
    }

    activate() {
        this.getCodes();
    }

    getCodes(): Promise<any> {
        return this.workCodeService.getWorkCodes()
            .then(codes => {
                this.workCodes = new Array<WorkCode>();
                this.workCodes.push(undefined);
                this.workCodes = this.workCodes.concat(codes);
            })
            .catch(err => {
                console.log(err);
                toastr.error('An error occured retrieving the work codes.');
            });
    }

    submit() {
        this.appState.isLoading = true;
        this.workCodeService.addUpdateWorkCode(this.selectedWorkCode)
            .then(success => {
                if (success) {
                    this.getCodes().then(r => {
                        this.isDirty = false;
                        toastr.success('Work code updated.');
                        this.appState.isLoading = false;
                    });
                }
                else {
                    toastr.error('An error occured updating the work code.');
                    this.appState.isLoading = false;
                }
            })
            .catch(err => {
                this.selectedWorkCode = null;
                this.isDirty = false;
                toastr.error('An error occured updating the work code.');
                this.appState.isLoading = false;
            })
    }

    cancel() {
        this.selectedWorkCode = null;
        this.isDirty = false;
    }

    codeChanged() {
        this.isDirty = true;
    }

}