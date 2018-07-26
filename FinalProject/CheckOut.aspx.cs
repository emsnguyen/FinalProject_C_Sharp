using FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class CheckOut : System.Web.UI.Page
    {
        List<OrderDetail> items;
        protected void Page_Load(object sender, EventArgs e)
        {
            _loadData();
            double total = 0;
            if (items != null)
            {
                foreach (OrderDetail item in items)
                {
                    total += item.Total;
                }
                totalLabel.Text = Convert.ToString(total) + " VND";
            } else
            {
                totalLabel.Text = "0 VND";
            }
        }

        private void _loadData()
        {
            DataTable t = new DataTable();
            t.Columns.Add("productID", typeof(int));
            t.Columns.Add("productName", typeof(string));
            t.Columns.Add("quantity", typeof(int));
            t.Columns.Add("total", typeof(double));
            items = (List<OrderDetail>)Session["cart"];
            if (items != null)
            {
                if (items.Count != 0)
                {
                    foreach (OrderDetail item in items)
                    {
                        t.Rows.Add(item.Product.ID, item.Product.Name, item.Quantity, item.Total);
                    }
                }
            }
            GridView1.DataSource = t;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int productId = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[1].Text);
            int index = 0;
            foreach(OrderDetail item in items)
            {
                if(item.Product.ID == productId)
                {
                    break;
                }
                index++;
            }
            items.RemoveAt(index);
            Session["cart"] = items;
            Response.Redirect("CheckOut.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(items.Count == 0)
            {
                Button1.Enabled = false;
            } else
            {
                Response.Redirect("OrderInformation.aspx");
            }
        }
    }
}