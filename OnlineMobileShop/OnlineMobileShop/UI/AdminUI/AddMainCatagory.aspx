<%@ Page Title="Add Main-Catagory" Language="C#" MasterPageFile="~/UI/AdminUI/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AddMainCatagory.aspx.cs" Inherits="OnlineMobileShop.AddMainCatagory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderAdminPanelHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderAdminPanelMainBody" runat="server">
    <div class="container">
        <asp:Label ID="LabelMsg" runat="server" Text="" CssClass="text-success"></asp:Label>
        <h3 class="text-info">Add Main-Catagory</h3>
        <hr />
        <div class="row">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="LabelManufecturer" runat="server" Text="Main-Catagory ID" CssClass="col-sm-3 control-label"></asp:Label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TextBoxMainCatagoryID" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxMainCatagoryID"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Main-Catagory Name" CssClass="col-sm-3 control-label"></asp:Label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TextBoxMainCatagoryName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxMainCatagoryName"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <br />

            <div class="form-group">
                <div class="col-sm-7"></div>
                <div class="col-sm-3">
                    <asp:Button ID="ButtonReset" runat="server" Text="Reset" CssClass="btn btn-success" />&nbsp;&nbsp;
                    <asp:Button ID="ButtonAddMainCatagory" runat="server" Text="Add" CssClass="btn btn-success" OnClick="ButtonAddMainCatagory_Click" />
                </div>
            </div>
            <br />
        </div>

        <!--Show Database Data here-->
        <h3 class="text-info">Main Category List</h3>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Categories</div>
            <asp:Repeater ID="RepeaterMainCatagory" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Catagory Name</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>

                <ItemTemplate>
                    <tr>
                        <td><%#Eval("SerialID") %></td>
                        <td><%# Eval("CatagoryName")%></td>
                        <td><a><span class="glyphicon glyphicon-edit"></span></a></td>
                        <td><a><span class="glyphicon glyphicon-trash"></span></a></td>
                    </tr>
                </ItemTemplate>

                <FooterTemplate>
                    <!-- Table -->
                    </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
