using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace OnlineMobileShop.DAL
{
    public class CommonGateway
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["OnlineMobileStoreDB"].ConnectionString;
        public SqlConnection Connection { get; set; }
        public SqlCommand SqlCmd { get; set; }

        public CommonGateway()
        {
            Connection = new SqlConnection(connectionString);
            SqlCmd = new SqlCommand();
            SqlCmd.Connection = Connection;
        }
    }
}