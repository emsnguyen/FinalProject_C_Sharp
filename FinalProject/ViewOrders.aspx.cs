using FinalProject.DAL;
using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Configuration;

namespace FinalProject
{
    public partial class ViewOrders : System.Web.UI.Page
    {
        //public Dictionary<int, bool> orderPayment = new Dictionary<int, bool>();
        string connectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isAdmin"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                bool isAdmin = (bool)Session["isAdmin"];
                if (!isAdmin)
                {
                    Response.Redirect("~/LimitedAccess.aspx");
                }
            }
        }
        void LoadOrders()
        {

        }
        void FilterByDate()
        {

        }
        void FilterByCustomer()
        {

        }
        void FilterByPaymentStatus()
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //update payment status in database
        }
    }
}