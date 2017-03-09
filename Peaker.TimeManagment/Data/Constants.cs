namespace Peaker.TimeManagment.Data
{
    public static class Constants
    {
        public const string DeleteTimeEntryProcedure = "deletetimeentry";
        public const string DeleteUserWorkCodeProcedure = "deleteuserworkcode";
        public const string DeleteHoursForTimeEntry = "deletehoursfortimeentry";

        public const string GetUserDetailProcedure = "getauserdetail";
        public const string GetUserWorkCodeListProcedure = "getuserworkcodelist";
        public const string GetUserDepartmentsProcedure = "getuserdepartments";
        public const string GetUserJobnumbersProcedure = "getuserjobnumbers";
        public const string GetAllUserTimeEntriesProcedure = "getallusertimeentries";
        public const string GetUserTimeEntriesByDateProcedure = "getusertimeentriesbydate";
        public const string GetHoursForTimeEntryProcedure = "gethoursforentry";
        public const string GetAllWorkCodesProcedure = "getallworkcodes";
        public const string GetAllTimeEntriesByDateRangeProcedure = "getalltimeentriesbydaterange";
        public const string GetTargetWorkCodeProcedure = "gettargetworkcode";
        public const string GetHoursByDateProcedure = "gethoursfordate";
        public const string GetWorkCodeProcedure = "getWorkCode";
        public const string GetRestrictedJobnumbersProcedure = "getrestrictedjobnumbers";
        public const string GetIsSecondShiftProcedure = "getissecondshift";
        public const string GetPayrollExportEntriesProcedure = "getPayrollExportEntries";

        public const string InsertTimeEntryProcedure = "inserttimeentry";
        public const string InsertTimeEntryHoursProcedure = "inserttimeentryhours";
        public const string InsertUserDetailProcedure = "insertuserdetail";
        public const string InsertUserWorkCodeProcedure = "insertuserworkcode";
        public const string InsertPeakerEventProcedure = "insertpeakerevent";

        public const string SetExportedToNavisionProcedure = "setexportedtonavision";
        public const string SetExportedToPayrollProcedure = "setexportedtopayroll";

        public const string UpdateTimeEntryProcedure = "updatetimeentry";
        public const string UpdateUserDetailProcedure = "updateuserdetail";
        public const string UpdateWorkCodeProcedure = "updateworkcode";
        public const string UpdateTimeEntryClearNavisionExportProcedure = "UpdateTimeEntryClearNavisionExport";
        public const string UpdateTimeEntryClearPayrollExportProcedure = "UpdateTimeEntryClearPayrollExport";
        public const string UpdateTimeentryClearNavisionBetweenDates = "updatetimeentry_clearnavisionbetweendates";
        public const string UpdateTimeentryClearPayrollBetweenDates = "updatetimeentry_clearpayrollbetweendates";
       
    }
}