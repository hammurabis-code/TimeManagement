export class EntryFilter {
    UserId?: string;
    ShowAllUsers: boolean;
    EntryId?: number;
    FilterStartDate?: Date;
    FilterEndDate?: Date;
    Exported?: boolean;

    constructor(userId?: string, showAllUsers?: boolean, entryId?: number, startDate?: Date, endDate?: Date, exported?: boolean) {
        this.UserId = userId;
        this.ShowAllUsers = showAllUsers;
        this.EntryId = entryId;
        this.FilterStartDate = startDate;
        this.FilterEndDate = endDate;
        this.Exported = exported;
    }
}