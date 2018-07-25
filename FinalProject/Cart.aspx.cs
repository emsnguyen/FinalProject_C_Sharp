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
            List<OrderDetail> orders = Session["cart"] as List<OrderDetail>;
            if (!IsExistProduct(orders, productID))
            {
                Product product = ProductDAO.GetProductByID(productID);
                OrderDetail od = new OrderDetail
                {
                    Product = product,
                    Quantity = quantity
                };

                orders.Add(od);
                Session["cart"] = orders;
                foreach (OrderDetail o in orders)
                {
                    //Label1.Text += o.ToString();
                }
                
            }
        }
    }
}