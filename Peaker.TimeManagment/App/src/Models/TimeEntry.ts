import { bindable, bindingMode, autoinject } from 'aurelia-framework';
import { User } from '../models/user';
import { UserWorkCode } from '../models/userworkcode';

@autoinject
export class TimeEntry {
    id: number;
    userDetailId: number;
    entryDate: Date;
    @bindable userHours: number;
    @bindable workCode: UserWorkCode;
    jobnumber: string;
    comments: string;
    hoursError: boolean;
    @bindable({ defaultBindingMode: bindingMode.twoWay }) jobNumberError: boolean;
    invalidJobnumber: boolean;
    workCodeError: boolean;
    exportedToNavision: boolean;
    exportedToPayroll: boolean;
    workCodeId: number;
    index: number;

    constructor(entryDate: Date, userDetailId: number, index: number) {
        this.id = -1;
        this.userDetailId = userDetailId;
        this.entryDate = entryDate;
        this.userHours = 0;
        this.workCode = null;
        this.jobnumber = '';
        this.comments = '';
        this.hoursError = false;
        this.jobNumberError = false;
        this.invalidJobnumber = false;
        this.workCodeError = false;
        this.exportedToNavision = false;
        this.exportedToPayroll = false;
        this.workCodeId = -1;
        this.index = index;
    }

    isValid(currentUser: User, invalidJobNumbers: string[]): boolean {
        if (this.userHours <= 0 || this.userHours > 24) {
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
        let targetWorkCode = currentUser.UserWorkCodes.find(w =>
            w.WorkCodeId === this.workCode.WorkCodeId);
        if (targetWorkCode.IsJobNumberRequired || this.jobnumber != '') {
            if (this.jobnumber.length != 5) {
                this.jobNumberError = true;
            }
            else {
                this.jobNumberError = false;
                if (invalidJobNumbers.find(i => i == this.jobnumber) != undefined) {
                    this.invalidJobnumber = true;
                }
                else {
                    this.invalidJobnumber = false;
                }
            }
        }
        else {
            this.jobNumberError = false;
        }
        return (!this.jobNumberError && !this.hoursError && !this.workCodeError && !this.invalidJobnumber);

    }

    hoursChanged(newValue, oldValue) {
        if ((+newValue).toFixed(2) != (Math.round(newValue * 4) / 4).toFixed(2)) {
            this.userHours = +(Math.round(newValue * 4) / 4).toFixed(2);
        }
    }


}