import { autoinject } from 'aurelia-framework';
import { WorkCodeService } from '../services/services';
import { WorkCode } from '../Models/models';

@autoinject
export class WorkCodeEdit {
    private selectedId: number;
    private workCodes: WorkCode[];
    private activeWorkCode: WorkCode;


    constructor(private workCodeService: WorkCodeService) { }

    activate() {
        this.workCodeService.getWorkCodes()
            .then(response => {
                this.workCodes = response;
            });
    }

    selectedCodeChanged() {
        this.activeWorkCode = this.workCodes.find(w => w.Id == this.selectedId);
    }
}