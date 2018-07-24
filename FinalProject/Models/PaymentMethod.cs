namespace FinalProject.Models
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("PaymentMethod")]
    public partial class PaymentMethod
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PaymentMethod()
        {
            Order_Pay = new HashSet<Order_Pay>();
        }

        public int ID { get; set; }

        [Column("PaymentMethod")]
        [Required]
        [StringLength(50)]
        public string PaymentMethod1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order_Pay> Order_Pay { get; set; }
    }
}
