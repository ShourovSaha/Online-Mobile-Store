<%@ Page Title="Add Sub-Catagory" Language="C#" MasterPageFile="~/UI/AdminUI/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AddSubCatagory.aspx.cs" Inherits="OnlineMobileShop.AddSubCatagory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderAdminPanelHeader" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderAdminPanelMainBody" runat="server">
    <div class="container">
        <asp:Label ID="LabelMsg" runat="server" Text="" CssClass="text-success"></asp:Label>
        
        <h3 class="text-info">Add Sub-Catagory</h3>
        <hr />
        <div class="row">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Main-Catagory" CssClass="col-sm-3 control-label"></asp:Label>
                    <div class="col-sm-6">
                        <asp:DropDownList ID="DropDownListMainCatagory" runat="server" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="DropDownListMainCatagory"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Sub-Catagory ID" CssClass="col-sm-3 control-label"></asp:Label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TextBoxSubCatagoryID" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxSubCatagoryID"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Sub-Catagory Name" CssClass="col-sm-3 control-label"></asp:Label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TextBoxSubCatagoryName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxSubCatagoryName"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <br />

            <div class="form-group">
                <div class="col-sm-7"></div>
                <div class="col-sm-3">
                    <asp:Button ID="ButtonReset" runat="server" Text="Reset" CssClass="btn btn-success" />&nbsp;&nbsp;
                    <asp:Button ID="ButtonAddSubCatagory" runat="server" Text="Add" CssClass="btn btn-success" OnClick="ButtonAddSubCatagory_Click" />
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
            <asp:Repeater ID="RepeaterMainCatagoryAndSubCatagory" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Sub-Category Name</th>
                                <th>Main-Category Name</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>

                <ItemTemplate>
                    <tr>
                        <td><%# Eval("SerialID") %></td>
                        <td><%# Eval("SubCatagoryName") %></td>
                        <td><%# Eval("MainCatagoryName")%></td>
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
</asp:Content>
