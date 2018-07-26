using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using FinalProject.DAL;
using FinalProject.Models;

namespace FinalProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Username = txtUsername.Text;
            string Password = txtPassword.Text;
            User u = new UserDAO().IsExist(Username, Password);
            if (u != null)
            {
                Session["userId"] = u.ID;
                Session["isAdmin"] = u.IsAdmin;
                Session["username"] = u.UserName;
                if (u.IsAdmin)
                {
                    Response.Redirect("ViewOrders.aspx");
                    return;
                }
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblMessage.Text = "Incorrect username or password!";
            }
        }
    }
}