using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class CompleteOrderInfo : System.Web.UI.Page
    {
        string cntStr = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        public SqlConnection connection;
        private User customer;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new SqlConnection(cntStr);
            if(!Page.IsPostBack)
            {
                _displayDeliverInfo();
                InfoDiv.Visible = false;
            } else
            {
                _displayDeliverInfo();
            }
        }

        private void _getCustomer()
        {
            //check if customer is logged in
            int userId = Convert.ToInt32(Session["userId"]);
            if (userId == 0)
            {
                //redirect to login page
                Response.Redirect("login.aspx");
            } else
            {
                //get customer info
                string query = "Select * From [User] Where ID = " +
                userId;
                connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    customer = new User();
                    customer.ID = Convert.ToInt32(dr[0].ToString());
                    customer.IsAdmin = Convert.ToBoolean(dr[3]);
                    customer.Address = dr[4].ToString();
                    customer.Phone = dr[5].ToString();
                    customer.Email = dr[6].ToString();
                    customer.FullName = dr[1].ToString();
                }
                connection.Close();
                Session["CurrentCustomer"] = customer;
            }
        }

        private void _displayDeliverInfo()
        {
            //get customer 
            _getCustomer();
            //display customer info to order page
            if(customer != null)
            {
                customerName.Text = customer.FullName;
                address.Text = customer.Address;
                email.Text = customer.Email;
                phoneNumber.Text = customer.Phone;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            InfoDiv.Visible = true;
            if (customer != null)
            {
                if (customer.FullName != null)
                    TextBox1.Text = customer.FullName;
                if (customer.Address != null)
                    TextArea1.Value = customer.Address;
                if (customer.Email != null)
                    TextBox3.Text = customer.Email;
                if (customer.Phone != null)
                    TextBox4.Text = customer.Phone;
            }
        }

        protected void clearButton_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextArea1.Value = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string address = TextArea1.Value;
            string email = TextBox3.Text;
            string phone = TextBox4.Text;
            connection.Open();
            SqlCommand q = new SqlCommand("update [PRN292_Project].[dbo].[User] set Address = '" + address 
                + "', Phone = '" + phone + "', Email = '" + email 
                + "', FullName = '" + name + "' where ID = " + customer.ID, connection);
            q.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("OrderInformation.aspx");
        }
    }
}