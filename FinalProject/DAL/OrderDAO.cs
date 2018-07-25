using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace FinalProject.DAL
{
    public class OrderDAO : BaseDAO
    {
        public List<Order> GetAll()
        {
            List<Order> orders = new List<Order>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = @"SELECT o.[ID] OrderID
									  ,[UserID]
									  ,[OrderDate] 
									  ,[Total]
									  ,pm.PaymentMethod, op.PaymentStatus
								  FROM [Order] o, Order_Pay op, PaymentMethod pm
								  WHERE o.ID = op.OrderID AND pm.ID = op.PaymentMethodID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Order o = new Order();
                        int orderID = (int)reader["OrderID"];
                        int userID = (int)reader["UserID"];
                        DateTime orderedDate = (DateTime)reader["OrderDate"];
                        double total = Convert.ToDouble(reader["Total"]);
                        string paymentMethod = (string)reader["PaymentMethod"];
                        bool paymentStatus = (bool)reader["PaymentStatus"];
                        o.OrderDate = orderedDate;
                        o.UserID = userID;
                        o.Order_Pay.Add(new Order_Pay
                        {
                            OrderID = orderID,
                            PaymentMethod = new PaymentMethod { PaymentMethod1 = paymentMethod }
                        });
                        o.Total = total;
                        orders.Add(o);
                    }
                    return orders;
                }
            }
        }

        public void insertOrder(Order order)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query = @"insert into [Order] values(@userid,@orderdate,@deliverdate,@duedate,@total)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@userid", order.UserID);
            cmd.Parameters.AddWithValue("@orderdate", order.OrderDate);
            cmd.Parameters.AddWithValue("@deliverdate", order.DeliveredDate);
            cmd.Parameters.AddWithValue("@duedate", order.DueDate);
            cmd.Parameters.AddWithValue("@total", order.Total);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void inserOrderDetail(OrderDetail orderDetail)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query = @"insert into OrderDetail values(@orderid,@productid,@quantity,@total)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@orderid", orderDetail.OrderID);
            cmd.Parameters.AddWithValue("@productid", orderDetail.ProductID);
            cmd.Parameters.AddWithValue("@quantity", orderDetail.Quantity);
            cmd.Parameters.AddWithValue("@total", orderDetail.Total);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //check exist product in cart

    }
}