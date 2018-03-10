using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using OnlineMobileShop.BusinessLayer;

namespace OnlineMobileShop
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserID"] != null && Request.Cookies["Password"] != null)
                {
                    TextBoxUserId.Text = Request.Cookies["UserID"].Value;
                    TextBoxPassword.Attributes["value"] = Request.Cookies["Password"].Value;
                    CheckBoxLoginRememberMe.Checked = true;
                }
            }
        }
        AuthenticateUserManager authenticateUserMangerObj = new AuthenticateUserManager();
        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string[] loginData = new string[2];
            loginData[0] = TextBoxUserId.Text;
            loginData[1] = TextBoxPassword.Text;
            if (CheckBoxIsAdmin.Checked)
            {
                int result = authenticateUserMangerObj.AuthenticateAdmin(loginData);
                if (result > 0)
                {
                    LabelMessage.Text = "Loged in Succesfully";
                    if (CheckBoxLoginRememberMe.Checked)
                    {
                        Response.Cookies["AdminID"].Value = TextBoxUserId.Text;
                        Response.Cookies["AdminPassword"].Value = TextBoxPassword.Text;

                        Response.Cookies["AdminID"].Expires = DateTime.Now.AddDays(1);
                        Response.Cookies["AdminPassword"].Expires = DateTime.Now.AddDays(1);
                    }
                    else
                    {
                        Response.Cookies["AdminID"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["AdminPassword"].Expires = DateTime.Now.AddDays(-1);
                    }
                    Session["AdminID"] = TextBoxUserId.Text;
                    Response.Redirect("../AdminUI/AddNewProductForm.aspx");
                    
                }
                else
                {
                    LabelMessage.Text = "User Id or Password didn't matched!";
                }
            }
            else
            {
                int result = authenticateUserMangerObj.AuthenticateUser(loginData);

                if (result > 0)
                {
                    LabelMessage.Text = "Loged in Succesfully";
                    if (CheckBoxLoginRememberMe.Checked)
                    {
                        Response.Cookies["UserID"].Value = TextBoxUserId.Text;
                        Response.Cookies["Password"].Value = TextBoxPassword.Text;

                        Response.Cookies["UserID"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(15);
                    }
                    else
                    {
                        Response.Cookies["UserID"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                    }
                    Session["UserID"] = TextBoxUserId.Text;
                    Response.Redirect("~/UI/RegisteredUserUI/UserHome.aspx");
                    //Response.Redirect("~/UI/RegisteredUserUI/UserAccountUpdate.aspx");
                }
                else
                {
                    LabelMessage.Text = "User Id or Password didn't matched!";
                }
            }

            
            
            //if (FormsAuthentication.Authenticate(TextBoxUserId.Text, TextBoxPassword.Text))
            //{
            //    FormsAuthentication.RedirectFromLoginPage(TextBoxUserId.Text, CheckBoxLoginRememberMe.Checked);
            //    //LabelMessage.Text = "Login Succesful.";
            //}
            //else
            //{
            //    LabelMessage.Text = "Wrong UserID or Password !";
            //}

        }
    }
}