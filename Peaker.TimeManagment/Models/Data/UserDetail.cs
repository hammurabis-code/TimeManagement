using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Peaker.TimeManagment.Models.Data
{
    public class UserDetail
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [Required]
        public string UserId { get; set; }
        [Required]
        public string AccountingName { get; set; }
        [Required]
        public int DefaultJobEntries { get; set; }
        public List<Department> Departments { get; set; }
        public List<WorkCode> WorkCodes { get; set; }
        public List<JobNumber> UsedJobNumbers { get; set; }
        public List<TimeEntry> TimeEntries { get; set; }

        public UserDetail() {
            Departments = new List<Department>();
            WorkCodes = new List<WorkCode>();
            UsedJobNumbers = new List<JobNumber>();
            TimeEntries = new List<TimeEntry>();
        }
    }
}