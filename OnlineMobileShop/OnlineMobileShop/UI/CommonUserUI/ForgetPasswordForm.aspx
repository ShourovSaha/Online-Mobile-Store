<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommonUserUI/User.Master" AutoEventWireup="true" CodeBehind="ForgetPasswordForm.aspx.cs" Inherits="OnlineMobileShop.ForgetPasswordForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContentPlaceHolder" runat="server">
    <div>
        <div>
            <fieldset>
                <legend>Password Recovery</legend>
                <asp:Panel ID="PanelPasswordRecovery" Height="100%" Width="100%" runat="server">
                    <table>
                        <tr>
                            <td>
                                <label>Email</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxEmail" runat="server" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Security Question</label>
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
<%--                                <asp:Button ID="ButtonReset" runat="server" Text="Reset" />--%>
                            </td>
                            <td>
                                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </fieldset>
        </div>
    </div>
</asp:Content>
