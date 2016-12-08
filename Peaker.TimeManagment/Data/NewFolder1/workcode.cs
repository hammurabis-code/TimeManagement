namespace Peaker.TimeManagment.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("timemanagement.workcodes")]
    public partial class workcode
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public workcode()
        {
            userdetails = new HashSet<userdetail>();
        }

        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string BaseCode { get; set; }

        [Required]
        [StringLength(50)]
        public string Description { get; set; }

        [Required]
        [StringLength(50)]
        public string Area { get; set; }

        [Required]
        [StringLength(50)]
        public string Sub { get; set; }

        [Column(TypeName = "bit")]
        public bool IsJobNumberRequired { get; set; }

        [Column(TypeName = "bit")]
        public bool IsEngineeringCode { get; set; }

        [Column(TypeName = "bit")]
        public bool IsFieldServiceCode { get; set; }

        [Column(TypeName = "bit")]
        public bool IsGovernmentCode { get; set; }

        [Column(TypeName = "bit")]
        public bool IsOfficeCode { get; set; }

        [Column(TypeName = "bit")]
        public bool IsShopCode { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<userdetail> userdetails { get; set; }
    }
}
