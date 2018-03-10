using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileShop.BusinessLayer;
using OnlineMobileShop.EntityLayer;

namespace OnlineMobileShop
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                //LabelMessage.Text = "You are loged in. Welcome " + Session["UserID"] + ".";
                
            }
            else
            {
                Response.Redirect("../CommonUserUI/FormHome.aspx");
                
            }

            if (!IsPostBack)
            {
                bindCartProducts();

            }
            
            
        }

        AddNewProductManager addNewProductManagerObj = new AddNewProductManager();

        void bindCartProducts()
        {
            int cartTotalPrice = 0;
            int discountTotalPrice = 0;
            int totalPayblePrice = 0;
            //List<> productDataList = new List<ProductViewThumbnail>();
            if (Request.Cookies["cartProductID"] != null)
            {
                string cookieDataOfProducts = Request.Cookies["cartProductID"].Value.Split('=')[1];
                string[] strArray = cookieDataOfProducts.Split(',');
                

                if (strArray.Length > 0)
                {
                    NumbrOfItermsInCart.InnerText = "My Cart (" +strArray.Length + ") items";

                    for (int i = 0; i < strArray.Length; i++)
                    {
                        string productID = strArray[i];
                        var productDataList = addNewProductManagerObj.BindProductInfoAndImageByID(productID);
                        foreach (var data in productDataList)
                        {
                            //Calculating Cart Price
                            cartTotalPrice += data.ProductPrice;
                            discountTotalPrice += data.ProductDiscountPrice;
                            totalPayblePrice = cartTotalPrice - discountTotalPrice;
                        }

                        RepeaterCartProducts.DataSource = productDataList;
                        RepeaterCartProducts.DataBind();
                    }

                    CartTotalPrice.InnerText = cartTotalPrice.ToString();
                    CartTotalDiscountPrice.InnerText = discountTotalPrice.ToString();
                    TotalPrice.InnerText = totalPayblePrice.ToString();
                    
                }
                else
                {
                    NumbrOfItermsInCart.InnerText = "No Items in your Cart!";
                }
            }
            else
            {
                NumbrOfItermsInCart.InnerText = "No Items in your Cart!";
                CartTotalPrice.InnerText = "0.00".ToString();
                CartTotalDiscountPrice.InnerText = "0.00".ToString();
                TotalPrice.InnerText = "0.00".ToString();
            }
        }

        protected void ButtonRemoveCartItem_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonBuyNow_Click(object sender, EventArgs e)
        {

        }
    }
}