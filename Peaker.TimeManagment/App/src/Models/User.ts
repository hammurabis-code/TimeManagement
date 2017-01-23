import { TimeEntry } from './TimeEntry'
import { JobNumber } from './JobNumber'
import { UserWorkCode } from './UserWorkCode'
import { Department } from './Department'
import { UserRole } from './UserRole'
export class User {
    UserDetailId: number;
    UserId: string;
    Username: string;
    AccountingName: string;
    IsSecondShift: boolean;
    UserRoles: UserRole[];
    DefaultJobEntries: number;
    UserJobNumbers: JobNumber[];
    UserDepartments: Department[];
    UserWorkCodes: UserWorkCode[];
    pendingTimeEntries: TimeEntry[];

    constructor(userDetailId: number, userId: string, username: string, accountingName: string, isSecondShift: boolean, defaultJobEntries: number, userDepartments: Department[], userWorkCodes: UserWorkCode[], userJobNumbers: JobNumber[], userRoles?: UserRole[]) {
        this.UserDetailId = userDetailId;
        this.UserId = userId;
        this.Username = username;
        this.AccountingName = accountingName;
        this.IsSecondShift = isSecondShift;
        this.DefaultJobEntries = defaultJobEntries;
        this.UserDepartments = userDepartments;
        if (userRoles == undefined) {
            this.UserRoles = new Array<UserRole>();
        }
        else {
            this.UserRoles = userRoles;
        }
        this.UserJobNumbers = userJobNumbers;
        this.pendingTimeEntries = new Array<TimeEntry>();
        this.UserWorkCodes = userWorkCodes;
    }

    get hasPendingEntries(): boolean {
        if (this.pendingTimeEntries.length > 0) {
            return true;
        }
        return false;
    }
}