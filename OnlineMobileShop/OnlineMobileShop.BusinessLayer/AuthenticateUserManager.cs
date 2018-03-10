using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnlineMobileShop.EntityLayer;
using OnlineMobileShop.DataLayer;
using System.Data;
using System.Data.SqlClient;


namespace OnlineMobileShop.BusinessLayer
{
    public class AuthenticateUserManager
    {
        AuthenticateUsergateway authenticateUsergatewayObj = new DataLayer.AuthenticateUsergateway();
        public int AuthenticateUser(string[] loginData)
        {
            SqlParameter[] objDataParameter = new SqlParameter[2];

            objDataParameter[0] = new SqlParameter("@UserID", SqlDbType.NVarChar);
            objDataParameter[0].Value = loginData[0];

            objDataParameter[1] = new SqlParameter("@Password", SqlDbType.NVarChar);
            objDataParameter[1].Value = loginData[1];

            int result = authenticateUsergatewayObj.AuthenticateUser(objDataParameter);
            return result;
        }

        public int AuthenticateAdmin(string[] loginData)
        {
            SqlParameter[] objDataParameter = new SqlParameter[2];

            objDataParameter[0] = new SqlParameter("@AdminID", SqlDbType.NVarChar);
            objDataParameter[0].Value = loginData[0];

            objDataParameter[1] = new SqlParameter("@AdminPassword", SqlDbType.NVarChar);
            objDataParameter[1].Value = loginData[1];

            int result = authenticateUsergatewayObj.AuthenticateAdmin(objDataParameter);
            return result;
        }
    }
}
