export class EntryFilter {
    CurrentUserDetailId: number;
    UserDetailId?: number;
    ShowAllUsers: boolean;
    EntryId?: number;
    FilterStartDate?: Date;
    FilterEndDate?: Date;
    Exported?: boolean;

    constructor(currentUserId: number, userId?: number, showAllUsers?: boolean, entryId?: number, startDate?: Date, endDate?: Date, exported?: boolean) {
        this.CurrentUserDetailId = currentUserId;
        this.UserDetailId = userId;
        this.ShowAllUsers = showAllUsers;
        this.EntryId = entryId;
        this.FilterStartDate = startDate;
        this.FilterEndDate = endDate;
        this.Exported = exported;
    }
}