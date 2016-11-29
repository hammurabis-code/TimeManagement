import { TimeEntry } from './TimeEntry'
import { JobNumber } from './JobNumber'
import { UserWorkCode } from './UserWorkCode'
import { Department } from './Department'
import { UserRole } from './UserRole'
export class User {
    UserId: string;
    Username: string;
    UserRoles: UserRole[];
    DefaultJobEntries: number;
    UserJobNumbers: JobNumber[];
    UserDepartments: Department[];
    UserWorkCodes: UserWorkCode[];
    pendingTimeEntries: TimeEntry[];


    constructor(userId: string, username: string, defaultJobEntries: number, userDepartments: Department[], userWorkCodes: UserWorkCode[], userJobNumbers: JobNumber[]) {
        this.UserId = userId;
        this.Username = username;
        this.DefaultJobEntries = defaultJobEntries;
        this.UserDepartments = userDepartments;
        this.UserRoles = new Array<UserRole>();
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