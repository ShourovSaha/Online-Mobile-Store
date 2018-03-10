using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineMobileShop.EntityLayer
{
    public class Product:SerialNo
    {
        
        public string ProductID { get; set; }
        public string ManufacturerID { get; set; }
        public string ProductCatagotyID { get; set; }
        public string ProductSubCatagotyID { get; set; }
        //Available Status
        public string AvailableStatus { get; set; }
        public string DatePublish { get; set; }
        //network
        public string NetworkTechnology { get; set; }
        public string GPRS { get; set; }
        public string HSCSD { get; set; }
        public string EDGE { get; set; }
        public string Status3G { get; set; }
        public string Status4G { get; set; }
        public string NetworkSpeed { get; set; }
        //Display
        public string Dimention { get; set; }
        public int Weight { get; set; }
        public string DisplayType { get; set; }
        public string DisplaySize { get; set; }
        public string DisplayResolution { get; set; }
        
        //Platform
        public string OS { get; set; }
        public string Chipset { get; set; }
        public string CPU { get; set; }
        public string GPU { get; set; }
        //Memory
        public string RAM { get; set; }
        public string InternalMemory { get; set; }
        public string CardSlot { get; set; }
        //Camera
        public string PrimaryCamera { get; set; }
        public string CameraFeatures { get; set; }
        public string SecondryCamera { get; set; }
        public string VideoCamera { get; set; }
        //Sound
        public string RingtoneType { get; set; }
        public string Loudspeaker { get; set; }
        public string EarPhonejack { get; set; }
        public string Vibration { get; set; }
        //Communication
        public string WLAN { get; set; }
        public string Bluetooth { get; set; }
        public string GPS { get; set; }
        public string Radio { get; set; }
        public string USB { get; set; }
        //Feeatures
        public string Sensor { get; set; }
        public string Messaging { get; set; }
        public string Browser { get; set; }
        public string Language { get; set; }
        //Battery
        public string BatteryType { get; set; }
        public int BatteryStandby { get; set; }
        public int BatteryTalktime { get; set; }
        public int BatteryMusicPlayTime { get; set; }
        //Stock & Price
        public string ProductColor { get; set; }
        public int ProductPrice { get; set; }
        public int ProductDiscountPrice { get; set; }
        public int ProductQuantity { get; set; }
        //image
        //public string ProductImage01 { get; set; }
        //public string ProductImage02 { get; set; }
        //public string ProductImage03 { get; set; }
        //Delivery Status
        public string ProductFreeDeliveryStatus { get; set; }
        public string Product30DaysReturnStatus { get; set; }
    }
}
