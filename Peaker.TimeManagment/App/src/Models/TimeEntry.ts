import { bindable, bindingMode, autoinject } from 'aurelia-framework';
import { User } from '../models/user';
import { WorkCode } from '../models/workcode'

@autoinject
export class TimeEntry {
    id: number;
    userId: string;
    date: Date;
    @bindable hours: number;
    workCode: WorkCode;
    jobNumber: string;
    comments: string;
    hoursError: boolean;
    @bindable({ defaultBindingMode: bindingMode.twoWay }) jobNumberError: boolean;
    workCodeError: boolean;
    exported: boolean;
    index: number;

    constructor(entryDate: Date, userId: string, index: number) {
        this.id = -1;
        this.userId = userId;
        this.date = entryDate;
        this.hours = 0;
        this.workCode = null;
        this.jobNumber = '';
        this.comments = '';
        this.hoursError = false;
        this.jobNumberError = false;
        this.workCodeError = false;
        this.exported = false;
        this.index = index;
    }

    isValid(currentUser: User): boolean {
        if (this.hours <= 0) {
            this.hoursError = true;
        }
        else {
            this.hoursError = false;
        }
        if (this.workCode === undefined) {
            this.workCodeError = true;
            return false;
        }
        else {
            this.workCodeError = false;
        }
        console.log(currentUser.UserWorkCodes[0].description);
        console.log(currentUser.UserWorkCodes[0].baseCode);
        console.log(this.workCode.toString());
        let targetWorkCode = currentUser.UserWorkCodes.find(w =>
            (w.baseCode + ' ' + w.description) === this.workCode.toString()
        );
        console.log(targetWorkCode);
        if (targetWorkCode.IsJobNumberRequired) {
            if (this.jobNumber.length < 5) {
                this.jobNumberError = true;
            }
            else {
                this.jobNumberError = false;
            }
        }
        else {
            this.jobNumberError = false;
        }
        return (!this.jobNumberError && !this.hoursError && !this.workCodeError);

    }

    hoursChanged(newValue, oldValue) {
        if ((+newValue).toFixed(2) != (Math.round(newValue * 4) / 4).toFixed(2)) {
            this.hours = +(Math.round(newValue * 4) / 4).toFixed(2);
        }
    }


}