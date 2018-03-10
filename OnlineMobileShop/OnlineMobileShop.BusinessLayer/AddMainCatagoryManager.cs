using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using OnlineMobileShop.DataLayer;
using OnlineMobileShop.EntityLayer;

namespace OnlineMobileShop.BusinessLayer
{
    public class AddMainCatagoryManager
    {
        AddMainCatagoryGateway addMainCatagoryGatewayObj = new AddMainCatagoryGateway();
        
        public int AddMainCatagory(string[] objMainCatagoryDataParameter)
        {
            SqlParameter[] objDataParameter = new SqlParameter[2];
            objDataParameter[0] = new SqlParameter("@CatagoryID", SqlDbType.NVarChar);
            objDataParameter[0].Value = objMainCatagoryDataParameter[0];

            objDataParameter[1] = new SqlParameter("@CatagoryName", SqlDbType.NVarChar);
            objDataParameter[1].Value = objMainCatagoryDataParameter[1];

            int result = addMainCatagoryGatewayObj.AddMainCatagory(objDataParameter);
            return result;

        }

        public List<MainCatagory> BindAllMainCatagory()
        {
            return addMainCatagoryGatewayObj.BindAllMainCatagory();
        }
    }
}
