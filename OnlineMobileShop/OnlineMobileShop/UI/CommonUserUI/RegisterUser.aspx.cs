using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using OnlineMobileShop.BusinessLayer;
using OnlineMobileShop.EntityLayer;

namespace OnlineMobileShop.UI.CommonUserUI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        User1 userObj = new User1();
        RegisterUserManager registerUserManager = new RegisterUserManager();
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            //string encriptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBoxPassword.Text, "SHA1");

            userObj.UserID = TextBoxUserId.Text;
            userObj.FirstName = TextBoxFirstName.Text;
            userObj.LastName = TextBoxLastName.Text;
            userObj.Email = TextBoxEmail.Text;
            userObj.Password = TextBoxPassword.Text;
            //userObj.Con = TextBoxConformPassword.Text;
            int affectedRows = registerUserManager.AddUser(userObj);
            if (CheckBoxTermsAndCondition.Checked && affectedRows > 0)
            {
                LabelMessage.Text = "Registration Successful.";
            }
            else
            {
                LabelMessage.Text = "Registration Faild";
            }
            Response.Redirect("../RegisteredUserUI/UserAccountUpdate.aspx");
        }
    }
}