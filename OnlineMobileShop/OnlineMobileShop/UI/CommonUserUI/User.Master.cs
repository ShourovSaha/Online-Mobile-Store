using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineMobileShop
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                

                //ButtonLogin.Visible 
                //LabelMessage.Text = "You are loged in. Welcome " + Session["UserID"] + ".";
                //ButtonSignOut.Visible = true;
                //ButtonSignUp.Visible = false;
                //ButtonLogin.Visible = false;
            }
            else
            {
                //Response.Redirect("../CommonUserUI/FormHome.aspx");
                //ButtonSignOut.Visible = false;
                //ButtonSignUp.Visible = true;
                //ButtonLogin.Visible = true;
            }
           
            bindCartNumber();
        }

        //public Label 

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterUser.aspx");
        }

        protected void ButtonSignOut_Click(object sender, EventArgs e)
        {
            Session["UserID"] = null;
            Response.Redirect("FormHome.aspx");
        }


        void bindCartNumber()
        {
            //Response.Cookies["cartProductID"].Expires = DateTime.Now.AddDays(-1);
            if (Request.Cookies["cartProductID"] != null)
            {
                string cookieProductID = Request.Cookies["cartProductID"].Value.Split('=')[1];
                string[] productArray = cookieProductID.Split(',');
                int productCount = productArray.Length;
                //ProductCount.InnerText = productCount.ToString();
            }
            else
            {
               // ProductCount.InnerText = 0.ToString();
            }

        }
    }
}