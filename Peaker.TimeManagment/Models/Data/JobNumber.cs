using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Peaker.TimeManagment.Models.Data
{
    public class JobNumber
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public int UserDetailId { get; set; }
        [Required]
        public string JobNumberValue { get; set; }
        public UserDetail UserDetail { get; set; }        


    }
}