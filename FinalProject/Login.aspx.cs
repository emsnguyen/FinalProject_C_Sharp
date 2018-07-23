using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.Models;

namespace FinalProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public SqlConnection connection;
       
        public SqlConnection connectDB()
        {
            string cntStr = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
            connection = new SqlConnection(cntStr);
            connection.Open();
            return connection;
        }
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }
        public User IsExist(string username, string password)
        {
            User u = new User();
            connection = connectDB();
            string query = "Select * From [User] Where Username = @username " +
                " And Password = @password";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                u.ID = Convert.ToInt32(dr[0].ToString());
                u.IsAdmin = Convert.ToBoolean(dr[3]);
                return u;
            }
            return null;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Username = txtUsername.Text;
            string Password = txtPassword.Text;
            if (IsExist(Username, Password) != null)
            {
                Session["id"] = IsExist(Username, Password).ID;
                Session["isAdmin"] = IsExist(Username, Password).IsAdmin;
                Response.Redirect("Home.aspx");
            } else
            {
                MsgBox("Incorrect username or password!", this.Page, this);
            }
        }
    }
}