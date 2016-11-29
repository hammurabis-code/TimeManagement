using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Peaker.TimeManagment.Models.Data
{
    public class Department
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        public string BaseCode { get; set; }
        public List<UserDetail> UserDetails { get; set; }

        public Department() {
            UserDetails = new List<UserDetail>();
        }

    }
}