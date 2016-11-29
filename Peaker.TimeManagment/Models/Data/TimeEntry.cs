using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Peaker.TimeManagment.Models.Data
{
    public class TimeEntry
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public int UserDetailId { get; set; }
        [Required]
        public DateTime Date { get; set; }
        public WorkCode Code { get; set; }
        public string JobNumber { get; set; }
        public string Comments { get; set; }
        [Required]
        public bool Exported { get; set; }
        public UserDetail UserDetail { get; set; }
        public List<HourEntry> Hours { get; set; }

        public TimeEntry() {
            Hours = new List<HourEntry>();
        }

    }
}