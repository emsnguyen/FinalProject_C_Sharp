using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FinalProject.DAL
{
    public class UserDAO : BaseDAO
    {
        public User IsExist(string username, string password)
        {
            User u = new User();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "Select * From [User] Where Username = @username " +
                    " And Password = @password";
                connection.Open();
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        u.ID = Convert.ToInt32(dr["ID"].ToString());
                        u.IsAdmin = Convert.ToBoolean(dr["IsAdmin"]);
                        u.UserName = dr["UserName"].ToString();
                        return u;
                    }
                    return null;
                }

            }

        }
    }
}