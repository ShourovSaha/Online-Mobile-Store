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
    public class AddNewProductGateway : CommonGateway
    {
        public int AddNewProduct(SqlParameter[] objDataParameter)
        {
            int affectedRows = 0;
            //using (SqlConnection)
            //{
            try
            {
                SqlCmd.CommandText = "spAddNewproduct";
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
            //}
            return affectedRows;

        }


        //public int SaveProductImage(string imageID, string extention, string productID)
        //{
        //    int affectedRows;
        //    using (SqlConnection)
        //    {
        //        SqlCmd.CommandText = "insert into Table_ProductImageInfo(ProductImageID, ProductImageNameExtention, ProductID) values('" + imageID + "', '" + extention + "', '" + productID + "')";
        //        SqlConnection.Open();
        //        affectedRows = (int)SqlCmd.ExecuteNonQuery();
        //    }
        //    //SqlConnection.Close();
        //    return affectedRows;
        //}

        public int SaveProductImage(SqlParameter[] objDataParameter)//Problem Here !!!
        {
            int affectedRows;
            using (SqlConnection)
            {
                SqlCmd.CommandText = "spAddImageIDandExtextion";
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.AddRange(objDataParameter);
                SqlConnection.Open();
                affectedRows = (int)SqlCmd.ExecuteScalar();
                //SqlConnection.Close();
            }
            //SqlConnection.Close();
            return affectedRows;
        }

        public List<SubCatagory> BindSubCatagoryAccordingToSelectedMainCatagory(string selectedMainCatagoryID)
        {
            List<SubCatagory> subCatagoryListObj = new List<SubCatagory>();
            using (SqlConnection)
            {
                SqlCmd.CommandText = "select SubCatagoryID, SubCatagoryName from Table_SubCatagory where MainCatagoryID = '" + selectedMainCatagoryID + "'";
                SqlConnection.Open();
                SqlDataReader sqlDataReaderObj = SqlCmd.ExecuteReader();

                if (sqlDataReaderObj.HasRows)
                {
                    while (sqlDataReaderObj.Read())
                    {
                        SubCatagory subCatagoryObj = new SubCatagory();

                        subCatagoryObj.SubCatagoryID = sqlDataReaderObj["SubCatagoryID"].ToString();
                        subCatagoryObj.SubCatagoryName = sqlDataReaderObj["SubCatagoryName"].ToString();

                        subCatagoryListObj.Add(subCatagoryObj);
                    }
                }
                sqlDataReaderObj.Close();
            }
            return subCatagoryListObj;
        }

        public List<Manufacturers> BindAllManufacturers()
        {
            List<Manufacturers> manufacturersListObj = new List<Manufacturers>();
            try
            {
                SqlCmd.CommandText = "select ManufacturersID, ManufacturersName from Table_Manufacturers";
                SqlConnection.Open();
                SqlDataReader sqldataReaderObj = SqlCmd.ExecuteReader();
                if (sqldataReaderObj.HasRows)
                {
                    while (sqldataReaderObj.Read())
                    {
                        Manufacturers manufacturersObj = new Manufacturers();
                        //manufacturersObj.ID = (int)sqldataReaderObj["ID"];
                        manufacturersObj.ManufacturerID = sqldataReaderObj["ManufacturersID"].ToString();
                        manufacturersObj.ManufacturerName = sqldataReaderObj["ManufacturersName"].ToString();

                        manufacturersListObj.Add(manufacturersObj);
                    }

                }
                sqldataReaderObj.Close();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                SqlConnection.Close();
            }
            return manufacturersListObj;
        }



        public List<MainCatagory> BindAllMainCatagory()
        {
            List<MainCatagory> mainCatagoryListObj = new List<MainCatagory>();
            try
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
            catch (Exception ex)
            {

            }
            finally
            {
                SqlConnection.Close();
            }

            return mainCatagoryListObj;
        }


        public List<ProductViewThumbnail> BindAllProducts()//====
        {
            List<ProductViewThumbnail> productViewThumbnailListObj = new List<ProductViewThumbnail>();
            //using (SqlConnection)
            try
            {
                SqlCmd.CommandText = "spSelectProductsViewInfo";
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlConnection.Open();
                SqlDataReader sqldataReaderObj = SqlCmd.ExecuteReader();
                if (sqldataReaderObj.HasRows)
                {
                    while (sqldataReaderObj.Read())
                    {
                        ProductViewThumbnail productViewThumbnailObj = new ProductViewThumbnail();

                        productViewThumbnailObj.ProductID = sqldataReaderObj["ProductID"].ToString();
                        productViewThumbnailObj.ManufacturerID = sqldataReaderObj["ManufacturersName"].ToString();
                        productViewThumbnailObj.ProductPrice = (int)sqldataReaderObj["ProductPrice"];
                        productViewThumbnailObj.ProductDiscountPrice = (int)sqldataReaderObj["ProductDiscountPrice"];
                        productViewThumbnailObj.ProductImageID = sqldataReaderObj["ProductImageID"].ToString();
                        productViewThumbnailObj.ProductImageNameExtention = sqldataReaderObj["ProductImageNameExtention"].ToString();
                        //productViewThumbnailObj.ProductID = sqldataReaderObj["ProductID"].ToString();

                        productViewThumbnailListObj.Add(productViewThumbnailObj);
                    }
                }
                sqldataReaderObj.Close();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                SqlConnection.Close();
            }

            return productViewThumbnailListObj;

        }


        //Bind all smart phones 
        public List<ProductViewThumbnail> BindSmartPhones()
        {
            List<ProductViewThumbnail> productViewThumbnailListObj = new List<ProductViewThumbnail>();
            //using (SqlConnection)
            try
            {
                SqlCmd.CommandText = "spSelectProductsViewInfoSmartPhone";
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlConnection.Open();
                SqlDataReader sqldataReaderObj = SqlCmd.ExecuteReader();
                if (sqldataReaderObj.HasRows)
                {
                    while (sqldataReaderObj.Read())
                    {
                        ProductViewThumbnail productViewThumbnailObj = new ProductViewThumbnail();

                        productViewThumbnailObj.ProductID = sqldataReaderObj["ProductID"].ToString();
                        productViewThumbnailObj.ManufacturerID = sqldataReaderObj["ManufacturersName"].ToString();
                        productViewThumbnailObj.ProductPrice = (int)sqldataReaderObj["ProductPrice"];
                        productViewThumbnailObj.ProductDiscountPrice = (int)sqldataReaderObj["ProductDiscountPrice"];
                        productViewThumbnailObj.ProductImageID = sqldataReaderObj["ProductImageID"].ToString();
                        productViewThumbnailObj.ProductImageNameExtention = sqldataReaderObj["ProductImageNameExtention"].ToString();
                        //productViewThumbnailObj.ProductID = sqldataReaderObj["ProductID"].ToString();

                        productViewThumbnailListObj.Add(productViewThumbnailObj);
                    }
                }
                sqldataReaderObj.Close();
            }
            catch(Exception ex)
            {

            }
            finally
            {
                SqlConnection.Close();
            }

            return productViewThumbnailListObj;

        }


        //Bind all Feature phones 
        public List<ProductViewThumbnail> BindFeaturePhones()
        {
            List<ProductViewThumbnail> productViewThumbnailListObj = new List<ProductViewThumbnail>();
            //using (SqlConnection)
            try
            {
                SqlCmd.CommandText = "spSelectProductsViewInfoFeaturePhone";
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlConnection.Open();
                SqlDataReader sqldataReaderObj = SqlCmd.ExecuteReader();
                if (sqldataReaderObj.HasRows)
                {
                    while (sqldataReaderObj.Read())
                    {
                        ProductViewThumbnail productViewThumbnailObj = new ProductViewThumbnail();

                        productViewThumbnailObj.ProductID = sqldataReaderObj["ProductID"].ToString();
                        productViewThumbnailObj.ManufacturerID = sqldataReaderObj["ManufacturersName"].ToString();
                        productViewThumbnailObj.ProductPrice = (int)sqldataReaderObj["ProductPrice"];
                        productViewThumbnailObj.ProductDiscountPrice = (int)sqldataReaderObj["ProductDiscountPrice"];
                        productViewThumbnailObj.ProductImageID = sqldataReaderObj["ProductImageID"].ToString();
                        productViewThumbnailObj.ProductImageNameExtention = sqldataReaderObj["ProductImageNameExtention"].ToString();
                        //productViewThumbnailObj.ProductID = sqldataReaderObj["ProductID"].ToString();

                        productViewThumbnailListObj.Add(productViewThumbnailObj);
                    }
                }
                sqldataReaderObj.Close();
            }
            catch(Exception ex)
            {

            }
            finally
            {
                SqlConnection.Close();
            }

            return productViewThumbnailListObj;
        }
        //333333333333333
        public List<ProductViewThumbnail> BindAllProductInfo()
        {
            List<ProductViewThumbnail> productDetailViewListtObj = new List<ProductViewThumbnail>();
            try
            {
                SqlCmd.CommandText = "spSelectProductsViewInfo";
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlConnection.Open();
                SqlDataReader sqldataReaderObj = SqlCmd.ExecuteReader();
                if (sqldataReaderObj.HasRows)
                {
                    while (sqldataReaderObj.Read())
                    {
                        ProductViewThumbnail productDetailViewThumbnailObj = new ProductViewThumbnail();

                        productDetailViewThumbnailObj.ProductID = sqldataReaderObj["ProductID"].ToString();
                        productDetailViewThumbnailObj.ManufacturerID = sqldataReaderObj["ManufacturersName"].ToString();
                        productDetailViewThumbnailObj.ProductPrice = (int)sqldataReaderObj["ProductPrice"];
                        productDetailViewThumbnailObj.ProductDiscountPrice = (int)sqldataReaderObj["ProductDiscountPrice"];
                        productDetailViewThumbnailObj.ProductImageID = sqldataReaderObj["ProductImageID"].ToString();
                        productDetailViewThumbnailObj.ProductImageNameExtention = sqldataReaderObj["ProductImageNameExtention"].ToString();
                        productDetailViewThumbnailObj.RAM = sqldataReaderObj["RAM"].ToString();
                        productDetailViewThumbnailObj.CPU = sqldataReaderObj["CPU"].ToString();
                        productDetailViewThumbnailObj.Chipset = sqldataReaderObj["Chipset"].ToString();
                        productDetailViewThumbnailObj.PrimaryCamera = sqldataReaderObj["PrimaryCamera"].ToString();
                        productDetailViewThumbnailObj.SecondryCamera = sqldataReaderObj["SecondryCamera"].ToString();
                        productDetailViewThumbnailObj.OS = sqldataReaderObj["OS"].ToString();
                        productDetailViewThumbnailObj.ProductColor = sqldataReaderObj["ProductColor"].ToString();
                        productDetailViewThumbnailObj.ProductFreeDeliveryStatus = sqldataReaderObj["ProductFreeDeliveryStatus"].ToString();
                        productDetailViewThumbnailObj.Product30DaysReturnStatus = sqldataReaderObj["Product30DaysReturnStatus"].ToString();
                        productDetailViewThumbnailObj.ProductQuantity = sqldataReaderObj["ProductQuantity"].ToString();

                        productDetailViewListtObj.Add(productDetailViewThumbnailObj);
                    }
                }
                sqldataReaderObj.Close();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                SqlConnection.Close();
            }
            return productDetailViewListtObj;
        }


        public List<ProductViewThumbnail> BindProductInfoAndImageByID(string productID)// cart, Product detail View 
        {
            List<ProductViewThumbnail> productDetailViewListtObj = new List<ProductViewThumbnail>();
            //int cartTotalPrice = 0;
            //int discountTotalPrice = 0;
            //int totalPrice = 0;
            using (SqlConnection)
            //try
            {
                SqlCmd.CommandText = "spProductDetailsByProductID";
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.AddWithValue("@ProductID", productID);
                SqlConnection.Open();
                SqlDataReader sqldataReaderObj = SqlCmd.ExecuteReader();
                if (sqldataReaderObj.HasRows)
                {
                    while (sqldataReaderObj.Read())
                    {
                        ProductViewThumbnail productDetailViewThumbnailObj = new ProductViewThumbnail();

                        productDetailViewThumbnailObj.ProductID = sqldataReaderObj["ProductID"].ToString();
                        productDetailViewThumbnailObj.ManufacturerID = sqldataReaderObj["ManufacturerID"].ToString();
                        productDetailViewThumbnailObj.ProductPrice = (int)sqldataReaderObj["ProductPrice"];
                        productDetailViewThumbnailObj.ProductDiscountPrice = (int)sqldataReaderObj["ProductDiscountPrice"];
                        productDetailViewThumbnailObj.RAM = sqldataReaderObj["RAM"].ToString();
                        productDetailViewThumbnailObj.CPU = sqldataReaderObj["CPU"].ToString();
                        productDetailViewThumbnailObj.Chipset = sqldataReaderObj["Chipset"].ToString();
                        productDetailViewThumbnailObj.PrimaryCamera = sqldataReaderObj["PrimaryCamera"].ToString();
                        productDetailViewThumbnailObj.SecondryCamera = sqldataReaderObj["SecondryCamera"].ToString();
                        productDetailViewThumbnailObj.OS = sqldataReaderObj["OS"].ToString();
                        productDetailViewThumbnailObj.ProductColor = sqldataReaderObj["ProductColor"].ToString();
                        productDetailViewThumbnailObj.ProductFreeDeliveryStatus = sqldataReaderObj["ProductFreeDeliveryStatus"].ToString();
                        productDetailViewThumbnailObj.Product30DaysReturnStatus = sqldataReaderObj["Product30DaysReturnStatus"].ToString();
                        productDetailViewThumbnailObj.ProductQuantity = sqldataReaderObj["ProductQuantity"].ToString();
                        productDetailViewThumbnailObj.ProductImageID = sqldataReaderObj["ProductImageID"].ToString();
                        productDetailViewThumbnailObj.ProductImageNameExtention = sqldataReaderObj["ProductImageNameExtention"].ToString();
                        
                        //cartTotalPrice += (int)sqldataReaderObj["ProductPrice"];
                        //discountTotalPrice += (int)sqldataReaderObj["ProductDiscountPrice"];

                        //totalPrice = cartTotalPrice - discountTotalPrice;

                        //productDetailViewThumbnailObj.TotalCartPrice = cartTotalPrice;
                        //productDetailViewThumbnailObj.TotalDiscountDiscountPrice = discountTotalPrice;
                        //productDetailViewThumbnailObj.TotalPrice = totalPrice;

                        productDetailViewListtObj.Add(productDetailViewThumbnailObj);
                    }
                }
                sqldataReaderObj.Close();
            }
            //catch (Exception ex)
            //{

            //}
            //finally
            //{
            //    SqlConnection.Close();
            //}
            return productDetailViewListtObj;
        }





        //public List<ProductViewThumbnail> BindProductInfoByID(string productID)
        //{
        //    List<ProductViewThumbnail> productDetailViewListtObj = new List<ProductViewThumbnail>();
        //    using (SqlConnection)
        //    {
        //        SqlCmd.CommandText = "spBindProductInfo";
        //        SqlCmd.CommandType = CommandType.StoredProcedure;
        //        SqlCmd.Parameters.AddWithValue("@ProductID", productID);
        //        SqlConnection.Open();
        //        SqlDataReader sqldataReaderObj = SqlCmd.ExecuteReader();
        //        if (sqldataReaderObj.HasRows)
        //        {
        //            while (sqldataReaderObj.Read())
        //            {
        //                ProductViewThumbnail productDetailViewThumbnailObj = new ProductViewThumbnail();

        //                productDetailViewThumbnailObj.ProductID = sqldataReaderObj["ProductID"].ToString();
        //                productDetailViewThumbnailObj.ManufacturerID = sqldataReaderObj["ManufacturerID"].ToString();
        //                productDetailViewThumbnailObj.ProductPrice = (int)sqldataReaderObj["ProductPrice"];
        //                productDetailViewThumbnailObj.ProductDiscountPrice = (int)sqldataReaderObj["ProductDiscountPrice"];
        //                productDetailViewThumbnailObj.RAM = sqldataReaderObj["RAM"].ToString();
        //                productDetailViewThumbnailObj.CPU = sqldataReaderObj["CPU"].ToString();
        //                productDetailViewThumbnailObj.Chipset = sqldataReaderObj["Chipset"].ToString();
        //                productDetailViewThumbnailObj.PrimaryCamera = sqldataReaderObj["PrimaryCamera"].ToString();
        //                productDetailViewThumbnailObj.SecondryCamera = sqldataReaderObj["SecondryCamera"].ToString();
        //                productDetailViewThumbnailObj.OS = sqldataReaderObj["OS"].ToString();
        //                productDetailViewThumbnailObj.ProductColor = sqldataReaderObj["ProductColor"].ToString();
        //                productDetailViewThumbnailObj.ProductFreeDeliveryStatus = sqldataReaderObj["ProductFreeDeliveryStatus"].ToString();
        //                productDetailViewThumbnailObj.Product30DaysReturnStatus = sqldataReaderObj["Product30DaysReturnStatus"].ToString();
        //                productDetailViewThumbnailObj.ProductQuantity = sqldataReaderObj["ProductQuantity"].ToString();

        //                productDetailViewListtObj.Add(productDetailViewThumbnailObj);
        //            }
        //        }
        //        sqldataReaderObj.Close();
        //    }
        //    //catch (Exception ex)
        //    //{

        //    //}
        //    //finally
        //    //{
        //    //    SqlConnection.Close();
        //    //}
        //    return productDetailViewListtObj;
        //}

        //public List<ProductViewThumbnail> BindProductImageByID(string productID)
        //{
        //    List<ProductViewThumbnail> productDetailViewListtObj = new List<ProductViewThumbnail>();
        //    try
        //    {
        //        SqlCmd.CommandText = "spBindProductImage";
        //        SqlCmd.CommandType = CommandType.StoredProcedure;
        //        SqlCmd.Parameters.AddWithValue("@ProductID", productID);
        //        SqlConnection.Open();
        //        SqlDataReader sqldataReaderObj = SqlCmd.ExecuteReader();
        //        if (sqldataReaderObj.HasRows)
        //        {
        //            while (sqldataReaderObj.Read())
        //            {
        //                ProductViewThumbnail productDetailViewThumbnailObj = new ProductViewThumbnail();

        //                productDetailViewThumbnailObj.ProductID = sqldataReaderObj["ProductID"].ToString();
        //                productDetailViewThumbnailObj.ProductImageID = sqldataReaderObj["ProductImageID"].ToString();
        //                productDetailViewThumbnailObj.ProductImageNameExtention = sqldataReaderObj["ProductImageNameExtention"].ToString();

        //                productDetailViewListtObj.Add(productDetailViewThumbnailObj);
        //            }
        //        }
        //        sqldataReaderObj.Close();
        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //    finally
        //    {
        //        SqlConnection.Close();
        //    }
        //    return productDetailViewListtObj;
        //}

    }

}

