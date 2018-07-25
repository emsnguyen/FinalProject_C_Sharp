using FinalProject.DAL;
using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List<Product> list;
        public Product test;
        protected void Page_Load(object sender, EventArgs e)
        {


            ProductDAO productDao = new ProductDAO();
            list = productDao.GetList10Product();
            this.DataBind();
            test = list[0];


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