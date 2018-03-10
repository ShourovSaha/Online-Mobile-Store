<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="TestTableForm.aspx.cs" Inherits="OnlineMobileShop.TestTableForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderAdminPanelMainBody" runat="server">
    <div>

        <table style="width: 100%;">
            <tr>
                <td style="height: 289px">
                    <div style="">
                        <asp:panel id="PanelGeneralDetails" runat="server" height="165px" width="298px" horizontalalign="Left">
                <fieldset>
                    <legend class="small" style="width: 310px">General Details</legend>
                    <table>
                        <tr>
                            <td colspan="2">
                                <label>Phone ID</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxPhoneId" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label>Manufecture</label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownListManufecture" runat="server" Width="175px">
                                    <asp:ListItem Value="" Text="--Select One--"></asp:ListItem>
                                    <asp:ListItem Value="1" Text="LG"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="HTC"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label>Network</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxNetwork" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label>Status</label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownListStatus" runat="server" Width="175px">
                                    <asp:ListItem Value="" Text="--Select One--"></asp:ListItem>
                                    <asp:ListItem Value="1" Text="Available"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="Not Available"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label>Published Date</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxPublishedDate" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </asp:panel>
                    </div>
                </td>
                <td style="height: 289px">
                    <div style="">
                        <asp:panel id="PanelSize" runat="server" height="102px" width="302px" style="margin-top: 126px">
                <fieldset>
                    <legend class="small" style="width: 300px">Size</legend>
                    <table>
                        <tr>
                            <td colspan="2">
                                <label>Dimention</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxDimention" runat="server"></asp:TextBox>

                            </td>
                        </tr>

                        <tr>
                            <td colspan="2">
                                <label>Weight</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxWeight" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </asp:panel>
                    </div>
                </td>
                <td style="height: 289px"></td>
            </tr>
            <tr>
                <td>
                     <div>
            <asp:Panel ID="PanelRingtone" runat="server" Height="142px" Width="295px">
                <fieldset>
                    <legend class="small" style="width: 300px">Ringtones</legend>
                    <table>
                        <tr>
                            <td colspan="2">
                                <label>Type</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxRingtoneType" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2">
                                <label>Customization</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxCustomization" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label>Vibration</label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="175px">
                                    <asp:ListItem Value="" Text="--Select One--"></asp:ListItem>
                                    <asp:ListItem Value="1" Text="Yes"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="No"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </asp:Panel>
        </div>
                </td>
                <td>
                    <div>
                        <asp:panel id="PanelDisplay" runat="server" height="105px" width="302px">
                <fieldset>
                    <legend class="small" style="width: 300px">Display</legend>
                    <table>
                        <tr>
                            <td colspan="2">
                                <label>Type</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxDisplayType" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2">
                                <label>Size</label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxDisplaySize" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </asp:panel>
                    </div>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
