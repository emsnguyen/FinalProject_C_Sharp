using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalProject.Models
{
    public class CartItem
    {
        public int ProductID { get; set; }

        public string ProductName { get; set; }
        public int Quantity { get; set; }
        public float Price { get; set; }

        public CartItem(int id, string name, int q, float price)
        {
            ProductID = id;
            ProductName = name;
            Quantity = q;
            Price = price;
        }
    }
}