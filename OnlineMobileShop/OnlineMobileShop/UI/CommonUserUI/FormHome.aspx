<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormHome.aspx.cs" Inherits="OnlineMobileShop.FormHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <%--    <asp:ContentPlaceHolder ID="ContentPlaceHolderUserHeader" runat="server">

    </asp:ContentPlaceHolder>--%>

    <title>Home</title>


    <!-- Bootstrap core CSS -->
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="../../Content/CustomCss.css" rel="stylesheet" />


    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <!-- Custom styles for this template -->
    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }

        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        .row.content {
            height: 450px;
        }

        /* Set gray background color and 100% height */
        .sidenav_left {
            padding-top: 20px;
            /*margin-top:10px;*/
            background-color: #f1f1f1;
            height: 100%;
            /*top: -34px;*/
            width: 200px;
        }

        .sidenav_right {
            float: right;
            padding-top: 20px;
            /*margin-top:10px;*/
            background-color: #f1f1f1;
            height: 100%;
            /*top: -34px;*/
            width: 200px;
        }

        /* Set black background color, white text and some padding */
        footer {
            background-color: #00ffff;
            color: #000000;
            padding: 15px;
        }

        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }

            .row.content {
                height: auto;
            }
        }

        .carousel {
            background: #2f4357;
            margin-top: 20px;
        }

            .carousel .item {
                min-height: 280px; /* Prevent carousel from being distorted if for some reason image doesn't load */
            }

                .carousel .item img {
                    margin: 0 auto; /* Align slide image horizontally center */
                }

        .bs-example {
            margin: 20px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">


        <!--Top Navbar Starts-->

        <!--Top Navbar Ends-->

        <!--Main Navbar Starts-->
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><span class="text-info">
                        <img alt="SiteLogo" src="../../Image/SiteLogo.png" height="30" /></span> Mobile Store</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class=""><a href="FormHome.aspx">Home</a></li>

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="ProductsView.aspx">Products
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="AllSmartPhonesView.aspx">Smart Phones</a></li>
                                <li><a href="AllFeaturePhones.aspx">Feature Phones </a></li>
                                <li><a href="#">Accessories</a></li>
                            </ul>
                        </li>
                        <%--<li><a href="#">Offers</a></li>--%>
                        <li><a href="Contact.aspx">Contact</a></li>
                        <li>
                            <asp:TextBox ID="TextBoxSearch" CssClass="form-control" runat="server" Text="Search Product&hellip;"></asp:TextBox>
                        </li>
                        <li>
                            <asp:Button ID="ButtonSearch" CssClass="btn btn-default" runat="server" Text="Go" OnClick="ButtonSearch_Click"></asp:Button>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <button id="buttonCart" class="btn btn-danger" type="button">
                                Cart  <span class="badge" id="ProductCount" runat="server"></span>
                            </button>
                        </li>
                        <li>
                            <asp:Button ID="ButtonLogin" runat="server" Text="Log In" CssClass="btn btn-default" OnClick="ButtonLogin_Click" />
                        </li>
                        <li>
                            <asp:Button ID="ButtonSignUp" runat="server" Text="Sign Up" CssClass="btn btn-default" OnClick="ButtonSignUp_Click" />
                        </li>
                        <li>
                            <asp:Button ID="ButtonSignOut" runat="server" Text="Sign Out" CssClass="btn btn-default" OnClick="ButtonSignOut_Click" />
                        </li>
                        <%--<li><a href="UserLogin.aspx"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                    <li><a href="RegisterUser.aspx"><span class=""></span>Sign Up</a></li>--%>
                    </ul>
                </div>
            </div>
        </nav>

        <!--Main Navbar Ends-->

        <!--Mina Body Contents starts-->
        <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label>


        <div class="container-fluid text-center">
            <div class="row content">
                <div class="col-sm-2 sidenav_left">
                    <div class="well">
                        <p>ADS</p>
                    </div>
                    <div class="well">
                        <p>ADS</p>
                    </div>
                </div>
                <div class="col-sm-8 text-left">
                    <!--Content palce for sub pages start here-->
                    <div>

                        <!--Child pages contens-->
                        <!--###################-->
                        <div class="bs-example">
                            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                <!-- Carousel indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarousel" data-slide-to="1"></li>
                                    <li data-target="#myCarousel" data-slide-to="2"></li>
                                </ol>
                                <!-- Wrapper for carousel items -->
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <img src="../../Image/HomePageImages/lg-v30-2.jpg" alt="First Slide" />
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>LG V30</h5>
                                            <p>V30 Introduced with Next Gen Tech...</p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <img src="../../Image/HomePageImages/samsung-galaxy-j7-2017-sm-j730-3.jpg" alt="Second Slide" />
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>J7 Pro</h5>
                                            <p>For Those Who Do...</p>
                                        </div>

                                    </div>
                                    <div class="item">
                                        <img src="../../Image/HomePageImages/Slide02.jpg" alt="Third Slide" />
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>View The Nature</h5>
                                            <p>World First Ultra Amoled Display...</p>
                                        </div>

                                    </div>
                                </div>
                                <!-- Carousel controls -->
                                <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="carousel-control right" href="#myCarousel" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>
                            </div>
                        </div>
                        <!--Mina Body Contents Ends-->

                    </div>
                    <!--Content palce for sub pages End here-->
                </div>
                <!--Right sideNav for Adds-->
                <div class="col-sm-2 sidenav_right">
                    <div class="well">
                        <p>ADS</p>
                    </div>
                    <div class="well">
                        <p>ADS</p>
                    </div>
                </div>
                <!--Right sideNav for Adds Ends-->
            </div>
        </div>







        <!--Footer Starts here-->
        <hr />
        <hr />
        <hr />
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <footer>
                        <p>&copy; Copyright 2017 Shourov Saha</p>
                    </footer>
                </div>
            </div>
        </div>
        <!--Footer Ends here-->

    </form>

    <script src="../../Scripts/jquery-3.2.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script>

        $(document).ready(function myFunction() {
            $("#buttonCart").click(function myFunction() {
                window.location.href = "../RegisteredUserUI/Cart.aspx";
            });
        });
    </script>

</body>
</html>
