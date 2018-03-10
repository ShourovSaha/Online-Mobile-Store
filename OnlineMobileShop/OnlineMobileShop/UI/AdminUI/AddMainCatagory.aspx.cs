using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileShop.BusinessLayer;

namespace OnlineMobileShop
{
    public partial class AddMainCatagory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminID"] != null)
            {
                LabelMsg.Text = "You are loged in. Welcome " + Session["AdminID"] + ".";
            }
            else
            {
                Response.Redirect("../CommonUserUI/FormHome.aspx");
            }

            if (!IsPostBack)
            {
                bindAllMainCatagoryInRepeater();
            }
        }

        AddMainCatagoryManager addMainCatagoryManagerObj = new AddMainCatagoryManager();
        protected void ButtonAddMainCatagory_Click(object sender, EventArgs e)
        {
            string[] mainCatagoryInfo = new string[2];
            mainCatagoryInfo[0] = TextBoxMainCatagoryID.Text;
            mainCatagoryInfo[1] = TextBoxMainCatagoryName.Text;

            int result = addMainCatagoryManagerObj.AddMainCatagory(mainCatagoryInfo);

            LabelMsg.Text = result > 0 ? "Data Add Succesfully." : "Data Add Failed !.";
        }

        void bindAllMainCatagoryInRepeater()
        {
            RepeaterMainCatagory.DataSource = addMainCatagoryManagerObj.BindAllMainCatagory();
            RepeaterMainCatagory.DataBind();
        }
    }
}