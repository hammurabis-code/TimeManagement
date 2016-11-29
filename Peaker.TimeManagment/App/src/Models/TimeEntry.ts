import { bindable, bindingMode, autoinject } from 'aurelia-framework';

@autoinject
export class TimeEntry {
    id: number;
    userId: string;
    date: Date;
    hours: number;
    workCode: string;
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
        this.workCode = '';
        this.jobNumber = '';
        this.comments = '';
        this.hoursError = false;
        this.jobNumberError = false;
        this.workCodeError = false;
        this.exported = false;
        this.index = index;
    }

    isValid(): boolean {
        if (this.hours <= 0) {
            this.hoursError = true;
        }
        else {
            this.hoursError = false;
        }
        if (this.jobNumber.length < 5) {
            this.jobNumberError = true;
        }
        else {
            this.jobNumberError = false;
        }
        return (!this.jobNumberError && !this.hoursError);
    }
}