using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Peaker.TimeManagment.Models.Data
{
    public class WorkCode
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [Required]
        public string BaseCode { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        public string Area { get; set; }
        [Required]
        public string Sub { get; set; }
        [Required]
        public bool IsJobNumberRequired { get; set; }
        [Required]
        public bool IsEngineeringCode { get; set; }
        [Required]
        public bool IsFieldServiceCode { get; set; }
        [Required]
        public bool IsGovernmentCode { get; set; }
        [Required]
        public bool IsOfficeCode { get; set; }
        [Required]
        public bool IsShopCode { get; set; }

        public List<UserDetail> UserDetails { get; set; }

        public WorkCode() {
            UserDetails = new List<UserDetail>();
        }

    }
}