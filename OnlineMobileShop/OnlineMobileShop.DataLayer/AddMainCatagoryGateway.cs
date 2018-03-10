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
    public class AddMainCatagoryGateway:CommonGateway
    {
        int affectedRows;
        public int AddMainCatagory(SqlParameter[] objDataParameter)
        {
            using (SqlConnection)
            {
                SqlCmd.CommandText = "spAddMainCatagory";
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.AddRange(objDataParameter);
                SqlConnection.Open();
                affectedRows = (int)SqlCmd.ExecuteScalar();
            }
            return affectedRows;
        }

        public List<MainCatagory> BindAllMainCatagory()
        {
            SqlConnection.Close();
            List<MainCatagory> mainCatagoryListObj = new List<MainCatagory>();
            using (SqlConnection)
            {
                SqlCmd.CommandText = "select CatagoryID, CatagoryName from Table_Catagory";
                SqlConnection.Open();
                //SqlConnection.Open();
                SqlDataReader sqldataReaderObj = SqlCmd.ExecuteReader();
                if (sqldataReaderObj.HasRows)
                {
                    Int16 serial = 0;
                    while (sqldataReaderObj.Read())
                    {
                        MainCatagory mainCatagoryObj = new MainCatagory();
                        mainCatagoryObj.SerialID = ++serial;
                        mainCatagoryObj.CatagoryID = sqldataReaderObj["CatagoryID"].ToString();
                        mainCatagoryObj.CatagoryName = sqldataReaderObj["CatagoryName"].ToString();

                        mainCatagoryListObj.Add(mainCatagoryObj);
                    }
                }
                sqldataReaderObj.Close();
            }
            return mainCatagoryListObj;
        }

    }
}

//============
//try
//    {
//        SqlCmd.CommandText = "spAddMainCatagory";
//        SqlCmd.CommandType = CommandType.StoredProcedure;
//        SqlCmd.Parameters.AddRange(objDataParameter);
//        SqlConnection.Open();
//        affectedRows = (int)SqlCmd.ExecuteScalar();
//    }
//    catch (Exception ex)
//    {

//    }
//    finally
//    {
//        SqlConnection.Close();
//    }
//return affectedRows;
