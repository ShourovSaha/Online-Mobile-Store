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
    public class SearchProductGateway:CommonGateway
    {
        public List<ProductViewThumbnail> SearchProductByProductName(string searchedItem)
        {
            List<ProductViewThumbnail> productViewThumbnailListObj = new List<ProductViewThumbnail>();
            using (SqlConnection)
            //try
            {
                SqlCmd.CommandText = "spSearchProductByProductName";
                SqlCmd.CommandType = CommandType.StoredProcedure;
                SqlCmd.Parameters.AddWithValue("@SearchItem", searchedItem);
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
            //catch (Exception ex)
            //{

            //}
            //finally
            //{
            //    SqlConnection.Close();
            //}

            return productViewThumbnailListObj;
        }
    }
}
