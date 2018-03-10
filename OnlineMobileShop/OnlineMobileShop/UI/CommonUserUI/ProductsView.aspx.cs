using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileShop.BusinessLayer;

namespace OnlineMobileShop
{
    public partial class ProductsView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //bindAllProducts();
                bindSmartPhones();
                bindFeaturePhones();
            }
        }

        AddNewProductManager addNewProductManagerObj = new AddNewProductManager();

        //void bindAllProducts()
        //{
        //    RepeaterProductViewThumbnailSmartPhones.DataSource = addNewProductManagerObj.BindAllProducts();
        //    RepeaterProductViewThumbnailSmartPhones.DataBind();
        //}

        void bindSmartPhones()
        {
            RepeaterProductViewThumbnailSmartPhones.DataSource = addNewProductManagerObj.BindSmartPhones();
            RepeaterProductViewThumbnailSmartPhones.DataBind();
        }

        void bindFeaturePhones()
        {
            RepeaterProductViewThumbnailFeaturePhones.DataSource = addNewProductManagerObj.BindFeaturePhones();
            RepeaterProductViewThumbnailFeaturePhones.DataBind();
        }
    }
}