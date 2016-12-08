namespace Peaker.TimeManagment.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("timemanagement.userjobnumbers")]
    public partial class userjobnumber
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int userdetailid { get; set; }

        [Required]
        [StringLength(45)]
        public string jobnumbervalue { get; set; }

        public virtual userdetail userdetail { get; set; }
    }
}
