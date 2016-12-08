namespace Peaker.TimeManagment.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("timemanagement.userdetails")]
    public partial class userdetail
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public userdetail()
        {
            timeentries = new HashSet<timeentry>();
            userjobnumbers = new HashSet<userjobnumber>();
            departments = new HashSet<department>();
            workcodes = new HashSet<workcode>();
        }

        public int id { get; set; }

        [Required]
        [StringLength(45)]
        public string userId { get; set; }

        [Required]
        [StringLength(100)]
        public string accountingName { get; set; }

        public int defaultJobEntries { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<timeentry> timeentries { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<userjobnumber> userjobnumbers { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<department> departments { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<workcode> workcodes { get; set; }
    }
}
