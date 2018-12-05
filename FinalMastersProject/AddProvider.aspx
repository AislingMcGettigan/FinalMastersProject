<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProvider.aspx.cs" Inherits="FinalMastersProject.AddProvider" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 style="font-size: x-large"><strong>Add Your Service</strong></h2>
    <h6><strong>A MinderFinder staff member will review your request and approve your service within 24hours</strong></h6>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblName" CssClass="col-sm-12" runat="server" Text="Name: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbName" CssClass="col-sm-12" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblType" CssClass="col-sm-12" runat="server" Text="Type: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:DropDownList ID="ddlType" CssClass="col-sm-12" runat="server" DataSourceID="SqlDataSource1" DataTextField="type" DataValueField="Id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [type] FROM [ProviderType]"></asp:SqlDataSource>
            </div>
            <div class="col-sm-1"></div>
        </div>
    
        <br />

        <div class="row">
            <div class="col-sm-3" style="text-align:right">
                <asp:Label ID="lblDescription"  runat="server" Text="Description: "></asp:Label>
            </div>
            <div class="col-sm-9">
                <asp:TextBox id="tbDescription" TextMode="multiline" Columns="100" Rows="8" runat="server" />
            </div>          
            <div class="col-sm-1"></div>
        </div>

        <hr />

        <br />

        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblAddress1" CssClass="col-sm-12" runat="server" Text="Address Line 1: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbAddress1" CssClass="col-sm-12" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblAddress2" CssClass="col-sm-12" runat="server" Text="Address Line 2: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbAddress2" CssClass="col-sm-12" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-1"></div>
        </div>

        <br />

        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblTown" CssClass="col-sm-12" runat="server" Text="Town/City: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbTown" CssClass="col-sm-12" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblCounty" CssClass="col-sm-12" runat="server" Text="County: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbCounty" CssClass="col-sm-12" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-1"></div>
        </div>

        <br />

        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblCountry" runat="server" Text="Country: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbCountry" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblPostcode" runat="server" Text="Postcode: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbPostcode" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-1"></div>
        </div>

        <hr />

        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblPrice" runat="server" Text="Price per day: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbPrice" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblUploadImage" runat="server" Text="Upload Image: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:FileUpload ID="fuProviderImage" runat="server" />
            </div>
            <div class="col-sm-1"></div>
        </div>
    <hr />
    <br />
     <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label1" runat="server" Text="Total Spaces: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbSpaces" runat="server"></asp:TextBox>
            </div>
           
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label2" runat="server" Text="Available Spaces: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbAvail" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-1"></div>
        </div>
    <br />
     <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label3" runat="server" Text="No. Of Staff: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbStaff" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label4" runat="server" Text="Multi Child Discount Price: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbMulti" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-1"></div>
        </div>
    <br />
     <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label5" runat="server" Text="Childcare Vouchers Accepted: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbVoucher" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label6" runat="server" Text="Ofsted Validated: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="tbValidate" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-1"></div>
        </div>

        <hr />

        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label7" CssClass="col-sm-12" runat="server" Text="Open Bank Holidays?: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:DropDownList ID="ddlBankHolidays" CssClass="col-sm-12" runat="server" DataSourceID="SqlDataSource4" DataTextField="Value" DataValueField="Id" style="left: 0px; top: -1px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [Value] FROM [YesNoService]"></asp:SqlDataSource>
            </div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblEDropOff" CssClass="col-sm-12" runat="server" Text="Early Dropoff?: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:DropDownList ID="ddlEDropOff" CssClass="col-sm-12" runat="server" DataSourceID="SqlDataSource3" DataTextField="Value" DataValueField="Id" style="left: 0px; top: -1px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [Value] FROM [YesNoService]"></asp:SqlDataSource>
            </div>
            <div class="col-sm-1"></div>
        </div>

        <br /> 

        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label8" CssClass="col-sm-12" runat="server" Text="Late Pickup?: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:DropDownList ID="ddlLatePickup" CssClass="col-sm-12" runat="server" DataSourceID="SqlDataSource5" DataTextField="Value" DataValueField="Id" style="left: 0px; top: -1px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [Value] FROM [YesNoService]"></asp:SqlDataSource>
            </div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label9" CssClass="col-sm-12" runat="server" Text="Open Weekends?: "></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:DropDownList ID="ddlWeekends" CssClass="col-sm-12" runat="server" DataSourceID="SqlDataSource6" DataTextField="Value" DataValueField="Id" style="left: 0px; top: -1px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [Value] FROM [YesNoService]"></asp:SqlDataSource>
            </div>
            <div class="col-sm-1"></div>
        </div>

        <hr />

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8" style="text-align:center">
                <asp:Button ID="btnSubmit" runat="server" class="btn btn-success" Text="Add Provider" OnClick="btnSubmit_Click" />       
            </div>
            <div class="col-sm-2"></div>
        </div>
</asp:Content>
