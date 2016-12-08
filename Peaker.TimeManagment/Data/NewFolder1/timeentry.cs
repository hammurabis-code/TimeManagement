namespace Peaker.TimeManagment.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("timemanagement.timeentry")]
    public partial class timeentry
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public timeentry()
        {
            hourentries = new HashSet<hourentry>();
        }

        public int id { get; set; }

        public int userDetailId { get; set; }

        [Column(TypeName = "date")]
        public DateTime entryDate { get; set; }

        [Required]
        [StringLength(5)]
        public string jobnumber { get; set; }

        [StringLength(20000)]
        public string comments { get; set; }

        [Column(TypeName = "bit")]
        public bool exportedToNavision { get; set; }

        [StringLength(45)]
        public string timeentrycol { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<hourentry> hourentries { get; set; }

        public virtual userdetail userdetail { get; set; }
    }
}
