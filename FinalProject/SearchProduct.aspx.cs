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
    public partial class WebForm4 : System.Web.UI.Page
    {
        public List<Product> list;
        ProductDAO productDao;
        protected void Page_Load(object sender, EventArgs e)
        {

            productDao = new ProductDAO();
            TextBox txtSearch = Master.FindControl("txtSearch") as TextBox;
            string search = txtSearch.Text.Trim();
            list = productDao.getListGuitarContainString(search);
            this.DataBind();




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