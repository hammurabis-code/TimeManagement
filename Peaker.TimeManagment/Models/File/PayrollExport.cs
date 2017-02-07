using Peaker.TimeManagment.Models.Data;
using System;
using System.Data;

namespace Peaker.TimeManagment.Models.File
{
    public class PayrollExport
    {
        public string AccountingName { get; set; }
        public int UserDetailId { get; set; }
        public int TimeEntryId { get; set; }
        public DateTime EntryDate { get; set; }
        public string BaseCode { get; set; }
        public string CodeDescription { get; set; }
        public decimal Hours { get; set; }
        public string Sub { get; set; }
        public string JobNumber { get; set; }

        public static PayrollExport PayrollExportFactory(IDataRecord record)
        {
            return new PayrollExport
            {
                AccountingName = record.GetString(record.GetOrdinal("AccountingName")),
                UserDetailId = record.GetInt32(record.GetOrdinal("UserDetailId")),
                TimeEntryId = record.GetInt32(record.GetOrdinal("TimeEntryId")),
                EntryDate = record.GetDateTime(record.GetOrdinal("EntryDate")),
                Hours = record.GetDecimal(record.GetOrdinal("Hours")),
                BaseCode = record.GetString(record.GetOrdinal("BaseCode")),
                CodeDescription = record.GetString(record.GetOrdinal("Description")),
                Sub = record.GetString(record.GetOrdinal("Sub")),
                JobNumber = record.GetString(record.GetOrdinal("JobNumber")),
            };
        }

    }
}