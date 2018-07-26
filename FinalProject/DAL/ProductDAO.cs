using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using FinalProject.Models;

namespace FinalProject.DAL
{
    public class ProductDAO : BaseDAO
    {
        SqlConnection con;

        // get first 10 items from table Product
        public List<Models.Product> GetList10Guitar()
        {
            List<Product> list = new List<Product>();
            con = new SqlConnection(connectionString);
            string query = @"SELECT TOP (10) p.ID
                                    ,p.Name
                                    ,[DateImported]
                                    ,[Description]
                                    ,[TotalSold]
                                ,[TotalLeft]
                                ,[Image]
                                ,[SubCategoryID]
                                ,[MakerID]
                                ,[Price]
                            FROM Product as p inner join SubCategory as s
                            on p.SubCategoryID = s.ID  where s.CategoryID=1";
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
        //select guitars based on paging
        public List<Product> GetGuitarList(int start, int end)
        {
            List<Product> guitars = new List<Product>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = @"select RN, ID
                                      ,[Name]
                                      ,[DateImported]
                                      ,[Description]
                                      ,[TotalSold]
                                      ,[TotalLeft]
                                      ,[Image]
                                      ,[SubCategoryID]
                                      ,[MakerID]
                                      ,[Price] from
                                (SELECT Row_Number() over (order by p.ID asc) as RN, p.ID
                                      ,p.[Name]
                                      ,[DateImported]
                                      ,[Description]
                                      ,[TotalSold]
                                      ,[TotalLeft]
                                      ,[Image]
                                      ,[SubCategoryID]
                                      ,[MakerID]
                                      ,[Price]
                                  FROM [Product] p, SubCategory sub
                                  WHERE p.SubCategoryID = sub.ID AND sub.CategoryID = 1
                                  ) AS X
                                  WHERE RN between @start and @end
                                ";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.Add("@start", SqlDbType.Int).Value = start;
                    command.Parameters.Add("@end", SqlDbType.Int).Value = end;
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Product p = new Product();
                        p.SubCategory = new SubCategory();
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
                        guitars.Add(p);
                    }
                }
                return guitars;
            }
        }
        internal int GetTotalGuitar()
        {
            int total = -1;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = @"SELECT count(*) as total
                            FROM Product p, Category c, SubCategory sc
                            WHERE p.SubCategoryID = sc.ID and c.ID = sc.CategoryID
                            AND c.ID = 1";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        total = (int)reader["total"];
                    }
                }
            }
            return total;
        }

        // get item by id from table Product
        public Product GetProductByID(int id)
        {
            con = new SqlConnection(connectionString);
            Product p = new Product();
            string query = @"SELECT [ID]
                           ,[Name]
                         ,[DateImported]
                       ,[Description]
                      ,[TotalSold]
                      ,[TotalLeft]
                         ,[Image]
                      ,[SubCategoryID]
                      ,[MakerID]
                    ,[Price]
                    FROM [PRN292_Project].[dbo].[Product] WHERE ID = @id";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                p = new Product();
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

            }

            return p;
        }
        // get list of Product which contains string
        public List<Models.Product> getListGuitarContainString(string contain)
        {
            List<Models.Product> list = new List<Models.Product>();
            con = new SqlConnection(connectionString);
            string query = @"SELECT TOP (10) p.ID
                             ,p.Name
                              ,[DateImported]
                             ,[Description]
                             ,[TotalSold]
                             ,[TotalLeft]
                             ,[Image]
                             ,[SubCategoryID]
                             ,[MakerID]
                             ,[Price]
                            FROM Product as p inner join SubCategory as s
                         on p.SubCategoryID = s.ID  where s.CategoryID=1 and p.Name like @name";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", "%" + contain + "%");
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

        //select guitars based on paging
        public List<Product> GetOtherList(int start, int end)
        {
            List<Product> guitars = new List<Product>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = @"select RN, ID
                                      ,[Name]
                                      ,[DateImported]
                                      ,[Description]
                                      ,[TotalSold]
                                      ,[TotalLeft]
                                      ,[Image]
                                      ,[SubCategoryID]
                                      ,[MakerID]
                                      ,[Price] from
                                (SELECT Row_Number() over (order by p.ID asc) as RN, p.ID
                                      ,p.[Name]
                                      ,[DateImported]
                                      ,[Description]
                                      ,[TotalSold]
                                      ,[TotalLeft]
                                      ,[Image]
                                      ,[SubCategoryID]
                                      ,[MakerID]
                                      ,[Price]
                                  FROM [Product] p, SubCategory sub
                                  WHERE p.SubCategoryID = sub.ID AND sub.CategoryID = 2
                                  ) AS X
                                  WHERE RN between @start and @end
                                ";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.Add("@start", SqlDbType.Int).Value = start;
                    command.Parameters.Add("@end", SqlDbType.Int).Value = end;
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Product p = new Product();
                        p.SubCategory = new SubCategory();
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
                        guitars.Add(p);
                    }
                }
                return guitars;
            }
        }
        internal int GetTotalOther()
        {
            int total = -1;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = @"SELECT count(*) as total
                            FROM Product p, Category c, SubCategory sc
                            WHERE p.SubCategoryID = sc.ID and c.ID = sc.CategoryID
                            AND c.ID = 2";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        total = (int)reader["total"];
                    }
                }
            }
            return total;
        }
        public List<Models.Product> getListOtherContainString(string contain)
        {
            List<Models.Product> list = new List<Models.Product>();
            con = new SqlConnection(connectionString);
            string query = @"SELECT TOP (10) p.ID
                             ,p.Name
                              ,[DateImported]
                             ,[Description]
                             ,[TotalSold]
                             ,[TotalLeft]
                             ,[Image]
                             ,[SubCategoryID]
                             ,[MakerID]
                             ,[Price]
                            FROM Product as p inner join SubCategory as s
                         on p.SubCategoryID = s.ID  where s.CategoryID=2 and p.Name like @name";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", "%" + contain + "%");
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