using Peaker.TimeManagment.Models.Data;
using System;

namespace Peaker.TimeManagment.Models.View
{
    public class TimeEntryView
    {
        public int id { get; set; }
        public string userId { get; set; }
        public DateTime date { get; set; }
        public decimal hours { get; set; }
        public WorkCode workCode { get; set; }
        public string jobnumber { get; set; }
        public string comments { get;set;}
        public bool hoursError { get; set; }
        public bool jobNumberError { get; set; }
        public bool workCodeError { get; set; }
        public bool exported { get; set; }
        public int index { get; set; }        

    }
}