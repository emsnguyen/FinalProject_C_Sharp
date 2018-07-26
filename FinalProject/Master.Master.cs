using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.DAL;
using FinalProject.Models;
namespace FinalProject
{
    public partial class Master : System.Web.UI.MasterPage
    {
        public int TotalItems { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            List<OrderDetail> orderDetails = Session["cart"] as List<OrderDetail>;
            if (orderDetails != null)
            {
                TotalItems = orderDetails.Count;
            }

        }

        protected void linkLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
        }
    }
}