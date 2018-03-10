using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using OnlineMobileShop.EntityLayer;

namespace OnlineMobileShop.DataLayer
{
    public class AddManufacturerGateway:CommonGateway
    {
        public List<Manufacturers> BindAllManufacturers()
        {
            List<Manufacturers> manufacturersListObj = new List<Manufacturers>();
            using (SqlConnection)
            {
                SqlCmd.CommandText = "select ManufacturersID, ManufacturersName from Table_Manufacturers";
                SqlConnection.Open();
                SqlDataReader sqlDataReaderObj = SqlCmd.ExecuteReader();
                if (sqlDataReaderObj.HasRows)
                {
                    Int16 serial = 0;
                    while (sqlDataReaderObj.Read())
                    {
                        Manufacturers manufacturerObj = new Manufacturers();
                        manufacturerObj.SerialID = ++serial;
                        manufacturerObj.ManufacturerID = sqlDataReaderObj["ManufacturersID"].ToString();
                        manufacturerObj.ManufacturerName = sqlDataReaderObj["ManufacturersName"].ToString();

                        manufacturersListObj.Add(manufacturerObj);
                    }
                }
                sqlDataReaderObj.Close();
            }

            return manufacturersListObj;
        }



        int affectedRows;
        public int AddManufacturer(SqlParameter[] objDataParameter)
        {
            using (SqlConnection)
            {
                SqlCmd.CommandText = "spAddManufactures";
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.AddRange(objDataParameter);
                SqlConnection.Open();
                affectedRows = (int)SqlCmd.ExecuteScalar();

                //SqlConnection.Close();

            }

                //try
                //{
                //    SqlCmd.CommandText = "spAddManufacture";
                //    SqlCmd.CommandType = CommandType.StoredProcedure;
                //    SqlCmd.Parameters.AddRange(objDataParameter);
                //    SqlConnection.Open();
                //    affectedRows = (int)SqlCmd.ExecuteScalar();
                //}
                //catch (Exception ex)
                //{

                //}
                //finally
                //{
                //    SqlConnection.Close();
                //}
            return affectedRows;
        }
    }
}
