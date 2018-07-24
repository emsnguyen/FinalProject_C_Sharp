using FinalProject.DAL;
using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class ViewOrders : System.Web.UI.Page
    {
        public List<Order> orders;
        string connectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadOrders();
            DataBind();
        }
        void LoadOrders()
        {
            orders = new OrderDAO().GetAll();
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
        protected void gvOrders_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}