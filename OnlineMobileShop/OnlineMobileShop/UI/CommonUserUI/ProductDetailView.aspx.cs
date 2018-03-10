using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileShop.BusinessLayer;

namespace OnlineMobileShop
{
    public partial class ProductDetailView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ProductID"] != null)
            {
                if (!IsPostBack)
                {
                    bindProductInfoAndImageByID();
                    //bindProductImageByID();
                    //bindProductInfoByID();
                }
            }
            else
            {
                Response.Redirect("~/ProductsView.aspx");
            }
            
        }
        AddNewProductManager addNewProductManagerObj = new AddNewProductManager();

        void bindProductInfoAndImageByID()
        {
            string productID = Request.QueryString["ProductID"].ToString();

            RepeaterProductViewImagesAndInfo.DataSource = addNewProductManagerObj.BindProductInfoAndImageByID(productID);
            RepeaterProductViewImagesAndInfo.DataBind();
        }

        protected void RepeaterProductViewImagesAndInfo_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void ButtonAddtoCart_Click(object sender, EventArgs e)
        {
            string productID = Request.QueryString["ProductID"].ToString();
            if (Request.Cookies["cartProductID"] != null)
            {
                string cookieProductID = Request.Cookies["cartProductID"].Value.Split('=')[1];
                cookieProductID = cookieProductID + ',' + productID;

                HttpCookie cartProduct = new HttpCookie("cartProductID");
                cartProduct.Values["cartProductID"] = cookieProductID;
                cartProduct.Expires = DateTime.Now.AddDays(15);
                Response.Cookies.Add(cartProduct);
            }
            else
            {
                HttpCookie cartProduct = new HttpCookie("cartProductID");
                cartProduct.Values["cartProductID"] = productID;
                cartProduct.Expires = DateTime.Now.AddDays(15);
                Response.Cookies.Add(cartProduct);
            }

            Response.Redirect("ProductDetailView.aspx?ProductID=" + productID);//
        }


        //void bindProductInfoByID()
        //{
        //    string productID = Request.QueryString["ProductID"].ToString();

        //    RepeaterProductViewImages.DataSource = addNewProductManagerObj.BindProductInfoByID(productID);
        //    RepeaterProductViewImages.DataBind();
        //}


        //void bindProductImageByID()
        //{
        //    string productID = Request.QueryString["ProductID"].ToString();

        //    RepeaterProductDetail.DataSource = addNewProductManagerObj.BindProductImageByID(productID);
        //    RepeaterProductDetail.DataBind();
        //}
    }
}