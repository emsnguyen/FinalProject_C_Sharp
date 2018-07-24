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
    }
}