using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileShop.BusinessLayer;

namespace OnlineMobileShop
{
    public partial class AllFeaturePhones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindFeaturePhones();
            }
        }

        AddNewProductManager addNewProductManagerObj = new AddNewProductManager();

        void bindFeaturePhones()
        {
            RepeaterProductViewThumbnailFeaturePhones.DataSource = addNewProductManagerObj.BindFeaturePhones();
            RepeaterProductViewThumbnailFeaturePhones.DataBind();
        }
    }
}