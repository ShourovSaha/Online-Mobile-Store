using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using OnlineMobileShop.EntityLayer;
//using OnlineMobileShop.ViewLayer;

namespace OnlineMobileShop.DataLayer
{
    public class AddSubCatagoryGateway : CommonGateway
    {
        public List<CatagotyViewModel> BindAllMainCatagoryAndSubCatagoty()
        {
            List<CatagotyViewModel> catagoryViewModelListObj = new List<CatagotyViewModel>();
            //try
            //{
            using (SqlConnection)
            {
                SqlCmd.CommandText = "select *from vwCatagoryWithSubCatagory";
                SqlConnection.Open();
                SqlDataReader sqlDataReaderObj = SqlCmd.ExecuteReader();
                if (sqlDataReaderObj.HasRows)
                {
                    Int16 serial = 0;
                    while (sqlDataReaderObj.Read())
                    {
                        CatagotyViewModel catagoryViewModelObj = new CatagotyViewModel();
                        catagoryViewModelObj.SerialID = ++serial;
                        catagoryViewModelObj.SubCatagoryID = sqlDataReaderObj["SubCatagoryID"].ToString();
                        catagoryViewModelObj.SubCatagoryName = sqlDataReaderObj["SubCatagoryName"].ToString();
                        catagoryViewModelObj.MainCatagoryID = sqlDataReaderObj["CatagoryID"].ToString();
                        catagoryViewModelObj.MainCatagoryName = sqlDataReaderObj["CatagoryName"].ToString();

                        catagoryViewModelListObj.Add(catagoryViewModelObj);
                    }
                }
                sqlDataReaderObj.Close();
            }
            return catagoryViewModelListObj;
        }
        //catch (Exception ex)
        //{

        //}
        //finally
        //{
        //    SqlConnection.Close();
        //}




        int affectedRows;
        public int AddSubCatagory(SqlParameter[] objDataParameter)
        {
            try
            {
                SqlCmd.CommandText = "spAddSubCatagory";
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.AddRange(objDataParameter);
                SqlConnection.Open();
                affectedRows = (int)SqlCmd.ExecuteScalar();
            }
            catch(Exception ex)
            {

            }
            finally
            {
                SqlConnection.Close();
            }

            //using (SqlConnection)
            //{
            //    SqlCmd.CommandText = "spAddSubCatagory";
            //    SqlCmd.CommandType = CommandType.StoredProcedure;
            //    SqlCmd.Parameters.AddRange(objDataParameter);
            //    SqlConnection.Open();
            //    affectedRows = (int)SqlCmd.ExecuteScalar();
            //}
            return affectedRows;


            //try
            //{
            //    SqlCmd.CommandText = "spAddSubCatagory";
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
            //return affectedRows;
        }

        public List<MainCatagory> GetAllMainCatagory()
        {
            List<MainCatagory> mainCatagoryListObj = new List<MainCatagory>();
            using (SqlConnection)
            {
                SqlCmd.CommandText = "select CatagoryID, CatagoryName from Table_Catagory";
                SqlConnection.Open();
                SqlDataReader sqldataReaderObj = SqlCmd.ExecuteReader();

                if (sqldataReaderObj.HasRows)
                {
                    while (sqldataReaderObj.Read())
                    {
                        MainCatagory mainCatagoryObj = new MainCatagory();
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


//==============
//    List<MainCatagory> mainCatagoryListObj = new List<MainCatagory>();
//SqlCmd.CommandText = "select * from Table_Catagory";
//SqlConnection.Open();
//SqlDataReader sqldataReaderObj = SqlCmd.ExecuteReader();
//if (sqldataReaderObj.HasRows)
//{
//    MainCatagory mainCatagoryObj = new MainCatagory();
//    mainCatagoryObj.ID = (int)sqldataReaderObj["ID"];
//    mainCatagoryObj.CatagoryID = sqldataReaderObj["SubCatagoryID"].ToString();
//    mainCatagoryObj.CatagoryName = sqldataReaderObj["SubCatagoryName"].ToString();

//    mainCatagoryListObj.Add(mainCatagoryObj);
//}

//sqldataReaderObj.Close();
//SqlConnection.Close();
//return mainCatagoryListObj;


//try
//{
//    SqlCmd.CommandText = "select * from Table_Catagory";
//    SqlConnection.Open();
//    SqlDataReader sqldataReaderObj = SqlCmd.ExecuteReader();

//    if (sqldataReaderObj.HasRows)
//    {
//        MainCatagory mainCatagoryObj = new MainCatagory();
//        mainCatagoryObj.ID = (int)sqldataReaderObj["ID"];
//        mainCatagoryObj.CatagoryID = sqldataReaderObj["SubCatagoryID"].ToString();
//        mainCatagoryObj.CatagoryName = sqldataReaderObj["SubCatagoryName"].ToString();

//        mainCatagoryListObj.Add(mainCatagoryObj);
//    }

//    sqldataReaderObj.Close();
//}
//catch (Exception ex)
//{
//    Console.WriteLine("SQL Error IS : " + ex.ToString());
//}
//finally
//{
//    SqlConnection.Close();
//}

//return mainCatagoryListObj;
