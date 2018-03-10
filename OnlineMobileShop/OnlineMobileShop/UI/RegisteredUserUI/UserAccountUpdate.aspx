<%@ Page Title="Update User Account" Language="C#" MasterPageFile="~/UI/RegisteredUserUI/RegisteredUserMasterPage.Master" AutoEventWireup="true" CodeBehind="UserAccountUpdate.aspx.cs" Inherits="OnlineMobileShop.UserAccountUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContentPlaceHolder" runat="server">
    <div>
        <div>
            <asp:Label ID="LabelMsg" runat="server" Text=""></asp:Label>
        </div>
        <div>
            
            <h3>Update Personal Information</h3>
        </div>
        <div>
            <fieldset>
                <legend>Main Info</legend>
                <asp:Panel ID="PanelUserInfo" runat="server" Height="208px">
                    <table>
                        <tr>
                            <td colspan="">
                                <label>First Name</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="">
                                <label>Last Name</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Email</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Password</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Conform Password</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxConformPassword" runat="server"></asp:TextBox>
                            </td>
                        </tr>


                    </table>
                </asp:Panel>
            </fieldset>
        </div>

        <div>
            <fieldset>
                <legend>Personal Details</legend>
                <asp:Panel ID="PanelPersonalDetails" runat="server" Height="285px">
                    <table>
                        <tr>
                            <td>
                                <label>Name</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Birthdate&nbsp; </label>
                            &nbsp;</td>
                            <td>
                                <asp:TextBox ID="TextBoxBirthdate" runat="server"></asp:TextBox>
                                <asp:Calendar ID="MyCalendar" runat="server"></asp:Calendar>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </fieldset>
        </div>

        <div>
            <fieldset>
                <legend>Country Details</legend>
                <asp:Panel ID="PanelCountryDetails" runat="server" BackColor="White" BorderColor="#CCFFCC" Height="227px">
                    <table>
                        <tr>
                            <td>
                                <label>Country</label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownListCountry" runat="server">
                                    <asp:ListItem Value="" Text="---Select One---"></asp:ListItem>
                                    <asp:ListItem Value="" Text="Bangladesh"></asp:ListItem>
                                    <asp:ListItem Value="" Text="India"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>ZIP Code</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxZIPCode" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Address</label>
                            </td>
                            <td>
                                <textarea id="TextAreaAddress" cols="20" rows="2" runat="server"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Phone</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </fieldset>
        </div>

        <div>
            <fieldset>
                <legend>If You Forget Your Password</legend>
                <asp:Panel ID="PanelIfYouForgetYourPassword" runat="server" Height="239px">
                    <table>
                        <tr>
                            <td>
                                <label>Choose a securiy question</label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownListSecurityQuestion" runat="server">
                                    <asp:ListItem Value="" Text="---Select One---"></asp:ListItem>
                                    <asp:ListItem Value="" Text="What is your favourite place ?"></asp:ListItem>
                                    <asp:ListItem Value="" Text="Where you have been born ?"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Your Answer</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxSecurityAnswer" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </fieldset>
        </div>
        <br /><br />
        <div>
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="ButtonReset" runat="server" Text="Reset" />
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="ButtonUpdateUserInfo" runat="server" Text="Update" />
                    </td>
                </tr>
            </table>
        </div>
        <br /><br />
    </div>
    <%--    <div class="content-page">
        <div class="panel panel-default">
            <h3 class="panel-heading">Update Your Information</h3>
            <div class="panel-body">
                <label>Name</label>
                <div>
                    <asp:TextBox ID="TextBoxName" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
                </div>
                <br />
                <label>Email</label>
                <div>
                    <asp:TextBox ID="TextBoxEmail" runat="server" Class="form-control" placeholder="Email"></asp:TextBox>
                </div>
                <br />
                <label>Mobile No</label>
                <div>
                    <asp:TextBox ID="TextBoxMobile" runat="server" Class="form-control" placeholder="Mobile No"></asp:TextBox>
                </div>
                <br />
                <label>Date of Birth</label>
                <div class="input-group">
                    <asp:TextBox ID="TextBoxDateofBirth" runat="server" Class="form-control" placeholder="dd/MM/yyyy"></asp:TextBox>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                    <%--<asp:Calendar ID="MyCalendar" runat="server" Class=""></asp:Calendar>
                </div>
                <br />
                <label>Gender</label>
                <div>
                    <asp:RadioButton ID="RadioButtonMale" Text="Male" runat="server" />&nbsp;
                    <asp:RadioButton ID="RadioButtonFemale" Text="Female" runat="server" TextAlign="Right" />
                </div>
                <br />
                <label>Country</label>
                <div>
                    <asp:DropDownList ID="DropDownListCountry" runat="server" Class="form-control"></asp:DropDownList>

                </div>
                <br />
                <label>State / Province / Region</label>
                <div>
                    <asp:TextBox ID="TextBoxState" runat="server" Class="form-control" placeholder="State / Province / Region"></asp:TextBox>
                </div>
                <br />
                <label>Zip Code</label>
                <div>
                    <asp:TextBox ID="TextBoxZipCode" runat="server" Class="form-control" placeholder="Zip Code"></asp:TextBox>
                </div>
                <br />
                <label>Current Password</label>
                <div>
                    <asp:TextBox ID="TextBoxResetPassword" runat="server" Class="form-control" placeholder="Current Password"></asp:TextBox>
                </div>
                <br />
                <label>New Password</label>
                <div>
                    <asp:TextBox ID="TextBoxNewPassword" runat="server" Class="form-control" placeholder="New Password"></asp:TextBox>
                </div>
                <br />
                <label>Comform Password</label>
                <div>
                    <asp:TextBox ID="TextBoxConformPassword" runat="server" Class="form-control" placeholder="Comform Password"></asp:TextBox>
                </div>
                <br />
                <asp:Button ID="ButtonUpdate" runat="server" Text="Update" CssClass="btn btn-success" />
            </div>
        </div>
    </div>--%>
</asp:Content>
