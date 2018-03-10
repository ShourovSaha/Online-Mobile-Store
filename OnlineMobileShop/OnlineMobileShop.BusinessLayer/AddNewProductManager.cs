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
    public class AddNewProductManager
    {
        AddNewProductGateway addNewProductGatewayObj = new AddNewProductGateway();

        public int AddNewProduct(Product productObj)
        {
            SqlParameter[] objDataParameter = new SqlParameter[52];

            objDataParameter[0] = new SqlParameter("@ProductID", SqlDbType.NVarChar);
            objDataParameter[0].Value = productObj.ProductID;

            objDataParameter[1] = new SqlParameter("@ManufacturerID", SqlDbType.NVarChar);
            objDataParameter[1].Value = productObj.ManufacturerID;

            objDataParameter[2] = new SqlParameter("@ProductCatagotyID", SqlDbType.NVarChar);
            objDataParameter[2].Value = productObj.ProductCatagotyID;

            objDataParameter[3] = new SqlParameter("@ProductSubCatagotyID", SqlDbType.NVarChar);
            objDataParameter[3].Value = productObj.ProductSubCatagotyID;

            objDataParameter[4] = new SqlParameter("@DatePublish", SqlDbType.NVarChar);
            objDataParameter[4].Value = productObj.DatePublish;

            objDataParameter[5] = new SqlParameter("@AvailableStatus", SqlDbType.NVarChar);
            objDataParameter[5].Value = productObj.AvailableStatus;

            objDataParameter[6] = new SqlParameter("@NetworkTechnology", SqlDbType.NVarChar);
            objDataParameter[6].Value = productObj.NetworkTechnology;

            objDataParameter[7] = new SqlParameter("@GPRS", SqlDbType.NVarChar);
            objDataParameter[7].Value = productObj.GPRS;

            objDataParameter[8] = new SqlParameter("@HSCSD", SqlDbType.NVarChar);
            objDataParameter[8].Value = productObj.HSCSD;

            objDataParameter[9] = new SqlParameter("@EDGE", SqlDbType.NVarChar);
            objDataParameter[9].Value = productObj.EDGE;

            objDataParameter[10] = new SqlParameter("@Status3G", SqlDbType.NVarChar);
            objDataParameter[10].Value = productObj.Status3G;

            objDataParameter[11] = new SqlParameter("@Status4G", SqlDbType.NVarChar);
            objDataParameter[11].Value = productObj.Status4G;

            objDataParameter[12] = new SqlParameter("@NetworkSpeed", SqlDbType.NVarChar);
            objDataParameter[12].Value = productObj.NetworkSpeed;

            objDataParameter[13] = new SqlParameter("@Dimention", SqlDbType.NVarChar);
            objDataParameter[13].Value = productObj.Dimention;

            objDataParameter[14] = new SqlParameter("@Weight", SqlDbType.Decimal);
            objDataParameter[14].Value = productObj.Weight;

            objDataParameter[15] = new SqlParameter("@DisplayType", SqlDbType.NVarChar);
            objDataParameter[15].Value = productObj.DisplayType;

            objDataParameter[16] = new SqlParameter("@DisplaySize", SqlDbType.NVarChar);
            objDataParameter[16].Value = productObj.DisplaySize;

            objDataParameter[17] = new SqlParameter("@DisplayResolution", SqlDbType.NVarChar);
            objDataParameter[17].Value = productObj.DisplayResolution;

            objDataParameter[18] = new SqlParameter("@OS", SqlDbType.NVarChar);
            objDataParameter[18].Value = productObj.OS;

            objDataParameter[19] = new SqlParameter("@Chipset", SqlDbType.NVarChar);
            objDataParameter[19].Value = productObj.Chipset;

            objDataParameter[20] = new SqlParameter("@CPU", SqlDbType.NVarChar);
            objDataParameter[20].Value = productObj.CPU;

            objDataParameter[21] = new SqlParameter("@GPU", SqlDbType.NVarChar);
            objDataParameter[21].Value = productObj.GPU;

            objDataParameter[22] = new SqlParameter("@RAM", SqlDbType.NVarChar);
            objDataParameter[22].Value = productObj.RAM;

            objDataParameter[23] = new SqlParameter("@InternalMemory", SqlDbType.NVarChar);
            objDataParameter[23].Value = productObj.InternalMemory;

            objDataParameter[24] = new SqlParameter("@CardSlot", SqlDbType.NVarChar);
            objDataParameter[24].Value = productObj.CardSlot;

            objDataParameter[25] = new SqlParameter("@PrimaryCamera", SqlDbType.NVarChar);
            objDataParameter[25].Value = productObj.PrimaryCamera;

            objDataParameter[26] = new SqlParameter("@CameraFeatures", SqlDbType.NVarChar);
            objDataParameter[26].Value = productObj.CameraFeatures;

            objDataParameter[27] = new SqlParameter("@SecondryCamera", SqlDbType.NVarChar);
            objDataParameter[27].Value = productObj.SecondryCamera;

            objDataParameter[28] = new SqlParameter("@VideoCamera", SqlDbType.NVarChar);
            objDataParameter[28].Value = productObj.VideoCamera;

            objDataParameter[29] = new SqlParameter("@RingtoneType", SqlDbType.NVarChar);
            objDataParameter[29].Value = productObj.RingtoneType;

            objDataParameter[30] = new SqlParameter("@Loudspeaker", SqlDbType.NVarChar);
            objDataParameter[30].Value = productObj.Loudspeaker;

            objDataParameter[31] = new SqlParameter("@EarPhonejack", SqlDbType.NVarChar);
            objDataParameter[31].Value = productObj.EarPhonejack;

            objDataParameter[32] = new SqlParameter("@Vibration", SqlDbType.NVarChar);
            objDataParameter[32].Value = productObj.Vibration;

            objDataParameter[33] = new SqlParameter("@WLAN", SqlDbType.NVarChar);
            objDataParameter[33].Value = productObj.WLAN;

            objDataParameter[34] = new SqlParameter("@Bluetooth", SqlDbType.NVarChar);
            objDataParameter[34].Value = productObj.Bluetooth;

            objDataParameter[35] = new SqlParameter("@GPS", SqlDbType.NVarChar);
            objDataParameter[35].Value = productObj.GPS;

            objDataParameter[36] = new SqlParameter("@Radio", SqlDbType.NVarChar);
            objDataParameter[36].Value = productObj.Radio;

            objDataParameter[37] = new SqlParameter("@USB", SqlDbType.NVarChar);
            objDataParameter[37].Value = productObj.USB;

            objDataParameter[38] = new SqlParameter("@Sensor", SqlDbType.NVarChar);
            objDataParameter[38].Value = productObj.Sensor;

            objDataParameter[39] = new SqlParameter("@Messaing", SqlDbType.NVarChar);
            objDataParameter[39].Value = productObj.Messaging;

            objDataParameter[40] = new SqlParameter("@Browser", SqlDbType.NVarChar);
            objDataParameter[40].Value = productObj.Browser;

            objDataParameter[41] = new SqlParameter("@Language", SqlDbType.NVarChar);
            objDataParameter[41].Value = productObj.Language;

            objDataParameter[42] = new SqlParameter("@BatteryType", SqlDbType.NVarChar);
            objDataParameter[42].Value = productObj.BatteryType;

            objDataParameter[43] = new SqlParameter("@BatteryStandby", SqlDbType.Decimal);
            objDataParameter[43].Value = productObj.BatteryStandby;

            objDataParameter[44] = new SqlParameter("@BatteryTalktime", SqlDbType.Decimal);
            objDataParameter[44].Value = productObj.BatteryTalktime;

            objDataParameter[45] = new SqlParameter("@BatteryMusicPlayTime", SqlDbType.Decimal);
            objDataParameter[45].Value = productObj.BatteryMusicPlayTime;

            objDataParameter[46] = new SqlParameter("@ProductColor", SqlDbType.NVarChar);
            objDataParameter[46].Value = productObj.ProductColor;

            objDataParameter[47] = new SqlParameter("@ProductPrice", SqlDbType.Decimal);
            objDataParameter[47].Value = productObj.ProductPrice;

            objDataParameter[48] = new SqlParameter("@ProductDiscountPrice", SqlDbType.Decimal);
            objDataParameter[48].Value = productObj.ProductDiscountPrice;

            objDataParameter[49] = new SqlParameter("@ProductQuantity", SqlDbType.BigInt);
            objDataParameter[49].Value = productObj.ProductQuantity;

            objDataParameter[50] = new SqlParameter("@ProductFreeDeliveryStatus", SqlDbType.NVarChar);
            objDataParameter[50].Value = productObj.ProductFreeDeliveryStatus;

            objDataParameter[51] = new SqlParameter("@Product30DaysReturnStatus", SqlDbType.NVarChar);
            objDataParameter[51].Value = productObj.Product30DaysReturnStatus;

            int result = addNewProductGatewayObj.AddNewProduct(objDataParameter);
            return result;
        }

        public List<Manufacturers> BindAllManufacturers()
        {
            return addNewProductGatewayObj.BindAllManufacturers();
        }

        public List<MainCatagory> BindAllMainCatagory()
        {
            return addNewProductGatewayObj.BindAllMainCatagory();
        }

        public List<SubCatagory> BindSubCatagoryAccordingToSelectedMainCatagory(string selectedMainCatagoryDDL)
        {
            return addNewProductGatewayObj.BindSubCatagoryAccordingToSelectedMainCatagory(selectedMainCatagoryDDL);
        }

        public int SaveProductImage(ImageInfo productImageInfo)// problem here maybe !!!
        {
            //return addNewProductGatewayObj.SaveProductImage(imageID, extention, productID);


            SqlParameter[] sqlDataParameterObj = new SqlParameter[3];

            sqlDataParameterObj[0] = new SqlParameter("@ProductImageID", SqlDbType.NVarChar);
            sqlDataParameterObj[0].Value = productImageInfo.ImageID;

            sqlDataParameterObj[1] = new SqlParameter("@ProductImageNameExtention", SqlDbType.NVarChar);
            sqlDataParameterObj[1].Value = productImageInfo.ImageExtextion;

            sqlDataParameterObj[2] = new SqlParameter("@ProductID", SqlDbType.NVarChar);
            sqlDataParameterObj[2].Value = productImageInfo.ProductID;


            return addNewProductGatewayObj.SaveProductImage(sqlDataParameterObj);
        }

        public List<ProductViewThumbnail> BindAllProductInfo()
        {
            return addNewProductGatewayObj.BindAllProductInfo();
        }

        public List<ProductViewThumbnail> BindSmartPhones()
        {
            return addNewProductGatewayObj.BindSmartPhones();
        }

        public List<ProductViewThumbnail> BindFeaturePhones()
        {
            return addNewProductGatewayObj.BindFeaturePhones();
        }


        public List<ProductViewThumbnail> BindProductInfoAndImageByID(string productID)
        {
            return addNewProductGatewayObj.BindProductInfoAndImageByID(productID);
        }


        //public List<ProductViewThumbnail> BindProductInfoByID(string productID)
        //{
        //    return addNewProductGatewayObj.BindProductInfoByID(productID);
        //}

        //public List<ProductViewThumbnail> BindProductImageByID(string productID)
        //{
        //    return addNewProductGatewayObj.BindProductImageByID(productID);
        //}
    }
}
