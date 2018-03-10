<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommonUserUI/User.Master" AutoEventWireup="true" CodeBehind="ProductDetailView.aspx.cs" Inherits="OnlineMobileShop.ProductDetailView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContentPlaceHolder" runat="server">
    <div style="padding-top: 30px">
        <!--Image show-->
        <asp:Repeater ID="RepeaterProductViewImagesAndInfo" runat="server" OnItemCommand="RepeaterProductViewImagesAndInfo_ItemCommand">
            <ItemTemplate>
                <div class="col-md-6">
                    <div class="thumbnail" style="max-width: 400px">

                        <img class="" src="../../Image/ProductImages/<%#Eval("ProductID") %>/<%#Eval("ProductImageID") %><%#Eval("ProductImageNameExtention") %>" alt="<%#Eval("ProductImageID") %>" onerror="this.src='../../Image/ProductImages/NoImage.jpg'">
                    </div>
                </div>




                <!--Image show end-->
                <div class="col-md-6">
                    <%--<asp:Repeater ID="RepeaterProductDetail" runat="server">
                <ItemTemplate>--%>
                    <div class="">
                        <h1 class="productView-ProductName"><%#Eval("ProductID") %></h1>
                        <div class="">
                            <p class="text-info">Product by <span class="productView-product-brand"><%#Eval("ManufacturerID") %></span></p>
                        </div>
                        <div>
                            <p>Price : <span class="productView-product-price"><%#Eval("ProductDiscountPrice") %>$&nbsp;</span><span class="productView-product-discountPrice"><%#Eval("ProductPrice") %>$</span></p>
                        </div>
                        <hr />
                        <div class="">
                            <asp:Button ID="ButtonAddtoCart" runat="server" CssClass="btn btn-danger" Text="Add to cart" OnClick="ButtonAddtoCart_Click"/>
                        </div>
                        <hr />
                        <h5 class="text-info">Description</h5>
                        <h3 class="productView-product-descriptionsPoints">RAM : <%#Eval("RAM") %></h3>
                        <h3 class="productView-product-descriptionsPoints">CPU : <%#Eval("CPU") %></h3>
                        <h3 class="productView-product-descriptionsPoints">Chipset : <%#Eval("Chipset") %></h3>
                        <h3 class="productView-product-descriptionsPoints">Primary Camera : <%#Eval("PrimaryCamera") %></h3>
                        <h3 class="productView-product-descriptionsPoints">Secondry Camera : <%#Eval("SecondryCamera") %></h3>
                        <h3 class="productView-product-descriptionsPoints">OS : <%#Eval("OS") %></h3>
                        <h3 class="productView-product-descriptionsPoints">Product Color : <%#Eval("ProductColor") %></h3>
                        <h3 class="productView-product-descriptionsPoints">ProductQuantity : <%#Eval("ProductQuantity") %></h3>

                    </div>
                    <hr />
                    <div>
                        <h5 class="text-danger">Delivery Policy</h5>
                        <h3 class="productView-product-descriptionsPoints">ProductFreeDeliveryStatus : <%#Eval("ProductFreeDeliveryStatus") %></h3>
                        <h3 class="productView-product-descriptionsPoints">Product30DaysReturnStatus : <%#Eval("Product30DaysReturnStatus") %></h3>
                        <%--<h3 class="productView-product-descriptionsPoints">ProductFreeDeliveryStatus : <%#((Char)Eval("ProductFreeDeliveryStatus")=='y'?"Available.":"Not Available!") %></h3>
                        <h3 class="productView-product-descriptionsPoints">Product30DaysReturnStatus : <%#((Char)Eval("Product30DaysReturnStatus")=='y'?"Available":"Not Available!") %></h3>--%>
                    </div>
                    <%--</ItemTemplate>
            </asp:Repeater>--%>
                </div>

            </ItemTemplate>
        </asp:Repeater>

    </div>

    



    <%--<img src="../../Image/ProductImages/Apple iPhone X/Apple iPhone X-01.jpg" alt="01" />--%>
            <%--<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <asp:Repeater ID="RepeaterProductViewImages" runat="server">
                            <ItemTemplate>
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="../../Image/ProductImages/<%#Eval("ProductID") %>/<%#Eval("ProductImageID") %><%#Eval("ProductImageNameExtention") %>" alt="<%#Eval("ProductImageID") %>">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>


                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>--%>
</asp:Content>

