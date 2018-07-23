using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
namespace FinalProject.DAL
{
    public class ProductDAO: DataContext.DataConnection
    {
        // get first 10 items from table Product
        public List<Models.Product> GetList10Product()
        {
            List<Models.Product> list = new List<Models.Product>();
            SqlDataAdapter da = new SqlDataAdapter();

            return list;
        } 

    }
}