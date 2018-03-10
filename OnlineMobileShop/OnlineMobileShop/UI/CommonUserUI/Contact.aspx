<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommonUserUI/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OnlineMobileShop.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderUserHeader" runat="server">
    <style type="text/css">
        .login-form {
            width: 340px;
            margin: 50px auto;
        }

        .login-form {
            margin-bottom: 15px;
            margin-left:260px;
            background: #f2f3f7;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 30px;
        }

            .login-form h2 {
                margin: 0 0 15px;
            }

        .form-control, .btn {
            min-height: 38px;
            border-radius: 2px;
        }

        .btn {
            font-size: 15px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserMainContentPlaceHolder" runat="server">
    <div>
        <div class="col-sm-5">
            <div class="login-form">
                <h2 class="text-center text-info">Contact Address</h2>
                <p class="text-center text-info">
                    Owner : Shourov Saha <br />
                    Email : shourovsaha94@gmail.com <br />
                    Address : Dhaka, Bangladesh
                </p>
            </div>
        </div>
    </div>
</asp:Content>
