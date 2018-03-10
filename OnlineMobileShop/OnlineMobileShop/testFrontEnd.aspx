<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/testFrontEnd.aspx.cs" Inherits="OnlineMobileShop.testFrontEnd"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Basic HTML File</title>
    <link href="Content/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" /><!--Optional-->
    <style type="text/css">
        .demo-nav{
            margin : 10px;
        }
        .demo-content1{
            /*padding :15px;
            margin :10px;*/
            background : #ffd6cc;
            min-height : 600px;
            font-size : 18px;
            border : 1px solid black;
            
        }
        .demo-content2{
            
            /*margin-bottom:20px;*/
            background : #ffe6cc;
            border : 1px solid green;
            min-height : 280px;
            font-size : 18px;
        }
        @media screen and (max-width : 991px){
            .flexible{
                min-height:150px;
            }
        }
        .myNavbar{
            width : 960px;
        }
        .body{
            width : 960px;
            
        }
    </style>
</head>
<body>
   <%-- <div class="demo-nav">
        <ul class="nav nav-pills">
            <li class="active"><a href="#"><span class=" glyphicon glyphicon-home"></span> Home</a></li>
            <li class=""><a href="#"><span class="glyphicon glyphicon-lamp"></span> About</a></li>
            <li class="dropdown">
                <a data-target="" href="#" data-toggle ="dropdown" class="dropdown-toggle">Catagory 
                    <span class="caret"></span> </a>
                <ul class="dropdown-menu nav-pills nav-justified">
                    <li><a href="#">Mobile</a></li>
                    <li><a href="#">Laptop</a></li>
                    <li><a href="#">Desktop</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Others</a></li>
                </ul>
            </li>
        </ul>
    </div>--%>
     <nav class="top-bar">
      <div class="container">
        <div class="row">
        <div class="col-sm-4 hidden-xs">
            <span class="nav-text">
                <i class="fa fa-phone" aria-hidden="true"></i>  +123 4567 8910 
                <i class="fa fa-envelope" aria-hidden="true"></i> sumi9xm@gmail.com</span>
            </div>
      <%--  <div class="col-sm-4 text-center">
            <a href="#" class="social"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            <a href="#" class="social"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            <a href="#" class="social"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            <a href="#" class="social"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
            <a href="#" class="social"><i class="fa fa-google" aria-hidden="true"></i></a>
            <a href="#" class="social"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
            </div>--%>
        <div class="col-sm-4 text-right hidden-xs">
                <ul class="tools">                    
                <li class="dropdown">
                 <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-globe" aria-hidden="true"></i> Language<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Russian</a></li>
                      <li><a href="#">French</a></li>
                      <li><a href="#">Mandarin</a></li>
                      <li><a href="#">Italian</a></li>
                      <li><a href="#">Gorgean</a></li>
                  </ul>
                </li>
                    
                <li class="dropdown">
                 <a class="" href="#"><i class="fa fa-user" aria-hidden="true"></i> My Account</a>                  
                </li>
                    
                <li class="dropdown">
                 <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-usd" aria-hidden="true"></i> Currency<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">USD</a></li>
                      <li><a href="#">EUR</a></li>
                      <li><a href="#">$</a></li>
                  </ul>
                </li>                    
                </ul>
              </div>
        </div>
      </div>
    </nav>
    <!--Main Navbar Ends-->
    <nav class="navbar navbar-inverse navbar-static-top">
        <div class="navba-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="FormHome.aspx" class="navbar-header">MySite</a>
        </div>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="nav nav-pills">
                <li><a href="#" class="active">Home</a></li>
                <li><a href="#" class="">About</a></li>
                <li><a href="#" class="">Products</a></li>
                <li>
                    <form class="navbar-form navbar-right">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search"/>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                            </span>
                        </div>
                    </form>
                </li>
                <li class="nav navbar-right"><a href="#">Login</a></li>
            </ul>
        </div>
            <%--<ul class="nav navbar-nav navbar-right">
                <li><a href="#">Login</a></li>
            </ul>--%>
        
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-default">
                    <h1 class="panel-heading">My Website</h1>
                    <div class="panel-body">
                        <p>
                        The World Wide Web (abbreviated WWW or the Web) is an information space where documents and other web resources are identified by Uniform Resource Locators (URLs), interlinked by hypertext links, and can be accessed via the Internet.[1] English scientist Tim Berners-Lee invented the World Wide Web in 1989. He wrote the first web browser computer program in 1990 while employed at CERN in Switzerland.[2][3] The Web browser was released outside CERN in 1991, first to other research institutions starting in January 1991 and to the general public on the Internet in August 1991.
                        </p>
                        <a href="FormHome.aspx" target="_self" class="btn btn-success">Start here</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="panel panel-danger">
                    <h2 class="panel-heading">Mobile</h2>
                    <div class="panel-body">
                        <p>
                            A mobile phone is a wireless handheld device that allows users to make calls and send text messages, among other features. The earliest generation of mobile phones could only make and receive calls. Today’s mobile phones, however, are packed with many additional features, such as web browsers, games, cameras, video players and even navigational systems.
                        </p>
                        <a href="FormHome.aspx" target="_blank" class="btn btn-success">Learn more &raquo</a>
                    </div>
                    
                </div>
                
            </div>
            <div class="col-sm-4">
                <div class="panel panel-danger">
                    <h2 class="panel-heading">Mobile</h2>
                    <div class="panel-body">
                        <p>
                            A mobile phone is a wireless handheld device that allows users to make calls and send text messages, among other features. The earliest generation of mobile phones could only make and receive calls. Today’s mobile phones, however, are packed with many additional features, such as web browsers, games, cameras, video players and even navigational systems.
                        </p>
                        <a href="FormHome.aspx" target="_blank" class="btn btn-success">Learn more &raquo</a>
                    </div>
                    
                </div>
                
            </div>
            <div class="col-sm-4">
                <div class="jumbotron">
                     <h2>Desktop</h2>
                    <p>
                        The desktop is the primary user interface of a computer. When you boot up your computer, the desktop is displayed once the startup process is complete. It includes the desktop background (or wallpaper) and icons of files and folders you may have saved to the desktop. In Windows, the desktop includes a task bar, which is located at the bottom of the screen by default. In Mac OS X, the desktop includes a menu bar at the top of the screen and the Dock at the bottom.
                    </p>
                    <a href="FormHome.aspx" target="_self" class="btn btn-success">Learn more &raquo</a>
                </div>
               
            </div>
        </div>
    </div>
 <%--   <hr />--%>
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="panel panel-danger">
                    <h2 class="panel-heading">Mobile</h2>
                    <div class="panel-body">
                        <p>
                            A mobile phone is a wireless handheld device that allows users to make calls and send text messages, among other features. The earliest generation of mobile phones could only make and receive calls. Today’s mobile phones, however, are packed with many additional features, such as web browsers, games, cameras, video players and even navigational systems.
                        </p>
                        <a href="FormHome.aspx" target="_blank" class="btn btn-success">Learn more &raquo</a>
                    </div>
                    
                </div>
                
            </div>
            <div class="col-sm-4">
                <h2>Laptop</h2>
                <p>
                    A laptop computer, sometimes called a notebook computer by manufacturers, is a battery- or AC-powered personal computer generally smaller than a briefcase that can easily be transported and conveniently used in temporary spaces such as on airplanes, in libraries, temporary offices, and at meetings. A laptop typically weighs less than 5 pounds and is 3 inches or less in thickness. Among the best-known makers of laptop computers are IBM, Apple, Compaq, Dell, and Toshiba.
                </p>
                <a href="FormHome.aspx" target="_blank" class="btn btn-success">Learn more &raquo</a>
            </div>
            <div class="col-sm-4">
                <h2>Desktop</h2>
                <p>
                    The desktop is the primary user interface of a computer. When you boot up your computer, the desktop is displayed once the startup process is complete. It includes the desktop background (or wallpaper) and icons of files and folders you may have saved to the desktop. In Windows, the desktop includes a task bar, which is located at the bottom of the screen by default. In Mac OS X, the desktop includes a menu bar at the top of the screen and the Dock at the bottom.
                </p>
                <a href="FormHome.aspx" target="_self" class="btn btn-success">Learn more &raquo</a>
            </div>
        </div>
    </div>
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

    <%--<div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="demo-content1"></div>
            </div>
            <div class="col-sm-3">
                <div class="row">
                    <div class="demo-content2"></div>
                </div>
                <div class="row">
                    <div class="demo-content2"></div>
                </div>
            </div>
        </div>--%>

        <%--<div class="row">
            <div class="col-sm-9 col-md-8">
                <div class="demo-content1">hi 9 8</div>
            </div>
            <div class="col-sm-3 col-md-5">
                <div class="demo-content2">hello 3 5</div>
            </div>
            <div class="col-sm-4 col-md-3">
                <div class="demo-content1 flexible"> kk 4 5</div>
            </div>
        </div>--%>
        <%--<div class="row">
            <div class="col-sm-3">
                <div class="demo-content1">hi</div>
            </div>
            <div class="col-sm-6">
                <div class="demo-content2">hi</div>
            </div>
            <div class="col-sm-3">
                <div class="demo-content1">hello</div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="demo-content1">nnn</div>
            </div>
        </div>--%>
   <%-- </div>--%>
    <!--JS link-->
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>