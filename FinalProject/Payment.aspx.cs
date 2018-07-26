using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Payment : System.Web.UI.Page
    {
        string cntStr = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        public SqlConnection connection;
        private User customer;
        private List<OrderDetail> cartItems;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new SqlConnection(cntStr);
            if (!Page.IsPostBack)
            {
                cartItems = (List<OrderDetail>)Session["cart"];
                customer = (User)Session["CurrentCustomer"];
                _displayDeliveryInfo();
                _displayProductList();
                _displayOrderInfo();
            } else
            {
                cartItems = (List<OrderDetail>)Session["cart"];
                customer = (User)Session["CurrentCustomer"];
                _displayDeliveryInfo();
                _displayProductList();
            }
        }

        private void _displayDeliveryInfo()
        {
            if (customer != null)
            {
                customerName.Text = "Name: " + customer.FullName;
                address.Text = "Address: " + customer.Address;
                email.Text = "Email: " + customer.Email;
                phoneNumber.Text = "Phone: " + customer.Phone;
            }
        }

        private void _displayProductList()
        {
            DataTable t = new DataTable();
            t.Columns.Add("productID", typeof(int));
            t.Columns.Add("quantity", typeof(int));
            t.Columns.Add("price", typeof(double));
            foreach(OrderDetail item in cartItems)
            {
                t.Rows.Add(item.Product.ID, item.Quantity, item.Total);
            }
            GridView1.DataSource = t;
            GridView1.DataBind();
        }

        private void _displayOrderInfo()
        {
            //get sub total
            double subTotal = 0;
            foreach(OrderDetail item in cartItems)
            {
                subTotal += item.Total;
            }
            subtotalPrice.Text = Decimal.Parse(Convert.ToString(subTotal), System.Globalization.NumberStyles.Float) + " VND";
            //get discount
            discountAmount.Text = "0 %";
            //total
            totalPrice.Text = Decimal.Parse(Convert.ToString(subTotal), System.Globalization.NumberStyles.Float) + " VND";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton2.Checked == true)
            {
                CardBox.Visible = false;
            }
            if (RadioButton3.Checked == true)
            {
                CardBox.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (customer != null)
            {
                int userID = customer.ID;
                string orderDate = DateTime.Now.ToShortDateString();
                double total = _calculateTotal();
                //create order
                connection.Open();
                SqlCommand q = new SqlCommand("insert into [PRN292_Project].[dbo].[Order] (UserID, OrderDate, Total) values ("
                    + userID + ", '" + orderDate + "', " + total + ")", connection);
                q.ExecuteNonQuery();
                connection.Close();
                //get orderId
                int orderID = 0;
                connection.Open();
                SqlDataAdapter x = new SqlDataAdapter("Select top 1 * from [PRN292_Project].[dbo].[Order] order by ID desc", connection);
                DataTable t = new DataTable();
                x.Fill(t);
                connection.Close();
                orderID = Convert.ToInt32(t.Rows[0][0].ToString());
                //create order detail
                connection.Open();
                foreach(OrderDetail item in cartItems)
                {
                    SqlCommand z = new SqlCommand("insert into OrderDetail (OrderID, ProductID, Quantity, Total) values ("
                    + orderID + ", " + item.Product.ID + ", " + item.Quantity + ", " + item.Total + ")", connection);
                    z.ExecuteNonQuery();
                }
                connection.Close();
                //create order pay
                int paymentID = 1;
                if (RadioButton3.Checked)
                {
                    paymentID = 2;
                    string cardNumber = TextBox1.Text;
                    string nameCard = TextBox2.Text;
                    string expiredDate = TextBox3.Text;
                    string securityCode = TextBox4.Text;

                    connection.Open();
                    SqlCommand y = new SqlCommand("insert into Order_Pay (OrderID, PaymentMethodID, AccountNumber) values ("
                    + orderID + ", " + paymentID + ", '" + cardNumber + "')", connection);
                    y.ExecuteNonQuery();
                    connection.Close();
                    Session["cart"] = null;
                    //redirect to processing page
                    Response.Redirect("Transaction.aspx");
                } else
                {
                    connection.Open();
                    SqlCommand z = new SqlCommand("insert into Order_Pay (OrderID, PaymentMethodID) values ("
                    + orderID + ", " + paymentID + ")", connection);
                    z.ExecuteNonQuery();
                    connection.Close();
                    Session["cart"] = null;
                    //redirect to message page
                    Response.Redirect("OrderSuccessPage.aspx");
                }
            }
        }

        private double _calculateTotal()
        {
            double total = 0;
            foreach(OrderDetail item in cartItems)
            {
                total += item.Total;
            }
            return total;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderInformation.aspx");
        }
    }
}