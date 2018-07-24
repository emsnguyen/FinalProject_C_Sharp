using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
	public partial class ViewOrders : System.Web.UI.Page
	{
		string connectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{
			LoadOrders();
		}
		void LoadOrders()
		{
			using (SqlConnection connection = new SqlConnection(connectionString))
			{
				connection.Open();
				string query = @"SELECT o.[ID]
									  ,[UserID]
									  ,[OrderDate]
									  ,[DeliveredDate]
									  ,[DueDate]
									  ,[Total]
									  ,op.PaymentStatus, pm.PaymentMethod
								  FROM [Order] o, Order_Pay op, PaymentMethod pm
								  WHERE o.ID = op.OrderID AND pm.ID = op.PaymentMethodID";
				using (SqlCommand command = new SqlCommand(query, connection))
				{
					SqlDataAdapter da = new SqlDataAdapter(command);
					DataTable dt = new DataTable();
					da.Fill(dt);
					CommandField cf = new CommandField();
					cf.ButtonType = ButtonType.Button;
					cf.ShowEditButton = true;
					cf.EditText = "Edit Payment Status";
					gvOrders.DataSource = dt;
					//gvOrders.Columns.Add(cf);
					gvOrders.DataBind();

				}
			}
		}
		void FilterByDate()
		{

		}
		void FilterByCustomer()
		{

		}
		void FilterByPaymentStatus()
		{

		}
		protected void gvOrders_SelectedIndexChanged(object sender, EventArgs e)
		{

		}
	}
}