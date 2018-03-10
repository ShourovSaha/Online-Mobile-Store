
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineMobileShop.DataLayer
{
    public class CommonGateway
    {
        private string dbConnectionString = ConfigurationManager.ConnectionStrings["OnlineMobileStoreDBConnectionString"].ConnectionString;
        public SqlConnection SqlConnection { get; set; }
        public SqlCommand SqlCmd { get; set; }

        public CommonGateway()
        {
            SqlConnection = new SqlConnection(dbConnectionString);
            SqlCmd = new SqlCommand();
            SqlCmd.Connection = SqlConnection;
        }

    }
}
