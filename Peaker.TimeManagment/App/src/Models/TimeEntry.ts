import { bindable, bindingMode, autoinject } from 'aurelia-framework';
import { User } from './user';
import { UserWorkCode } from './userworkcode';

@autoinject
export class TimeEntry {
    id: number;
    userDetailId: number;
    userAccountingName: string;
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
        this.userAccountingName = '';
        this.entryDate = entryDate;
        this.userHours = 0;
        this.workCode = new UserWorkCode();
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
        this.workCodeId = this.workCode.workCodeId;
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
            w.workCodeId === this.workCode.workCodeId);
        if (targetWorkCode.isJobNumberRequired || this.jobnumber != '') {
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