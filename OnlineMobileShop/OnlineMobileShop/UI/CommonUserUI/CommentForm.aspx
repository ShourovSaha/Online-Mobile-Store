<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommonUserUI/User.Master" AutoEventWireup="true" CodeBehind="CommentForm.aspx.cs" Inherits="OnlineMobileShop.CommectForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="UserMainContentPlaceHolder" runat="server">
    <div>
        <div>
        </div>
        <div>
            <fieldset>
                <legend>Suggestion/ Comments</legend>
                <asp:Panel ID="PanelComments" runat="server">
                    <table>
                        <tr>
                            <td>
                                <label>Subject</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxSubject" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Comments/Suggestion</label>
                            </td>
                            <td>
                                <textarea id="TextAreaCommets" cols="20" rows="2" runat="server"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Your Name</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
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
                                <asp:Button ID="ButtonReset" runat="server" Text="Reset" />
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
