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
    public class AddSubCatagoryManager
    {
        MainCatagory mainCatagoryobj = new MainCatagory();
        AddSubCatagoryGateway addSubCatagoryGatewayObj = new AddSubCatagoryGateway();
        public int AddSubCatagory(string[] objMainCatagoryDataParameter)
        {
            SqlParameter[] objDataParameter = new SqlParameter[3];
            objDataParameter[0] = new SqlParameter("@SubCatagoryID", SqlDbType.NVarChar);
            objDataParameter[0].Value = objMainCatagoryDataParameter[0];

            objDataParameter[1] = new SqlParameter("@SubCatagoryName", SqlDbType.NVarChar);
            objDataParameter[1].Value = objMainCatagoryDataParameter[1];

            objDataParameter[2] = new SqlParameter("@MainCatagoryID", SqlDbType.NVarChar);
            objDataParameter[2].Value = objMainCatagoryDataParameter[2];

            int result = addSubCatagoryGatewayObj.AddSubCatagory(objDataParameter);
            return result;

        }

        public List<MainCatagory> GetAllMainCatagory()
        {
            return addSubCatagoryGatewayObj.GetAllMainCatagory();
        }
        
        public List<CatagotyViewModel> BindAllMainCatagoryAndSubCatagoty()
        {
            return addSubCatagoryGatewayObj.BindAllMainCatagoryAndSubCatagoty();
            //return addSubCatagoryGatewayObj.BindAllMainCatagoryAndSubCatagoty();
        }
    }
}
