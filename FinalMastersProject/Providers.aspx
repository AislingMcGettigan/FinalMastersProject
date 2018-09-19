<%@ Page Title="Providers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Providers.aspx.cs" Inherits="FinalMastersProject.Providers" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <style>
        .center {
            margin: auto;
            width: 100%;
            padding: 10px;
            text-align: center;
        }
        td {
            background-color: white;
            padding: 5px;
        }

        table
        {
            text-align: center; 
            width: 100%;
        }
    </style>
    <div class="center-div">
        <div class="center">
          <p>
                <span style="font-size: x-large;"><strong><em>Providers </em></strong></span>
          </p>
        </div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="providerQuery" GroupItemCount="5">
            <AlternatingItemTemplate>
                <td runat="server" >
                    <h3><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></h3>
                    <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>">
                        <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="160px" Height="160px" />
                    </a>
                    <br /><b>type:</b>
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br /><b>postcode:</b>
                    <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                    <br /><b>priceByDay:</b>
                    <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                    <br />
                    <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>">
                        <asp:Label ID="Label1" runat="server" Text='View Provider' />
                    </a>
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" >
                    <h3><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></h3>
                    <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>">
                        <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="160px" Height="160px" />
                    </a>
                    <br /><b>type:</b>
                    <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                    <br /><b>postcode:</b>
                    <asp:TextBox ID="postcodeTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                    <br /><b>priceByDay:</b>
                    <asp:TextBox ID="priceByDayTextBox" runat="server" Text='<%# Bind("priceByDay") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                    <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>">
                        <asp:Label ID="Label1" runat="server" Text='View Provider' />
                    </a>
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
    <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" >
                    <h3><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></h3>
                    <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>">
                        <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="160px" Height="160px" />
                    </a>
                    <br /><b>type:</b>
                    <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                    <br /><b>postcode:</b>
                    <asp:TextBox ID="postcodeTextBox" runat="server" Text='<%# Bind("postcode") %>' />
                    <br /><b>priceByDay:</b>
                    <asp:TextBox ID="priceByDayTextBox" runat="server" Text='<%# Bind("priceByDay") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                    <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>">
                        <asp:Label ID="Label1" runat="server" Text='View Provider' />
                    </a>
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" >
                    <h3><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></h3>
                    <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>">
                        <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="160px" Height="160px" />
                    </a>
                    <br /><b>type:</b>
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br /><b>postcode:</b>
                    <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                    <br /><b>priceByDay:</b>
                    <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                    <br />
                    <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>">
                        <asp:Label ID="Label1" runat="server" Text='View Provider' />
                    </a>
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" >
                    <h3><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></h3>
                    <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>">
                        <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="160px" Height="160px" />
                    </a>
                    <br /><b>type:</b>
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br /><b>postcode:</b>
                    <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                    <br /><b>priceByDay:</b>
                    <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                    <br />
                    <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>">
                        <asp:Label ID="Label1" runat="server" Text='View Provider' />
                    </a>
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="providerQuery" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT prov.[id], proImg.[imagePath], prov.[name], proTy.[type], proAdd.[postcode], prov.[priceByDay] FROM [Provider] prov INNER JOIN [ProviderType] proTy ON proTy.Id = prov.providerTypeId INNER JOIN [ProviderAddress] proAdd ON proAdd.Id = prov.providerAddressId INNER JOIN [ProviderImages] proImg ON proImg.Id = prov.providerImageId"></asp:SqlDataSource>
    </div>
</asp:Content>
    


 
       

 
       