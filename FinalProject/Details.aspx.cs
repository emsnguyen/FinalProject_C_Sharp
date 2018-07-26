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
    public partial class Details : System.Web.UI.Page
    {
        ProductDAO productDao = new ProductDAO();

        public Product product;

        int id = 0;
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
        protected void Page_Load(object sender, EventArgs e)
        {

            id = Convert.ToInt32(Request["productID"]);
            product = productDao.GetProductByID(id);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                string ordered = Request["ordered"];
                if (!string.IsNullOrEmpty(ordered))
                {
                    if (Session["cart"] == null)
                    {
                        Session["cart"] = new List<OrderDetail>();

                    }
                    List<OrderDetail> orders = Session["cart"] as List<OrderDetail>;
                    if (!IsExistProduct(orders, id))
                    {
                        Product product = productDao.GetProductByID(id);
                        OrderDetail od = new OrderDetail
                        {
                            Product = product
                        };
                        TextBox textbox = this.FindControl("txtQuantity") as TextBox;
                        string quantity = txtQuantity.Text;
                        od.Quantity = Convert.ToInt32(txtQuantity.Text);

                        orders.Add(od);


                    }
                }

            }
            catch (NullReferenceException ex)
            {
                throw (ex);
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int quantity = Convert.ToInt32(txtQuantity.Text);
            quantity--;
            txtQuantity.Text = quantity.ToString();
            if (quantity == 0)
            {
                Button2.Enabled = false;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int quantity = Convert.ToInt32(txtQuantity.Text);
            if (quantity > 0)
            {
                Button2.Enabled = true;
            }
            quantity++;
            txtQuantity.Text = quantity.ToString();
        }
    }
}