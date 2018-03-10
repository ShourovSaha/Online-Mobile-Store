using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileShop.BusinessLayer;

namespace OnlineMobileShop
{
    public partial class AllSmartPhonesView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindSmartPhones();
            }
        }

        AddNewProductManager addNewProductManagerObj = new AddNewProductManager();


        void bindSmartPhones()
        {
            RepeaterProductViewThumbnailSmartPhones.DataSource = addNewProductManagerObj.BindSmartPhones();
            RepeaterProductViewThumbnailSmartPhones.DataBind();
        }
    }
}