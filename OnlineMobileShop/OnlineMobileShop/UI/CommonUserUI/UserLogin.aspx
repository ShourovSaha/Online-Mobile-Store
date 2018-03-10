<%@ Page Title="User Login" Language="C#" MasterPageFile="~/UI/CommonUserUI/User.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="OnlineMobileShop.UserLogin" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUserHeader" runat="server">
    <style type="text/css">
        .login-form {
            width: 340px;
            margin: 50px auto;
        }

            .login-form {
                margin-bottom: 15px;
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
<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContentPlaceHolder" runat="server">
    <div>
         <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label>
        <div class="login-form">
            <h2 class="text-center text-info">Log in</h2>
            <div class="form-group">
                <asp:TextBox ID="TextBoxUserId" CssClass="form-control" runat="server" placeholder="User ID"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxUserId"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBoxPassword" CssClass="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxPassword"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Button ID="ButtonReset" CssClass="btn btn-primary btn-block" runat="server" Text="Log in" OnClick="ButtonLogin_Click" />
            </div>
            <div class="clearfix">
                <%--<label class="pull-left checkbox-inline">--%>
                <asp:Label ID="Label1" runat="server" Text="" Class="pull-left checkbox-inline">
                    <asp:CheckBox ID="CheckBoxLoginRememberMe" runat="server" Text="Remember Me" />
                </asp:Label>
                <asp:Label ID="Label2" runat="server" Text="" Class="pull-right checkbox-inline">
                    <asp:CheckBox ID="CheckBoxIsAdmin" runat="server" Text="I'm Admin" />
                </asp:Label>
                <p class=""><a href="#" class="pull-left">Forgot Password?</a></p>
                
            </div>
            
        </div>
        <p class="text-center"><a href="RegisterUser.aspx">Create an Account</a></p>
    </div>

    <%--        <%--<div>
            <%--<p>Don't have an account ? If no then <a href="UserRegistration.aspx">Sign Up</a>.</p>--%>
    <%--        </div>
        <div>
            <fieldset>
                <legend>User Login</legend>
                <asp:Panel ID="PanelLogin" runat="server" Height="166px" Width="375px">
                    <table>
                        <tr>
                            <td colspan="2">
                                <label>User ID</label>
                            </td>
                            <td style="width: 92px" colspan="2">
                                <asp:TextBox ID="TextBoxUserId" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td colspan="2">
                                <label>Password</label>
                            </td>
                            <td style="width: 92px" colspan="2">
                                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:CheckBox ID="CheckBoxLoginRememberMe" runat="server" Text="Remember Me"/>
                            </td>
                            <td colspan="2">
                                <asp:Button ID="ButtonReset" runat="server" Text="Reset" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Login" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>Don't have an account ? <a href="UserRegistration/UserRegistration.aspx">Sign Up</a></p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </fieldset>
        </div>
        <br />
        <div>
            <p>Forget Your ID or Password ? If yes then <a href="#"></a>Try this</p>
        </div>
    </div>--%>
    <%--    <div class="content-page">
        <div class="col-xs-8">
            <div class="panel panel-default">
                <h3 class="panel-heading">User Login</h3>
                <div class="panel-footer">
                    <p>Forget Password ?<a href="#"> Go Here &rarr;</a></p>
                <div class="panel-body">
                    <label class="">User Id or Email</label>
                    <asp:TextBox ID="TextBoxUserIdOrEmail" runat="server" Class="form-control" placeholder="User Id or Email"></asp:TextBox>
                    <br />
                    <label class="">Password</label>
                    <asp:TextBox ID="TextBoxPassword" runat="server" Class="form-control" placeholder="Password"></asp:TextBox>
                    <br />
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" class="btn btn-success" />
                </div>
                    <p>Crate an Account ?<a href="RegistrationForm.aspx"> Sign Up &rarr;</a></p>
                </div>
            </div>

        </div>
    </div>--%>
</asp:Content>
