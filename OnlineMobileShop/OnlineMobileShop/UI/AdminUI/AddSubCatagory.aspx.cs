using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileShop.BusinessLayer;

namespace OnlineMobileShop
{
    public partial class AddSubCatagory : System.Web.UI.Page
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
                LoadAllMainCatagoryInDropdownlist();
                //BindAllMainCatagoryAndCubCatagoryInInRepeater();
            }
        }

        AddSubCatagoryManager addSubCatagoryManagerObj = new AddSubCatagoryManager();
        protected void ButtonAddSubCatagory_Click(object sender, EventArgs e)
        {
            string[] mainCatagoryInfo = new string[3];
            
            mainCatagoryInfo[0] = TextBoxSubCatagoryID.Text;
            mainCatagoryInfo[1] = TextBoxSubCatagoryName.Text;
            mainCatagoryInfo[2] = DropDownListMainCatagory.SelectedItem.Value;

            int result = addSubCatagoryManagerObj.AddSubCatagory(mainCatagoryInfo);

            LabelMsg.Text = result > 0 ? "Data Add Succesfully." : "Data Add Failed !.";
        }

        void LoadAllMainCatagoryInDropdownlist()
        {
            DropDownListMainCatagory.DataSource = addSubCatagoryManagerObj.GetAllMainCatagory();
            DropDownListMainCatagory.DataTextField = "CatagoryName";
            DropDownListMainCatagory.DataValueField = "CatagoryID";
            DropDownListMainCatagory.DataBind();
            DropDownListMainCatagory.Items.Insert(0, new ListItem("--Select--", "0"));
        }

        void BindAllMainCatagoryAndCubCatagoryInInRepeater()
        {
            RepeaterMainCatagoryAndSubCatagory.DataSource = addSubCatagoryManagerObj.BindAllMainCatagoryAndSubCatagoty();
            RepeaterMainCatagoryAndSubCatagory.DataBind();
        }
    }
}