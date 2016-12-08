using System;

namespace Peaker.TimeManagment.Models.Filters
{
    public class EntryFilter
    {
        public string UserId { get; set; }
        public bool ShowAllUsers { get; set; }
        public int? EntryId { get; set; }
        public DateTime? FilterStartDate { get; set; }
        public DateTime? FilterEndDate { get; set; }
        public bool? Exported { get; set; }
    }
}