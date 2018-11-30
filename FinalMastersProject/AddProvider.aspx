<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProvider.aspx.cs" Inherits="FinalMastersProject.AddProvider" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>

        <br />

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblType" runat="server" Text="Type: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:DropDownList ID="ddlType" runat="server" DataSourceID="SqlDataSource1" DataTextField="type" DataValueField="Id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [type] FROM [ProviderType]"></asp:SqlDataSource>
            </div>
            <div class="col-sm-2"></div>
        </div>

        <br />

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblDescription" runat="server" Text="Description: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbDescription" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>

        <hr />

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblAddress1" runat="server" Text="Address Line 1: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbAddress1" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>

        <br />

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblAddress2" runat="server" Text="Address Line 2: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbAddress2" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>

        <br />

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblTown" runat="server" Text="Town/City: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbTown" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>

        <br />

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblCounty" runat="server" Text="County: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbCounty" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>

        <br />

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblCountry" runat="server" Text="Country: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbCountry" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>

        <br />

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblPostcode" runat="server" Text="Postcode: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbPostcode" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>

        <hr />

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblPrice" runat="server" Text="Price per day: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbPrice" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>

        <br />

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="lblUploadImage" runat="server" Text="Upload Provider Image: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:FileUpload ID="fuProviderImage" runat="server" />
            </div>
            <div class="col-sm-2"></div>
        </div>

    <br />
     <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label1" runat="server" Text="Total Spaces: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbSpaces" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>
    <br />
     <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label2" runat="server" Text="Available Spaces: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbAvail" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>
    <br />
     <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label3" runat="server" Text="No. Of Staff: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbStaff" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>
    <br />
     <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label4" runat="server" Text="Multi Child Discount Price: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbMulti" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>

    <br />
     <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label5" runat="server" Text="Childcare Vouchers Accepted: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbVoucher" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>
    <br />
     <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2" style="text-align:right">
                <asp:Label ID="Label6" runat="server" Text="Ofsted Validated: "></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:TextBox ID="tbValidate" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2"></div>
        </div>

        <hr />

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8" style="text-align:center">
                <asp:Button ID="btnSubmit" runat="server" Text="Add Provider" OnClick="btnSubmit_Click" />       
            </div>
            <div class="col-sm-2"></div>
        </div>
</asp:Content>
