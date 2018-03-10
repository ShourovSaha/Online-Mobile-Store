using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileShop.BusinessLayer;

namespace OnlineMobileShop
{
    public partial class FormHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                //LabelMessage.Text = "You are loged in. Welcome " + Session["UserID"] + ".";
                ButtonSignOut.Visible = true;
                ButtonSignUp.Visible = false;
                ButtonLogin.Visible = false;
            }
            else
            {
                //Response.Redirect("FormHome.aspx");
                ButtonSignOut.Visible = false;
                ButtonSignUp.Visible = true;
                ButtonLogin.Visible = true;
            }
            bindCartNumber();
        }

        SearchProductManager searchProductManagerObj = new SearchProductManager();

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }
        protected void ButtonSearch_Click(object sender, EventArgs e)//=====
        {
            searchProductManagerObj.SearchProductByProductName(TextBoxSearch.Text);
        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegiaterUser.aspx");
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
                ProductCount.InnerText = productCount.ToString();
            }
            else
            {
                ProductCount.InnerText = 0.ToString();
            }

        }
    }
}