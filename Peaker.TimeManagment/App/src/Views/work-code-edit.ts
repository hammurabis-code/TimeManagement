import { autoinject } from 'aurelia-framework';
import { WorkCodeService } from '../services/services';
import { WorkCode } from '../Models/models';

@autoinject
export class WorkCodeEdit {
    workCodes: WorkCode[];
    selectedWorkCode: WorkCode;

    constructor(private workCodeService: WorkCodeService) { 
        this.selectedWorkCode = null;
    }

    activate() {
        this.workCodeService.getWorkCodes()
            .then(codes => {
                this.workCodes = codes;
            });
    }
}