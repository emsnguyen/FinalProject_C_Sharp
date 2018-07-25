namespace FinalProject.Models
{
    public partial class Order_Pay
    {
        public int ID { get; set; }

        public int OrderID { get; set; }

        public int PaymentMethodID { get; set; }

        public bool PaymentStatus { get; set; }

        public virtual Order Order { get; set; }

        public virtual PaymentMethod PaymentMethod { get; set; }
    }
}
