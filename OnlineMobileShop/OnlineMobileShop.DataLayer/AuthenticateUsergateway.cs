using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//using OnlineMobileShop.EntityLayer;
using System.Data;
using System.Data.SqlClient;

namespace OnlineMobileShop.DataLayer
{
    public class AuthenticateUsergateway:CommonGateway
    {
        int affectedRows;
        public int AuthenticateUser(SqlParameter[] objDataParameter)
        {
            try
            {
                SqlCmd.CommandText = "spUserLogin";
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


        public int AuthenticateAdmin(SqlParameter[] objDataParameter)
        {
            try
            {
                SqlCmd.CommandText = "spAdminLogin";
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
