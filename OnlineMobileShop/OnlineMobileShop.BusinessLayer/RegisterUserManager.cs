using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using OnlineMobileShop.EntityLayer;
using OnlineMobileShop.DataLayer;

namespace OnlineMobileShop.BusinessLayer
{
    public class RegisterUserManager
    {
        User1 userObj = new User1();
        RegisterUserGateway registerUserGateway = new RegisterUserGateway();

        public int AddUser(User1 userObj)
        {
            SqlParameter[] objDataParameter = new SqlParameter[5];
            objDataParameter[0] = new SqlParameter("@UserID", SqlDbType.NVarChar);
            objDataParameter[0].Value = userObj.UserID;

            objDataParameter[1] = new SqlParameter("@FirstName", SqlDbType.NVarChar);
            objDataParameter[1].Value = userObj.FirstName;

            objDataParameter[2] = new SqlParameter("@LastName", SqlDbType.NVarChar);
            objDataParameter[2].Value = userObj.LastName;

            objDataParameter[3] = new SqlParameter("@Email", SqlDbType.NVarChar);
            objDataParameter[3].Value = userObj.Email;

            objDataParameter[4] = new SqlParameter("@Password", SqlDbType.NVarChar);
            objDataParameter[4].Value = userObj.Password;

            int result = registerUserGateway.AddUser(objDataParameter);
            return result;
            
        }
    }
}
