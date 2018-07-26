using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Transaction : System.Web.UI.Page
    {
        public string image;
        public string width;
        public string height;
        protected void Page_Load(object sender, EventArgs e)
        {
            Timer1.Enabled = true;
            image = "images/money.png";
            width = "500px";
            height = "300px";
            TransactionLabel.Text = "Processing Money Transaction...";
            Timer1.Interval = 5000;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            image = "images/check-mark-icon.png";
            width = "300px";
            height = "300px";
            TransactionLabel.Text = "Money Transferred Successfully!";
            Timer1.Enabled = false;
            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "5;url=OrderSuccessPage.aspx";
            this.Page.Controls.Add(meta);
        }
    }
}