using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
namespace FinalProject.DAL
{
    public class ProductDAO : DataConnect
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
      
        // get first 10 items from table Product
        public List<Models.Product> GetList10Product()
        {
            List<Models.Product> list = new List<Models.Product>();
            con = new SqlConnection(connectionString);
            string query = @"SELECT TOP (10) [ID]
                           ,[Name]
                         ,[DateImported]
                       ,[Description]
                      ,[TotalSold]
                      ,[TotalLeft]
                         ,[Image]
                      ,[SubCategoryID]
                      ,[MakerID]
                    ,[Price]
                    FROM [PRN292_Project].[dbo].[Product]";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Models.Product p = new Models.Product();
                p.SubCategory = new Models.SubCategory();
                p.ID = Convert.ToInt32(reader["ID"].ToString());
                p.Name = reader["Name"].ToString();
                p.DateImported = DateTime.Parse(reader["DateImported"].ToString());
                p.Description = reader["Description"].ToString();
                p.TotalSold = Convert.ToInt32(reader["TotalSold"].ToString());
                p.TotalLeft = Convert.ToInt32(reader["TotalLeft"].ToString());
                p.Image = reader["Image"].ToString();
                
                p.SubCategory.ID = Convert.ToInt32(reader["SubCategoryID"].ToString());
                p.MakerID = Convert.ToInt32(reader["MakerID"].ToString());
                p.Price = Convert.ToDouble(reader["Price"].ToString());
                list.Add(p);
            }
            
            return list;
        }

    }
}