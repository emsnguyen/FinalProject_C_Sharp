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
    public partial class Masterr : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = "";
            try
            {
                username = Session["username"].ToString();
                lblInfo.Text = "Hello " + username + " !";
            }
            catch (NullReferenceException ex)
            {
                Console.WriteLine(ex);
            }
            if (!string.IsNullOrEmpty(lblInfo.Text))
            {
                loginLink.Text = "Log Out";
            }
        }

        
    }
}