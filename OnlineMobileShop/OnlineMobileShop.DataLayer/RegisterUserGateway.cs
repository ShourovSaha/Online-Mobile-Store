using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace OnlineMobileShop.DataLayer
{
    public class RegisterUserGateway:CommonGateway
    {
        int affectedRows;
        public int AddUser(SqlParameter[] objDataParameter)
        {
            try
            {
                SqlCmd.CommandText = "spUserRegistration";
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.AddRange(objDataParameter);
                SqlConnection.Open();
                affectedRows = (int)SqlCmd.ExecuteScalar();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                SqlConnection.Close();
            }
            return affectedRows;
        }

    }
}
