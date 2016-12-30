using System;

namespace Peaker.TimeManagment.Models.Filters
{
    public class EntryFilter
    {
        public int CurrentUserDetailId { get; set; }
        public int? UserDetailId { get; set; }
        public bool ShowAllUsers { get; set; }
        public int? EntryId { get; set; }
        public DateTime? FilterStartDate { get; set; }
        public DateTime? FilterEndDate { get; set; }
        public bool? Exported { get; set; }
    }
}