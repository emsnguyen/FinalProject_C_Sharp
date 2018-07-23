namespace FinalProject.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            OrderDetails = new HashSet<OrderDetail>();
        }

        public int ID { get; set; }

        [Required]
        [StringLength(150)]
        public string Name { get; set; }

        [Column(TypeName = "date")]
        public DateTime DateImported { get; set; }

        public string Description { get; set; }

        public int TotalSold { get; set; }

        public int TotalLeft { get; set; }

        [Required]
        [StringLength(350)]
        public string Image { get; set; }

        public int SubCategoryID { get; set; }

        public int MakerID { get; set; }

        public double? Price { get; set; }

        public virtual Maker Maker { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }

        public virtual SubCategory SubCategory { get; set; }
    }
}
