namespace FinalProject.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Order")]
    public partial class Order
    {
        public int ID { get; set; }

        public int UserID { get; set; }

        [Column(TypeName = "date")]
        public DateTime OrderDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime DeliveredDate { get; set; }

        [Column(TypeName = "date")]
        public DateTime DueDate { get; set; }

        public double Total { get; set; }
        public Order_Pay OrderPay { get; set; }
    }
}