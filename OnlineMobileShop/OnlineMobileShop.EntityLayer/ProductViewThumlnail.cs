using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineMobileShop.EntityLayer
{
    public class ProductViewThumbnail
    {
        public string ProductID { get; set; }
        public string ManufacturerID { get; set; }
        public int ProductPrice { get; set; }
        public int ProductDiscountPrice { get; set; }
        public string ProductImageID { get; set; }
        public string ProductImageNameExtention { get; set; }
        public string CPU { get; set; }
        public string Chipset { get; set; }
        public string GPU { get; set; }
        public string RAM { get; set; }
        public string PrimaryCamera { get; set; }
        public string SecondryCamera { get; set; }
        public string OS { get; set; }

        public string ProductColor { get; set; }
        public string ProductFreeDeliveryStatus { get; set; }
        public string Product30DaysReturnStatus { get; set; }
        public string ProductQuantity { get; set; }

        //public int TotalCartPrice { get; set; }
        //public int TotalDiscountDiscountPrice { get; set; }
        //public int TotalPrice { get; set; }

    }
}
