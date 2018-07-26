using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.Models;
using FinalProject.DAL;

namespace FinalProject
{
    public partial class Cart : System.Web.UI.Page
    {
        ProductDAO ProductDAO = new ProductDAO();
        public List<OrderDetail> orders;

        public bool IsExistProduct(List<OrderDetail> orders, int productID)
        {
            foreach (OrderDetail order in orders)
            {
                if (order.Product.ID == productID)
                {
                    return true;
                }
            }
            return false;
        }
        //edit quantity


        protected void Page_Load(object sender, EventArgs e)
        {
            int productID = Convert.ToInt32(Request["productID"]);
            int quantity = Convert.ToInt32(Request["quantity"]);
            if (Session["cart"] == null)
            {
                Session["cart"] = new List<OrderDetail>();
            }
            orders = Session["cart"] as List<OrderDetail>;
            if (productID != 0)
            {
                if (!IsExistProduct(orders, productID))
                {
                    Product product = ProductDAO.GetProductByID(productID);
                    OrderDetail od = new OrderDetail
                    {
                        Product = product,
                        Quantity = quantity,
                        Total = (double)product.Price * quantity
                    };
                    orders.Add(od);
                    Session["cart"] = orders;
                }
                else
                {
                    foreach (OrderDetail o in orders)
                    {
                        if (o.Product.ID == productID)
                        {
                            o.Quantity += quantity;
                            o.Total = (double)o.Product.Price * o.Quantity;
                        }
                    }
                    Session["cart"] = orders;
                }
            } else
            {
                if(orders.Count == 0)
                {
                    return;
                } 
            }
        }

        public void disableButton()
        {
            Button1.Enabled = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CheckOut.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}