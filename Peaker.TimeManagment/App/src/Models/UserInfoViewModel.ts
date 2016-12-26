import { TimeEntry } from './TimeEntry'
import { JobNumber } from './JobNumber'
import { UserWorkCode } from './UserWorkCode'
import { Department } from './Department'
import { User } from './User'

export class UserInfoViewModel {
    UserDetailId: number;
    UserId: string;
    Username: string;
    AccountingName: string;
    DefaultJobEntries: number;
    UsedJobNumbers: JobNumber[];
    UserDepartments: Department[];
    UserWorkCodes: UserWorkCode[];

    constructor(user: User) {
        this.UserDetailId = user.UserDetailId;
        this.UserId = user.UserId;
        this.Username = user.Username;
        this.AccountingName = user.Username;
        this.DefaultJobEntries = user.DefaultJobEntries;
        this.UserDepartments = user.UserDepartments;
        this.UsedJobNumbers = user.UserJobNumbers;
        this.UserWorkCodes = user.UserWorkCodes;
    }
}