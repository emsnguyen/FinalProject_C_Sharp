using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProject.Models;
using FinalProject.DAL;
using FinalProject.Models;

namespace FinalProject
{
    public partial class singleIndex : System.Web.UI.Page
    {
        ProductDAO productDao = new ProductDAO();
        public Product product;
        protected void Page_Load(object sender, EventArgs e)
        {           
            int id = Convert.ToInt32(Request["productID"]);
            product = productDao.GetProductByID(id);
        }
    }
}