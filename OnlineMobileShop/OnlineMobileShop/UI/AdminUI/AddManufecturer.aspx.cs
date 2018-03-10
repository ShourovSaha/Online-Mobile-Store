using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileShop.BusinessLayer;

namespace OnlineMobileShop
{
    public partial class AddManufecturer : System.Web.UI.Page
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
                BindAllManufacturersInRepeater();
            }
        }

        AddManufacturerManager addManufacturerManagerObj = new AddManufacturerManager();

        
        protected void ButtonAddmanufecturer_Click(object sender, EventArgs e)
        {
            string[] manufacturerInfo = new string[2];
            manufacturerInfo[0] = TextBoxManufecturerID.Text;
            manufacturerInfo[1] = TextBoxManufecturerName.Text;

            int result = addManufacturerManagerObj.AddManufacturer(manufacturerInfo);

            LabelMsg.Text = result > 0 ? "Data Add Succesfully." : "Data Add Failed !.";

        }

        void BindAllManufacturersInRepeater()
        {
            RepeaterManufacturerTable.DataSource = addManufacturerManagerObj.BindAllManufacturers();
            RepeaterManufacturerTable.DataBind();
        }
    }
}