using System;
using System.Collections.Generic;
using FinalProject.Models;
using FinalProject.DAL;
namespace FinalProject
{
    public partial class Home : System.Web.UI.Page
    {
        public List<Product> list;
        public Product test;
        ProductDAO productDao;
        public int CurrentPage { get; set; }
        public int PageGap { get; set; } = 4;
        public int TotalPage { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            productDao = new ProductDAO();
            CurrentPage = Convert.ToInt32(Request["page"]);
            TotalPage = productDao.GetTotalGuitar();
            if (!IsPostBack)
            {

                list = productDao.GetList10Guitar();
                this.DataBind();
            }
            else
            {
                btnSearch_Click(null, null);
            }

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
        protected void btnDetail_Click(object sender, EventArgs e)
        {

            //HyperLink1.NavigateUrl = "Details.aspx?id";
            Response.Redirect("Details.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            productDao = new ProductDAO();
            string search = txtSearch.Text.Trim();
            list = productDao.getListGuitarContainString(search);
            this.DataBind();
        }
    }
}