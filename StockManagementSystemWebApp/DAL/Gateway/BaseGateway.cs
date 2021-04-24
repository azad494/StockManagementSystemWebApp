using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace StockManagementSystemWebApp.DAL.Gateway
{
    public class BaseGateway
    {
        public SqlConnection Connection { get; set; }
        public SqlCommand Command { get; set; }
        public SqlDataReader Reader { get; set; }

        public BaseGateway()
        {
            string conString = WebConfigurationManager.ConnectionStrings["StockManageMentSystemDB"].ConnectionString;
            Connection = new SqlConnection(conString);
        }
    }
}