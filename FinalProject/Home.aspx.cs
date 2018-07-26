﻿using System;
using System.Collections.Generic;
using FinalProject.Models;
using FinalProject.DAL;
namespace FinalProject
{
    public partial class Home : System.Web.UI.Page
    {
        public List<Product> list;
        public Product test;
        ProductDAO productDao;
        public int CurrentPage { get; set; }
        public int PageGap { get; set; } = 3;
        public int TotalPage { get; set; }
        const int PageSize = 5;
        public int TotalItems { get; set; }
        void GetTotalItems()
        {
            List<OrderDetail> orderDetails = Session["cart"] as List<OrderDetail>;
            if (orderDetails != null)
            {
                TotalItems = orderDetails.Count;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GetTotalItems();
            productDao = new ProductDAO();
            if (Request["page"] == null)
            {
                CurrentPage = 1;
            }
            else
            {
                CurrentPage = Convert.ToInt32(Request["page"]);
            }
            int start = (CurrentPage - 1) * PageSize + 1;
            int end = start + PageSize - 1;
            int totalRecords = productDao.GetTotalGuitar();
            TotalPage = totalRecords / PageSize + (totalRecords % PageSize > 0 ? 1 : 0);
            if (!IsPostBack)
            {
                list = productDao.GetGuitarList(start, end);
            }
            else
            {
                btnSearch_Click(null, null);
            }

        }
        protected void btnDetail_Click(object sender, EventArgs e)
        {

            //HyperLink1.NavigateUrl = "Details.aspx?id";
            Response.Redirect("Details.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            productDao = new ProductDAO();
            string search = txtSearch.Text.Trim();
            list = productDao.getListGuitarContainString(search);
            this.DataBind();
        }

        protected void linkLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
        }
    }
}