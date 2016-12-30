using Peaker.TimeManagment.Models.Data;
using System;
using System.Collections.Generic;

namespace Peaker.TimeManagment.Models.View
{
    public class TimeEntryView
    {
        public int id { get; set; }
        public int userDetailId { get; set; }
        public DateTime entryDate { get; set; }
        public decimal userHours { get; set; }
        public WorkCode workCode { get; set; }
        public string jobnumber { get; set; }
        public string comments { get;set;}
        public bool hoursError { get; set; }
        public bool jobNumberError { get; set; }
        public bool workCodeError { get; set; }
        public bool exportedToNavision { get; set; }
        public bool exportedToPayroll { get; set; }
        public int workCodeId { get; set; }
        public int index { get; set; }
        public List<TimeEntryHours> hours { get; set; }

        public TimeEntryView() { }

        public TimeEntryView(TimeEntry entry) {
            id = entry.Id;
            userDetailId = entry.UserDetailId;
            entryDate = entry.EntryDate;
            jobnumber = entry.JobNumber;
            comments = entry.Comments;
            hoursError = false;
            jobNumberError = false;
            workCodeError = false;
            exportedToNavision = entry.ExportedToNavision;
            exportedToPayroll = entry.ExportedToPayroll;
            index = 0;
            workCodeId = entry.WorkCodeId;
            decimal hours = 0;
            foreach (var hoursEntry in entry.Hours) {
                hours += hoursEntry.Duration;
            }
            userHours = hours;
        }

        public Dictionary<string, object> GetInsertParameters()
        {
            var paramDictionary = new Dictionary<string, object>();
            paramDictionary.Add("p_UserDetailId", userDetailId);
            paramDictionary.Add("p_EntryDate", entryDate.ToString("yyyy-MM-dd"));
            paramDictionary.Add("p_WorkCodeId", workCodeId);
            paramDictionary.Add("p_JobNumber", jobnumber);
            paramDictionary.Add("p_Comments", comments);
            paramDictionary.Add("p_ExportedToNavision", exportedToNavision);
            paramDictionary.Add("p_ExportedToPayroll", exportedToPayroll);
            return paramDictionary;
        }
       
            public Dictionary<string, object> GetUpdateParameters()
        {
            var paramDictionary = GetInsertParameters();
            paramDictionary.Add("p_Id", id);           
            return paramDictionary;
        }
    }
}