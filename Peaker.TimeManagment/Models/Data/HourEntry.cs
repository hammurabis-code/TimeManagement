using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Peaker.TimeManagment.Models.Data
{
    public class HourEntry
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public int TimeEntryId { get; set; }
        [Required]
        public decimal Duration { get; set; }
        [Required]
        public string Type { get; set; }
        [Required]
        public TimeEntry TimeEntry {get;set;}
    }
}