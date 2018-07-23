using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace FinalProject.DataContext
{
    public class DataConnection
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["connection"].ConnectionString;
    }
}