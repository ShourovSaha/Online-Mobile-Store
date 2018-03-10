using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace OnlineMobileShop.EntityLayer
{
    public class Order
    {
        public string OrderId { get; set; }
        public string UserId { get; set; }
        public string PhoneId { get; set; }
        public int OrderQuantity { get; set; }
        public int SubTotal { get; set; }
    }
}
