using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineMobileShop
{
    public partial class AdminPanel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignOut_Click(object sender, EventArgs e)
        {
            Session["AdminID"] = null;
            Response.Redirect("../CommonUserUI/FormHome.aspx");
        }
    }
}