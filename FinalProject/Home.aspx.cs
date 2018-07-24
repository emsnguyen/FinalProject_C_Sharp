using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;
using FinalProject.Models;
using FinalProject.DAL;
namespace FinalProject
{
    public partial class Home : System.Web.UI.Page
    {
        public List<Product> list;
        public Product test;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ProductDAO productDao = new ProductDAO();
                list = productDao.GetList10Product();
                this.DataBind();
                test = list[0];
                string username = "";
                try
                {
                    username = Session["username"].ToString();
                    lblInfo.Text = "Hello " + username + " !";
                } catch (NullReferenceException ex)
                {
                    
                }
                if (!string.IsNullOrEmpty(lblInfo.Text))
                {
                    loginLink.Text = "Log Out";                  
                }
                
            }
        }
       
       

        void LoadData()
        {

        }

        protected void btnDetail_Click(object sender, EventArgs e)
        {

            //HyperLink1.NavigateUrl = "Details.aspx?id";
            Response.Redirect("Details.aspx");
        }
    }
}