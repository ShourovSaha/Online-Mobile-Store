<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommonUserUI/User.Master" AutoEventWireup="true" CodeBehind="AllFeaturePhones.aspx.cs" Inherits="OnlineMobileShop.AllFeaturePhones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContentPlaceHolder" runat="server">
    <!--Show Feature Phone -->
    <div>
        <h4 class="text-info" style="text-align: right">Feature Phones</h4>
        <hr />
    </div>

    <div class="row" style="padding: 10px 10px 10px 10px">
        <asp:Repeater ID="RepeaterProductViewThumbnailFeaturePhones" runat="server">
            <ItemTemplate>
                <div class="col-sm-3 col-md-3">
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
</asp:Content>
