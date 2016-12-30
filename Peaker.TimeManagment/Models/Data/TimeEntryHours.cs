using Peaker.TimeManagment.Models.Enums;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Peaker.TimeManagment.Models.Data
{
    public class TimeEntryHours
    {
        public int Id { get; set; }
        public int TimeEntryId { get; set; }
        public decimal Duration { get; set; }
        public HourTypes HoursType { get; set; }

        public static TimeEntryHours TimeEntryHoursFactory(IDataRecord record)
        {
            return new TimeEntryHours
            {
                Id = record.GetInt32(record.GetOrdinal("Id")),
                TimeEntryId = record.GetInt32(record.GetOrdinal("TimeEntryId")),
                Duration = record.GetDecimal(record.GetOrdinal("Duration")),
                HoursType = (HourTypes)record.GetInt16(record.GetOrdinal("HoursType")),
            };
        }

        public Dictionary<string, object> GetInsertParameters()
        {
            var paramDictionary = new Dictionary<string, object>();
            paramDictionary.Add("p_TimeEntryId", TimeEntryId);
            paramDictionary.Add("p_hours", Duration);
            paramDictionary.Add("p_hoursType", (int)HoursType);
            return paramDictionary;
        }

        public Dictionary<string, object> GetTimeEntryIdParameters()
        {
            var paramDictionary = new Dictionary<string, object>();
            paramDictionary.Add("p_timeEntryId", TimeEntryId);
            return paramDictionary;
        }
    }
}