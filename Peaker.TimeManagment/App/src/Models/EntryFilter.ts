export class EntryFilter {
    UserId?: string;
    EntryId?: number;
    FilterStartDate?: Date;
    FilterEndDate?: Date;
    Exported?: boolean;

    constructor(userId?: string, entryId?: number, startDate?: Date, endDate?: Date, exported?: boolean) {
        this.UserId = userId;
        this.EntryId = entryId;
        this.FilterStartDate = startDate;
        this.FilterEndDate = endDate;
        this.Exported = exported;
    }
}