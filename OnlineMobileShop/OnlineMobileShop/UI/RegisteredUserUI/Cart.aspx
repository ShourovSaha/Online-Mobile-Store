<%@ Page Title="Cart" Language="C#" MasterPageFile="~/UI/RegisteredUserUI/RegisteredUserMasterPage.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="OnlineMobileShop.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContentPlaceHolder" runat="server">
    <div style="padding: 15px;">
        <div class="col-md-8">
            <h5 style="color: #808080" runat="server" id="NumbrOfItermsInCart">My Cart</h5>
            <asp:Repeater ID="RepeaterCartProducts" runat="server">
                <ItemTemplate>
                    <div class="media" style="border: solid 1px #eaeaec">
                        <div class="media-left">
                            <a href="../CommonUserUI/ProductDetailView.aspx?ProductID="<%#Eval("ProductID") %> target="_blank">
                                <img width="150px" class="media-object" src="../../Image/ProductImages/<%#Eval("ProductID") %>/<%#Eval("ProductImageID") %><%#Eval("ProductImageNameExtention") %>" alt="<%#Eval("ProductImageID") %>" />
                            </a>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Phone Model : <%#Eval("ProductID") %></h4>
                            <p>Brand : <span class="product-brand"><%#Eval("ManufacturerID") %></span></p>
                            <p>Discout Price : <span class="product-price"><%#Eval("ProductDiscountPrice") %></span>$</p>
                            <p>Price : <span class="product-discountPrice">: <%#Eval("ProductPrice") %></span>$</p>
                            <p>
                                <asp:Button ID="ButtonRemoveCartItem" runat="server" Text="Remove" CssClass="btn btn-sm" OnClick="ButtonRemoveCartItem_Click"/>
                            </p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="col-md-4" style="border: solid 1px #eaeaec">
            <div style="border-bottom: solid 1px #ff6a00">
                <h4 style="text-align: center; color: #808080">Price Calculation</h4>
                <hr />
                <div>
                    <label>Cart Total ($):</label>
                    <span class="pull-right" runat="server" id="CartTotalPrice"></span>
                </div>
                <div>
                    <label>Discount Total ($):</label>
                    <span class="pull-right" runat="server" id="CartTotalDiscountPrice"> </span>
                </div>
            </div>
            <div>
                <label>Total Cost ($):</label>
                <span class="pull-right" runat="server" id="TotalPrice"></span>
            </div>
            <hr />
            <div>
                <asp:Button ID="ButtonBuyNow" runat="server" Text="Buy Now" Width="100%" ForeColor="#ffcc00" CssClass="btn btn-success" OnClick="ButtonBuyNow_Click"/>
            </div>
        </div>


    </div>

</asp:Content>
