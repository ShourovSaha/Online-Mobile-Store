using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineMobileShop
{
    public partial class UserAccountUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                LabelMsg.Text = "You are loged in. Welcome " +Session["UserID"]+ ".";
            }
            else
            {
                Response.Redirect("../CommonUserUI/FormHome.aspx");
            }
        }
    }
}