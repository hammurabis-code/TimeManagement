export class Constants {
    public static readonly tokenName: string = "id_token";
    public static readonly baseApiUrl: string = "/api/";
    public static readonly accountApi: string = Constants.baseApiUrl + "Account/";
    public static readonly timeEntryApi: string = Constants.baseApiUrl + "TimeEntry/";
    public static readonly valuesApi: string = Constants.baseApiUrl + "Values/";
    public static readonly workCodeServiceApi: string = Constants.baseApiUrl + "WorkCodes/";
    public static readonly adminApi: string = Constants.baseApiUrl + "admin/";

    public static readonly codeSelectionTextShow: string = 'Dept./Code Preferences';
    public static readonly codeSelectionTextHide: string = 'Hide Dept./Code Preferences';
}