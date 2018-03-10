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
    public class AddManufacturerManager
    {
        AddManufacturerGateway addManufacturerGatewayObj = new AddManufacturerGateway();

        public int AddManufacturer(string[] objManufacturerDataParameter)
        {
            SqlParameter[] objDataParameter = new SqlParameter[2];
            objDataParameter[0] = new SqlParameter("@ManufacturersID", SqlDbType.NVarChar);
            objDataParameter[0].Value = objManufacturerDataParameter[0];

            objDataParameter[1] = new SqlParameter("@ManufacturersName", SqlDbType.NVarChar);
            objDataParameter[1].Value = objManufacturerDataParameter[1];

            int result = addManufacturerGatewayObj.AddManufacturer(objDataParameter);
            return result;

        }

        public List<Manufacturers> BindAllManufacturers()
        {
            return addManufacturerGatewayObj.BindAllManufacturers();
        }
    }
}
