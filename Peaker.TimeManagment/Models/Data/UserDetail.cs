using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data;

namespace Peaker.TimeManagment.Models.Data
{
    public class UserDetail
    {
        public int Id { get; set; }
        public string UserId { get; set; }
        public string AccountingName { get; set; }
        public int DefaultJobEntries { get; set; }
        public bool IsSecondShift { get; set; }
        public List<Department> Departments { get; set; }
        public List<WorkCode> WorkCodes { get; set; }
        public List<JobNumber> UsedJobNumbers { get; set; }
        public List<TimeEntry> TimeEntries { get; set; }

        public UserDetail()
        {
            Departments = new List<Department>();
            WorkCodes = new List<WorkCode>();
            UsedJobNumbers = new List<JobNumber>();
            TimeEntries = new List<TimeEntry>();
        }

        public static UserDetail UserDetailFactory(IDataRecord record)
        {
            return new UserDetail
            {
                Id = record.GetInt32(record.GetOrdinal("Id")),
                UserId = record.GetString(record.GetOrdinal("UserId")),
                AccountingName = record.GetString(record.GetOrdinal("AccountingName")),
                DefaultJobEntries = record.GetInt32(record.GetOrdinal("DefaultJobEntries")),
                IsSecondShift = record.GetBoolean(record.GetOrdinal("IsSecondShift")),
                Departments = new List<Department>(),
                WorkCodes = new List<WorkCode>(),
                UsedJobNumbers = new List<JobNumber>(),
                TimeEntries = new List<TimeEntry>(),
            };
        }
    }
}