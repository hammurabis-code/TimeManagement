namespace Peaker.TimeManagment.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("timemanagement.hourentry")]
    public partial class hourentry
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int timeentryid { get; set; }

        public decimal duration { get; set; }

        [Required]
        [StringLength(45)]
        public string type { get; set; }

        public virtual timeentry timeentry { get; set; }
    }
}
