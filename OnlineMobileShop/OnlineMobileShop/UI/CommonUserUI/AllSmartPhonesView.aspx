<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommonUserUI/User.Master" AutoEventWireup="true" CodeBehind="AllSmartPhonesView.aspx.cs" Inherits="OnlineMobileShop.AllSmartPhonesView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContentPlaceHolder" runat="server">
    <!--Show Smart Phone -->
    <div>
        <h4 class="text-info">Smart Phones</h4>
        <hr />
    </div>

    <div class="col-md-12" style="padding: 3px">
        <div class="row">


            <asp:Repeater ID="RepeaterProductViewThumbnailSmartPhones" runat="server">
                <ItemTemplate>
                    <div class="col-sm-3 col-md-3" style="height: 300px; padding: 10px; margin-bottom: 50px;">
                        <a style="text-decoration: none;" href="ProductDetailView.aspx?ProductID=<%#Eval("ProductID") %>">
                            <div class="thumbnail">
                                <img src="../../Image/ProductImages/<%#Eval("ProductID") %>/<%#Eval("ProductImageID") %><%#Eval("ProductImageNameExtention") %>" alt="<%#Eval("ProductImageID") %>">
                                <hr />
                                <div class="caption">
                                    <div class="product-name"><%#Eval("ProductID") %></div>
                                    <div class="product-brand"><%#Eval("ManufacturerID") %></div>
                                    <div>
                                        <p>Price : <span class="productView-product-price"><%#Eval("ProductDiscountPrice") %>$&nbsp;</span><span class="productView-product-discountPrice"><%#Eval("ProductPrice") %>$</span></p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
