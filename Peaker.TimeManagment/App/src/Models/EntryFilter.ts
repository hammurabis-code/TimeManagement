export class EntryFilter {
    CurrentUserDetailId: number;
    UserDetailId?: number;
    ShowAllUsers: boolean;
    EntryId?: number;
    FilterStartDate?: Date;
    FilterEndDate?: Date;
    ExportedToNavision?: boolean;
    RequireJobCode?: boolean;
    ExportedToPayroll?: boolean;

    constructor(currentUserId: number, userId?: number, showAllUsers?: boolean, entryId?: number, startDate?: Date, endDate?: Date, exportedToNavision?: boolean, requireJobCode?: boolean, exportedToPayroll?: boolean) {
        this.CurrentUserDetailId = currentUserId;
        this.UserDetailId = userId;
        this.ShowAllUsers = showAllUsers;
        this.EntryId = entryId;
        this.FilterStartDate = startDate;
        this.FilterEndDate = endDate;
        this.ExportedToNavision = exportedToNavision;
        this.RequireJobCode = requireJobCode;
        this.ExportedToPayroll = exportedToPayroll;
    }
}