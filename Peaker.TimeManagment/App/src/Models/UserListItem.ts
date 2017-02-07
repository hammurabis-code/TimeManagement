export class UserListItem {
    AccountingName: string;
    Email: string;
    UserDetailId: number;

    constructor(accountingName: string, email: string, userDetailId: number) {
        this.AccountingName = accountingName;
        this.Email = email;
        this.UserDetailId = userDetailId;
    }
}