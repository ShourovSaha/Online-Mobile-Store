<%@ Page Title="Add New Products" Language="C#" MasterPageFile="~/UI/AdminUI/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AddNewProductForm.aspx.cs" Inherits="OnlineMobileShop.WebForm4" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolderAdminPanelHeader">
    <style type="text/css">
        .GridBox1 {
            /*padding: 20px;
            margin: 2px;*/
            /*font-size: 32px;
            font-weight: bold;*/
            /*text-align: center;*/
            /*background: #dbdfe5;*/
        }

        .GridBox2 {
            /*margin: 2px;
            padding: 20px;*/
            /*background: #ffebcc;*/
        }
    </style>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#birthdate").datepicker({
                autoclose: true,
                format: 'yyyy-mm-dd',
                todayHighlight: true,
                clearBtn: true,
                orientation: 'bottom'
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderAdminPanelMainBody" runat="server">
    <div class="container">
        <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label>
        <br />
        <h2 class="text-info">Add New product</h2>
        <hr />
        <div class="row">
            <!--***GeneralInfo-->
            <div class="">
                <h5 class="text-info">Size</h5>
                <hr />
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="LabelPhoneID" runat="server" Text="Phone Model" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxPhoneID" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxPhoneID"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="LabelManufacturer" runat="server" Text="Manufacturer" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:DropDownList ID="DropDownListManufacturer" runat="server" CssClass="form-control"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="DropDownListManufacturer"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Catagory" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:DropDownList ID="DropDownListCatagory" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownListCatagory_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="DropDownListCatagory"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="SubCatagory" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:DropDownList ID="DropDownListSubCatagory" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownListSubCatagory_SelectedIndexChanged"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="DropDownListSubCatagory"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>

            <!--Available Status-->
            <div class="">
                <h5 class="text-info">Available Status</h5>
                <hr />
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Status" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:DropDownList ID="DropDownListAvailableStatus" runat="server" CssClass="form-control">
                                <asp:ListItem Value="" Text="--Select--"></asp:ListItem>
                                <asp:ListItem Value="Available" Text="Available "></asp:ListItem>
                                <asp:ListItem Value="NotAvailable" Text="NotAvailable "></asp:ListItem>
                                <asp:ListItem Value="Commingsoon" Text="Comming soon..."></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="DropDownListAvailableStatus"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="LabelPublishDate" runat="server" Text="Published Date" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <div class="input-group" id="birthdate">
                                <asp:TextBox ID="TextBoxPublishDate" runat="server" CssClass="form-control"></asp:TextBox>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                                <%--                                <asp:Calendar ID="Calendar1" runat="server" CssClass=""></asp:Calendar>--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxPublishDate"></asp:RequiredFieldValidator>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--Network-->
            <div class="">
                <h5 class="text-info">Network</h5>
                <hr />
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="LabelNetwork" runat="server" Text="Network" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxNetwork" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxNetwork"></asp:RequiredFieldValidator>
                        </div>
                    </div>


                    <div class="form-group">
                        <asp:Label ID="Label28" runat="server" Text="GPRS" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:RadioButtonList ID="RadioButtonListGPRS" runat="server" RepeatDirection="Horizontal" CssClass="with-gap">
                                <asp:ListItem Value="y" Text="Yes"></asp:ListItem>
                                <asp:ListItem Value="n" Text="No"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="RadioButtonListGPRS"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label31" runat="server" Text="HSCSD" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:RadioButtonList ID="RadioButtonListHSCSD" runat="server" RepeatDirection="Horizontal" CssClass="with-gap">
                                <asp:ListItem Value="y" Text="Yes"></asp:ListItem>
                                <asp:ListItem Value="n" Text="No"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="RadioButtonListHSCSD"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label32" runat="server" Text="EDGE" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:RadioButtonList ID="RadioButtonListEDGE" runat="server" RepeatDirection="Horizontal" CssClass="with-gap">
                                <asp:ListItem Value="y" Text="Yes"></asp:ListItem>
                                <asp:ListItem Value="n" Text="No"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="RadioButtonListEDGE"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label33" runat="server" Text="3G" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:RadioButtonList ID="RadioButtonList3G" runat="server" RepeatDirection="Horizontal" CssClass="with-gap">
                                <asp:ListItem Value="y" Text="Yes"></asp:ListItem>
                                <asp:ListItem Value="n" Text="No"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="RadioButtonList3G"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="4G" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:RadioButtonList ID="RadioButtonList4G" runat="server" RepeatDirection="Horizontal" CssClass="with-gap">
                                <asp:ListItem Value="y" Text="Yes"></asp:ListItem>
                                <asp:ListItem Value="n" Text="No"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="RadioButtonList4G"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                
                
                <div class="form-group">
                    <asp:Label ID="Label35" runat="server" Text="Speed" CssClass="col-sm-3 control-label"></asp:Label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="TextBoxSpeed" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxSpeed"></asp:RequiredFieldValidator>
                    </div>
                </div>

            </div>
            <br />
            <br />
            <br />

            <!--***Display-->
            <div class="">
                <h5 class="text-info">Body & Display</h5>
                <hr />
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="Label11" runat="server" Text="Dimention" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxDimention" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxDimention"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label13" runat="server" Text="Weigth (Gram)" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxWeigth" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxWeigth"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="Display Type" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxDisplayType" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxDisplayType"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" Text="Display Size" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxDisplaySize" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxDisplaySize"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="Display Resolution" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxDisplayResolution" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxDisplayResolution"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>
            </div>
            <!--***-->
            <div class="clearfix visible-sm-block"></div>
            <!--***Platform-->
            <div class="">
                <h5 class="text-info">Platform</h5>
                <hr />
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="Label20" runat="server" Text="OS" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxOS" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxOS"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label21" runat="server" Text="Chipset" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxChipset" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxChipset"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label12" runat="server" Text="CPU" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxCPU" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxCPU"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label14" runat="server" Text="GPU" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxGPU" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxGPU"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>
            <!--***Memory-->
            <div class="clearfix visible-sm-block"></div>

            <div class="">
                <h5 class="text-info">Memory</h5>
                <hr />
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="Label22" runat="server" Text="RAM" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxRAM" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxRAM"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label23" runat="server" Text="Internal Memory" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxInternalMemory" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxInternalMemory"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label15" runat="server" Text="CardSlot" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxCardSlot" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxCardSlot"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <!--***Camera-->
            <div class="">
                <h5 class="text-info">Camera</h5>
                <hr />
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="Label25" runat="server" Text="Primary Camera" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxPrimaryCamera" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxPrimaryCamera"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label27" runat="server" Text="Camera Features" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxCameraFeatures" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxCameraFeatures"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label26" runat="server" Text="Secondry Camera" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxSecondryCamera" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxSecondryCamera"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label16" runat="server" Text="Video Camera" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxVideoCamera" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxVideoCamera"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>

            
            <!--***Sound-->

            <div class="">
                <h5 class="text-info">Sound</h5>
                <hr />
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="Label17" runat="server" Text="RingtoneType" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxRingtoneType" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxRingtoneType"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label18" runat="server" Text="Loudspeaker" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:RadioButtonList ID="RadioButtonListLoudspeaker" runat="server" RepeatDirection="Horizontal" CssClass="with-gap">
                                <asp:ListItem Value="y" Text="Yes"></asp:ListItem>
                                <asp:ListItem Value="n" Text="No"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="RadioButtonListLoudspeaker"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label24" runat="server" Text="3.5 Ear Phone jack" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:RadioButtonList ID="RadioButtonListEarPhonejack" runat="server" RepeatDirection="Horizontal" CssClass="with-gap">
                                <asp:ListItem Value="y" Text="Yes"></asp:ListItem>
                                <asp:ListItem Value="n" Text="No"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="RadioButtonListEarPhonejack"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label30" runat="server" Text="Vaibration" CssClass="col-sm-3 control-label"></asp:Label>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="RadioButtonListVibration" runat="server" RepeatDirection="Horizontal" CssClass="with-gap">
                            <asp:ListItem Value="y" Text="Yes"></asp:ListItem>
                            <asp:ListItem Value="n" Text="No"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="RadioButtonListVibration"></asp:RequiredFieldValidator>
                    </div>
                </div>

            </div>
            <br />
            <br />
            <br />
            <!--***Communication-->
            <div class="">
                <h5 class="text-info">Communication</h5>
                <hr />
                <div class="form-horizontal">


                    <div class="form-group">
                        <asp:Label ID="Label34" runat="server" Text="WLAN" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:RadioButtonList ID="RadioButtonListWLAN" runat="server" RepeatDirection="Horizontal" CssClass="with-gap">
                                <asp:ListItem Value="y" Text="Yes"></asp:ListItem>
                                <asp:ListItem Value="n" Text="No"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="RadioButtonListWLAN"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label36" runat="server" Text="Bluetooth" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxBluetooth" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxBluetooth"></asp:RequiredFieldValidator>
                        </div>
                    </div>



                    <div class="form-group">
                        <asp:Label ID="Label29" runat="server" Text="USB" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxUSB" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxUSB"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="GPS" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxGPS" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxGPS"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label39" runat="server" Text="Radio" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:RadioButtonList ID="RadioButtonListRadio" runat="server" RepeatDirection="Horizontal" CssClass="with-gap">
                                <asp:ListItem Value="y" Text="Yes"></asp:ListItem>
                                <asp:ListItem Value="n" Text="No"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="RadioButtonListRadio"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <!--***Feature-->
            <div class="">
                <h5 class="text-info">Features</h5>
                <hr />
                <div class="form-horizontal">

                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Sensor" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxSensor" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxSensor"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label37" runat="server" Text="Messaging" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxMessaging" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxMessaging"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label38" runat="server" Text="Browser" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxBrowser" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxBrowser"></asp:RequiredFieldValidator>
                        </div>
                    </div>



                    <div class="form-group">
                        <asp:Label ID="Label44" runat="server" Text="Language" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxLanguage" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxLanguage"></asp:RequiredFieldValidator>
                        </div>
                    </div>



                </div>
            </div>
            <div class="clearfix visible-sm-block"></div>

            <!--***battery-->
            <div class="">
                <h5 class="text-info">Battery</h5>
                <hr />
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="Label46" runat="server" Text="Battery" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxBattery" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxBattery"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label47" runat="server" Text="Stand-by (Hour)" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxStandby" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxStandby"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label48" runat="server" Text="Talk-time (Hour)" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxTalktime" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxTalktime"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label19" runat="server" Text="Music Play Time (Hour)" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxMusicPlayTime" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxMusicPlayTime"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix visible-sm-block"></div>


            <!--***Stock&Price-->
            <div class="">
                <h5 class="text-info">Stock</h5>
                <hr />
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="Label43" runat="server" Text="Colors" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxColors" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxColors"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label52" runat="server" Text="Price ($)" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxPrice" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxPrice"></asp:RequiredFieldValidator>
                        </div>
                    </div>


                    <div class="form-group">
                        <asp:Label ID="Label54" runat="server" Text="Discount Price ($)" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxDiscountPrice" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator58" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxDiscountPrice"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label53" runat="server" Text="Quantity" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBoxQuantity" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator57" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="TextBoxQuantity"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    
                </div>
            </div>


            <!--***Image-->

            <div class="">
                
                <h5 class="text-info">Image</h5>
                <hr />
                <div class="form-horizontal">

                    <div class="form-group">
                        <asp:Label ID="LabelImage01SaveMessage" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Label49" runat="server" Text="ProductImage01" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:FileUpload ID="FileUploadProductImage01" runat="server" CssClass="btn btn-default" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator53" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="FileUploadProductImage01"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                         <asp:Label ID="LabelImage02SaveMessage" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Label50" runat="server" Text="ProductImage02" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:FileUpload ID="FileUploadProductImage02" runat="server" CssClass="btn btn-default" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="FileUploadProductImage02"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                         <asp:Label ID="LabelImage03SaveMessage" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Label51" runat="server" Text="ProductImage01" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:FileUpload ID="FileUploadProductImage03" runat="server" CssClass="btn btn-default" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="FileUploadProductImage03"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>
            <!--***Delivary Status-->
            <div class="">
                <h5 class="text-info">Delivary Status</h5>
                <hr />
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="Label333" runat="server" Text="Free Delivery" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:RadioButtonList ID="RadioButtonListFreeDelivery" runat="server" RepeatDirection="Horizontal" CssClass="with-gap">
                                <asp:ListItem Value="y" Text="Yes"></asp:ListItem>
                                <asp:ListItem Value="n" Text="No"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator333" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="RadioButtonListFreeDelivery"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="30 Days Return Policy" CssClass="col-sm-3 control-label"></asp:Label>
                        <div class="col-sm-6">
                            <asp:RadioButtonList ID="RadioButtonList30DaysReturnPolicy" runat="server" RepeatDirection="Horizontal" CssClass="with-gap">
                                <asp:ListItem Value="y" Text="Yes"></asp:ListItem>
                                <asp:ListItem Value="n" Text="No"></asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Required Field" CssClass="text-danger" ControlToValidate="RadioButtonList30DaysReturnPolicy"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>

            <br />

            <div class="form-group">
                <div class="col-sm-6"></div>
                <div class="col-sm-6">
                    <asp:Button ID="ButtonReset" runat="server" Text="Reset" CssClass="btn btn-success" />&nbsp;&nbsp;
                    <asp:Button ID="ButtonAddProduct" runat="server" Text="Add" CssClass="btn btn-success" OnClick="ButtonAddProduct_Click" />
                </div>
            </div>
            <br />
            <!--***End***-->
        </div>
        <!--***-->
    </div>
    <!--***-->
    <!--***-->

    <br />
    <br />

</asp:Content>


