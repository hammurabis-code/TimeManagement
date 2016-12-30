using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data;

namespace Peaker.TimeManagment.Models.Data
{
    public class TimeEntry
    {
        public int Id { get; set; }
        public int UserDetailId { get; set; }
        public DateTime EntryDate { get; set; }
        public int WorkCodeId { get; set; }
        public string JobNumber { get; set; }
        public string Comments { get; set; }
        public bool ExportedToNavision { get; set; }
        public bool ExportedToPayroll { get; set; }
        public decimal UserHours { get; set; }
        public List<TimeEntryHours> Hours { get; set; }

        public TimeEntry() {           
        }

        public static TimeEntry WorkCodeFactory(IDataRecord record)
        {
            return new TimeEntry
            {
                Id = record.GetInt32(record.GetOrdinal("Id")),
                UserDetailId = record.GetInt32(record.GetOrdinal("UserDetailId")),
                EntryDate = record.GetDateTime(record.GetOrdinal("EntryDate")),
                WorkCodeId = record.GetInt32(record.GetOrdinal("WorkCodeId")),
                JobNumber = record.GetString(record.GetOrdinal("JobNumber")),
                Comments = record.GetString(record.GetOrdinal("Comments")),
                ExportedToNavision = record.GetBoolean(record.GetOrdinal("ExportedToNavision")),
                ExportedToPayroll = record.GetBoolean(record.GetOrdinal("ExportedToPayroll")),
                UserHours = 0,
            };
        }

        public Dictionary<string, object> GetInsertParameters()
        {
            var paramDictionary = new Dictionary<string, object>();
            paramDictionary.Add("p_UserDetailId", UserDetailId);
            paramDictionary.Add("p_EntryDate", EntryDate.ToString("yyyy-MM-dd"));
            paramDictionary.Add("p_WorkCodeId", WorkCodeId);
            paramDictionary.Add("p_JobNumber", JobNumber);
            paramDictionary.Add("p_Comments", Comments);
            paramDictionary.Add("p_ExportedToNavision", ExportedToNavision);
            paramDictionary.Add("p_ExportedToPayroll", ExportedToPayroll);            
            return paramDictionary;
        }

        public Dictionary<string, object> GetIdParameters()
        {
            var paramDictionary = new Dictionary<string, object>();
            paramDictionary.Add("p_Id", Id);          
            return paramDictionary;
        }

    }
}