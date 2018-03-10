using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineMobileShop
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                LabelMessage.Text = "You are loged in. Welcome " + Session["UserID"] + ".";
            }

            else
            {
                Response.Redirect("../CommonUserUI/FormHome.aspx");

            }

            //bindCartNumber();
        }

        //void bindCartNumber()
        //{
        //    //Response.Cookies["cartProductID"].Expires = DateTime.Now.AddDays(-1);
        //    if (Request.Cookies["cartProductID"] != null)
        //    {
        //        string cookieProductID = Request.Cookies["cartProductID"].Value.Split('=')[1];
        //        string[] productArray = cookieProductID.Split(',');
        //        int productCount = productArray.Length;
        //        ProductCount.innerText =
        //    }
        //}
    }
}