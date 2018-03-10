using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using OnlineMobileShop.EntityLayer;
using OnlineMobileShop.BusinessLayer;

namespace OnlineMobileShop
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminID"] != null)
            {
                LabelMessage.Text = "You are loged in. Welcome " + Session["AdminID"] + ".";
            }
            else
            {
                Response.Redirect("../CommonUserUI/FormHome.aspx");
            }
            if (!IsPostBack)
            {
                LoadAllManufacturersInDropDowmList();
                LoadAllMainCatagoryInDropDowmList();
                DropDownListSubCatagory.Enabled = false;
            }
        }
        AddNewProductManager addNewProductManagerObj = new AddNewProductManager();
        void LoadAllManufacturersInDropDowmList()
        {
            DropDownListManufacturer.DataSource = addNewProductManagerObj.BindAllManufacturers();
            DropDownListManufacturer.DataValueField = "ManufacturerID";
            DropDownListManufacturer.DataTextField = "ManufacturerName";
            DropDownListManufacturer.DataBind();
            DropDownListManufacturer.Items.Insert(0, new ListItem("--Select--", "0"));
        }

        void LoadAllMainCatagoryInDropDowmList()
        {
            DropDownListCatagory.DataSource = addNewProductManagerObj.BindAllMainCatagory();
            DropDownListCatagory.DataValueField = "CatagoryID";
            DropDownListCatagory.DataTextField = "CatagoryName";
            DropDownListCatagory.DataBind();
            DropDownListCatagory.Items.Insert(0, new ListItem("--Select--", "0"));
        }

        protected void DropDownListSubCatagory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListCatagory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedMainCatagoryDDL = DropDownListCatagory.SelectedItem.Value;
            DropDownListSubCatagory.DataSource = addNewProductManagerObj.BindSubCatagoryAccordingToSelectedMainCatagory(selectedMainCatagoryDDL);
            DropDownListSubCatagory.DataValueField = "SubCatagoryID";
            DropDownListSubCatagory.DataTextField = "SubCatagoryName";
            DropDownListSubCatagory.DataBind();
            DropDownListSubCatagory.Items.Insert(0, new ListItem("--Select--", "0"));
            DropDownListSubCatagory.Enabled = true;
        }

        protected void ButtonAddProduct_Click(object sender, EventArgs e)
        {
            Product productObj = new Product();
            //general
            productObj.ProductID = TextBoxPhoneID.Text;
            productObj.ManufacturerID = DropDownListManufacturer.SelectedItem.Value;
            productObj.ProductCatagotyID = DropDownListCatagory.SelectedItem.Value;
            productObj.ProductSubCatagotyID = DropDownListSubCatagory.SelectedItem.Value;
            //Available Staus
            productObj.AvailableStatus = DropDownListAvailableStatus.SelectedItem.Value;
            productObj.DatePublish = TextBoxPublishDate.Text;
            //Network
            productObj.NetworkTechnology = TextBoxNetwork.Text;
            productObj.GPRS = RadioButtonListGPRS.SelectedItem.Value;
            productObj.HSCSD = RadioButtonListHSCSD.SelectedItem.Value;
            productObj.EDGE = RadioButtonListEDGE.SelectedItem.Value;
            productObj.Status3G = RadioButtonList3G.SelectedItem.Value;
            productObj.Status4G = RadioButtonList4G.SelectedItem.Value;
            productObj.NetworkSpeed = TextBoxSpeed.Text;
            //Display
            productObj.Dimention = TextBoxDimention.Text;
            productObj.Weight = Convert.ToInt16(TextBoxWeigth.Text);
            productObj.DisplayType = TextBoxDisplayType.Text;
            productObj.DisplaySize = TextBoxDisplaySize.Text;
            productObj.DisplayResolution = TextBoxDisplayResolution.Text;
            
            //Platform
            productObj.OS = TextBoxOS.Text;
            productObj.Chipset = TextBoxChipset.Text;
            productObj.CPU = TextBoxCPU.Text;
            productObj.GPU = TextBoxGPU.Text;
            //Memory
            productObj.RAM = TextBoxRAM.Text;
            productObj.InternalMemory = TextBoxInternalMemory.Text;
            productObj.CardSlot = TextBoxCardSlot.Text;
            //Camera
            productObj.PrimaryCamera = TextBoxPrimaryCamera.Text;
            productObj.CameraFeatures = TextBoxCameraFeatures.Text;
            productObj.SecondryCamera = TextBoxSecondryCamera.Text;
            productObj.VideoCamera = TextBoxVideoCamera.Text;
            //Sound
            productObj.RingtoneType = TextBoxRingtoneType.Text;
            productObj.Loudspeaker = RadioButtonListLoudspeaker.SelectedItem.Value;
            productObj.EarPhonejack = RadioButtonListEarPhonejack.SelectedItem.Value;
            productObj.Vibration = RadioButtonListVibration.SelectedItem.Value;
            //Communication
            productObj.WLAN = RadioButtonListWLAN.SelectedItem.Value;
            productObj.Bluetooth = TextBoxBluetooth.Text;
            productObj.USB = TextBoxUSB.Text;
            productObj.Radio = RadioButtonListRadio.SelectedItem.Value;
            productObj.GPS = TextBoxGPS.Text;
            //Features
            productObj.Sensor = TextBoxSensor.Text;
            productObj.Messaging = TextBoxMessaging.Text;
            productObj.Browser = TextBoxBrowser.Text;
            productObj.Language = TextBoxLanguage.Text;
            //Battery
            productObj.BatteryStandby = Convert.ToInt16(TextBoxStandby.Text);
            productObj.BatteryType = TextBoxBattery.Text;
            productObj.BatteryStandby = Convert.ToInt16(TextBoxStandby.Text);
            productObj.BatteryTalktime = Convert.ToInt16(TextBoxTalktime.Text);
            productObj.BatteryMusicPlayTime = Convert.ToInt16(TextBoxMusicPlayTime.Text);
            //Stock
            productObj.ProductColor = TextBoxColors.Text;
            productObj.ProductPrice = Convert.ToInt16(TextBoxPrice.Text);
            productObj.ProductDiscountPrice = Convert.ToInt16(TextBoxDiscountPrice.Text);
            productObj.ProductQuantity = Convert.ToInt16(TextBoxQuantity.Text);
            
            //Delivery Status
            productObj.ProductFreeDeliveryStatus = RadioButtonListFreeDelivery.SelectedItem.Text;
            productObj.Product30DaysReturnStatus = RadioButtonList30DaysReturnPolicy.SelectedItem.Text;

            int affectedRows = addNewProductManagerObj.AddNewProduct(productObj);
            LabelMessage.Text = affectedRows > 0 ? "Data Inserted Successfully." : "Data Insertion Faild";

            //Images
            saveProductImages();
        }


        void saveProductImages()// Save Image In Folder
        {
            string productID = TextBoxPhoneID.Text;
            //Image01
            if (FileUploadProductImage01.HasFile)
            {
                string savePath = Server.MapPath("~/Image/ProductImages/") + TextBoxPhoneID.Text;
                if (!Directory.Exists(savePath))
                {
                    Directory.CreateDirectory(savePath);
                }
                string extention = Path.GetExtension(FileUploadProductImage01.PostedFile.FileName);
                FileUploadProductImage01.SaveAs(savePath + "\\" + TextBoxPhoneID.Text.ToString().Trim() + "-01" + extention);
                string imageID = TextBoxPhoneID.Text.ToString().Trim() + "-01";

                ImageInfo imageInfoObj1 = new ImageInfo();
                imageInfoObj1.ImageID = imageID;
                imageInfoObj1.ImageExtextion = extention;
                imageInfoObj1.ProductID = TextBoxPhoneID.Text;
                int result = addNewProductManagerObj.SaveProductImage(imageInfoObj1);
                //string productID = TextBoxPhoneID.Text;

                //string[] productImageInfo = new string[3];
                //productImageInfo[0] = imageID;
                //productImageInfo[1] = extention;
                //productImageInfo[2] = TextBoxPhoneID.Text;



                //int result = addNewProductManagerObj.SaveProductImage(imageID, extention, productID);

                LabelImage01SaveMessage.Text = result != 0 ? "Image 01 Saved." : "Image 01 Save Faild!";
            }

            //Image02
            if (FileUploadProductImage02.HasFile)
            {
                string savePath = Server.MapPath("~/Image/ProductImages/") + TextBoxPhoneID.Text;
                if (!Directory.Exists(savePath))
                {
                    Directory.CreateDirectory(savePath);
                }
                string extention = Path.GetExtension(FileUploadProductImage02.PostedFile.FileName);
                FileUploadProductImage02.SaveAs(savePath + "\\" + TextBoxPhoneID.Text.ToString().Trim() + "-02" + extention);
                string imageID = TextBoxPhoneID.Text.ToString().Trim() + "-02";

                ImageInfo imageInfoObj2 = new ImageInfo();
                imageInfoObj2.ImageID = imageID;
                imageInfoObj2.ImageExtextion = extention;
                imageInfoObj2.ProductID = TextBoxPhoneID.Text;
                int result = addNewProductManagerObj.SaveProductImage(imageInfoObj2);

                //string[] productImageInfo = new string[3];
                //productImageInfo[0] = imageID;
                //productImageInfo[1] = extention;
                //productImageInfo[2] = TextBoxPhoneID.Text;

                //int result = addNewProductManagerObj.SaveProductImage(productImageInfo);
                LabelImage02SaveMessage.Text = result != 0 ? "Image 02 Saved." : "Image 02 Save Faild!";
            }

            //Image03
            if (FileUploadProductImage03.HasFile)
            {
                string savePath = Server.MapPath("~/Image/ProductImages/") + TextBoxPhoneID.Text;
                if (!Directory.Exists(savePath))
                {
                    Directory.CreateDirectory(savePath);
                }
                string extention = Path.GetExtension(FileUploadProductImage03.PostedFile.FileName);
                FileUploadProductImage03.SaveAs(savePath + "\\" + TextBoxPhoneID.Text.ToString().Trim() + "-03" + extention);
                string imageID = TextBoxPhoneID.Text.ToString().Trim() + "-03";

                ImageInfo imageInfoObj3 = new ImageInfo();
                imageInfoObj3.ImageID = imageID;
                imageInfoObj3.ImageExtextion = extention;
                imageInfoObj3.ProductID = TextBoxPhoneID.Text;
                int result = addNewProductManagerObj.SaveProductImage(imageInfoObj3);

                //string[] productImageInfo = new string[3];
                //productImageInfo[0] = imageID;
                //productImageInfo[1] = extention;
                //productImageInfo[2] = TextBoxPhoneID.Text;

                //int result = addNewProductManagerObj.SaveProductImage(productImageInfo);
                LabelImage03SaveMessage.Text = result != 0 ? "Image 03 Saved." : "Image 03 Save Faild!";
            }
        }
    }
}