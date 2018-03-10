using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnlineMobileShop.EntityLayer;
using OnlineMobileShop.DataLayer;

namespace OnlineMobileShop.BusinessLayer
{
    public class SearchProductManager
    {
        SearchProductGateway searchProductGatewayObj = new SearchProductGateway();
        public List<ProductViewThumbnail> SearchProductByProductName(string searchedItem)
        {
            return searchProductGatewayObj.SearchProductByProductName(searchedItem);
        }
    }
}
