<%@ Page Title="User Registration" Language="C#" MasterPageFile="~/UI/CommonUserUI/User.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="OnlineMobileShop.UI.CommonUserUI.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUserHeader" runat="server">
    <style type="text/css">
        /*body {
            color: #fff;
            background: #63738a;
            font-family: 'Roboto', sans-serif;
        }*/

        .form-control {
            height: 40px;
            box-shadow: none;
            color: #969fa4;
        }

            .form-control:focus {
                border-color: #5cb85c;
            }

        .form-control, .btn {
            border-radius: 2px;
        }

        .signup-form {
            width: 450px;
            margin-top:20px;
            margin-left:220px;
            /*margin: auto;
            padding: 30px 40px 10px 0px;*/
        }

            .signup-form h2 {
                color: #636363;
                margin: 0 0 15px;
                position: relative;
                text-align: center;
            }

                .signup-form h2:before, .signup-form h2:after {
                    content: "";
                    height: 2px;
                    width: 30%;
                    background: #d4d4d4;
                    position: absolute;
                    top: 50%;
                    z-index: 2;
                }

                .signup-form h2:before {
                    left: 0;
                }

                .signup-form h2:after {
                    right: 0;
                }

            .signup-form .hint-text {
                color: #999;
                margin-bottom: 30px;
                text-align: center;
            }

        .signup-form {
            color: #999;
            border-radius: 3px;
            margin-bottom: 15px;
            background: #f2f3f7;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 30px;
        }

            .signup-form .form-group {
                margin-bottom: 20px;
            }

            .signup-form input[type="checkbox"] {
                margin-top: 3px;
            }

            .signup-form .btn {
                font-size: 16px;
                font-weight: bold;
                min-width: 140px;
                outline: none !important;
            }

            .signup-form .row div:first-child {
                padding-right: 10px;
            }

            .signup-form .row div:last-child {
                padding-left: 10px;
            }

            .signup-form a {
                color: #fff;
                text-decoration: underline;
            }

                .signup-form a:hover {
                    text-decoration: none;
                }

            .signup-form a {
                color: #5cb85c;
                text-decoration: none;
            }

                .signup-form a:hover {
                    text-decoration: underline;
                }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContentPlaceHolder" runat="server">
    <div class="container">
         <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label>
        <div class="signup-form">

            <h2>Register</h2>
            <p class="hint-text">Create your account. It's free and only takes a minute.</p>

            <div class="form-group">

                <div class="form-group">
                    <asp:TextBox ID="TextBoxUserId" CssClass="form-control" runat="server" placeholder="User ID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxUserId"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-6">
                            <asp:TextBox ID="TextBoxFirstName" CssClass="form-control" runat="server" placeholder="First Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxFirstName"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-xs-6">
                            <asp:TextBox ID="TextBoxLastName" CssClass="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxLastName"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <asp:TextBox ID="TextBoxEmail" CssClass="form-control" runat="server" TextMode="Email" placeholder="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxEmail"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="TextBoxPassword" CssClass="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxPassword"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="TextBoxConformPassword" CssClass="form-control" runat="server" TextMode="Password" placeholder="Conform Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxConformPassword"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorPasswords" runat="server"
                        ErrorMessage="Password Didn't Match !"
                        ControlToValidate="TextBoxConformPassword" ControlToCompare="TextBoxPassword"
                        Operator="Equal" Type="String" ForeColor="Red"></asp:CompareValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="" Class="pull-left checkbox-inline">
                        <asp:CheckBox ID="CheckBoxTermsAndCondition" runat="server" Text="Privacy Policy" />
                        I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a>
                    </asp:Label>
                    <%--<label class="checkbox-inline">
                            <input type="checkbox" required="required">
                            I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>--%>
                </div>
                <div class="form-group">
                    <asp:Button ID="ButtonRegister" CssClass="btn btn-success btn-block" runat="server" Text="Register Now" OnClick="ButtonSubmit_Click" />
                </div>

            </div>


        </div>
        <div class="" style="margin-left:330px; margin-bottom:50px;">Already have an account? <a href="UserLogin.aspx">Sign in</a>
            
        </div>
    </div>


    <%--<div class="col-md-12">
        <div class="text-center">
            <p>Already Registred ? If yes then <a href="UserLogin.aspx">Login</a>.</p>
        </div>
        <div>
            <asp:Panel ID="PanelSize" runat="server" Height="" Width="637px" Style="margin-top: 126px">
                <fieldset>
                    <legend class="" style="width: 300px">User Registration</legend>
                    <table>
                        <tr>
                            <td colspan="2">
                                <label>User ID</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxUserId" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label>First Name</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label>Last Name</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label>Email</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label>Password</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label>Conform Password</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxConformPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidatorPasswords" runat="server" 
                                    ErrorMessage="Password Didn't Match !"
                                    ControlToValidate="TextBoxConformPassword" ControlToCompare="TextBoxPassword"
                                    Operator="Equal" Type="String" ForeColor="Red"
                                    ></asp:CompareValidator>
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="ButtonReset" runat="server" Text="Reset" />
                            </td>
                            <td colspan="2">
                                <asp:Button ID="ButtonRegister" runat="server" Text="Register" OnClick="ButtonSubmit_Click" />
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </asp:Panel>
            <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label>
        </div>
            </div>
    </div>--%>
</asp:Content>
