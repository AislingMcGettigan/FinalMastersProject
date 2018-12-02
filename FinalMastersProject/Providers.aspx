<%@ Page Title="Providers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/Providers.aspx.cs"  %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <link href="Scripts/CSS/star-rating.css" media="all" rel="stylesheet" type="text/css" />
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

    <div class="row">
        <div class="col-sm-3" style="text-align:center">
            <b>Type</b>
            <br />
            <asp:DropDownList ID="ddlType" runat="server" CssClass="form-control centerDD" Width="100%" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="type" DataValueField="type" AppendDataBoundItems="True">
                <asp:ListItem Text="Select Full or Half Day Care " Value="" />
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [type] FROM [ProviderType]"></asp:SqlDataSource>
        </div>
        <div class="col-sm-3" style="text-align:center">
            <b>Postcode</b>
            <br />
            <asp:TextBox ID="tbPostCode" placeholder="Post Code Search" runat="server" AutoPostBack="True" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-sm-3" style="text-align:center">
            <b>Max Price</b>
            <br />
            <asp:TextBox ID="tbMaxPrice" placeholder="Enter Max Price" runat="server" AutoPostBack="True" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-3" style="text-align:center">
            <b>Star Rating</b>
            <br />
            <asp:DropDownList ID="ddlMinRating" runat="server" CssClass="form-control centerDD" Width="100%" AutoPostBack="True">
                <asp:ListItem Text="Select a Star Rating " Value="" />
                <asp:ListItem Text="1 Star or Greater " Value="1" />
                <asp:ListItem Text="2 Star or Greater " Value="2" />
                <asp:ListItem Text="3 Star or Greater " Value="3" />
                <asp:ListItem Text="4 Star or Greater " Value="4" />
            </asp:DropDownList>
        </div>
    </div>

    <br />

    <div class="row">
        <div class="col-sm-3" style="text-align:center">
            <b>Filter By Tag</b>
            <br />
            <asp:DropDownList ID="ddlTag" runat="server" CssClass="form-control centerDD" Width="100%" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="tag" DataValueField="Id" AppendDataBoundItems="True">
                <asp:ListItem Text="Select A Tag " Value="" />
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [tag] FROM [Tag]"></asp:SqlDataSource>
        </div>
    </div>

    <hr />

    <div class="center-div">
        <div class="center">
          <p>
                <span style="font-size: x-large;"><strong><em>Providers </em></strong></span>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="providerQuery" GroupItemCount="5">
            <AlternatingItemTemplate>
                <td runat="server" >
                    <h3><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></h3>
                    <a href="ProviderDetails.aspx?ProviderId=<%# Eval("Id")%>">
                        <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="160px" Height="160px" />
                    </a>
                    <br /><b>Type:</b>
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br /><b>Postcode:</b>
                    <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                    <br /><b>Price by Day:</b>
                    <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                    <br /><b>Rating:</b>
                    <input id="inputRating" name="inputRating" value="<%# Eval("averageRating") %>" class="rating-loading ratingStar">
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
                    <br /><b>Type:</b>
                    <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Eval("type") %>' />
                    <br /><b>Postcode:</b>
                    <asp:TextBox ID="postcodeTextBox" runat="server" Text='<%# Eval("postcode") %>' />
                    <br /><b>Price by Day:</b>
                    <asp:TextBox ID="priceByDayTextBox" runat="server" Text='<%# Eval("priceByDay") %>' />
                    <br /><b>Rating:</b>
                    <input id="inputRating" name="inputRating" value="<%# Eval("averageRating") %>" class="rating-loading ratingStar">
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
                    <br /><b>Type:</b>
                    <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Eval("type") %>' />
                    <br /><b>Postcode:</b>
                    <asp:TextBox ID="postcodeTextBox" runat="server" Text='<%# Eval("postcode") %>' />
                    <br /><b>Price by Day:</b>
                    <asp:TextBox ID="priceByDayTextBox" runat="server" Text='<%# Eval("priceByDay") %>' />
                    <br /><b>Rating:</b>
                    <input id="inputRating" name="inputRating" value="<%# Eval("averageRating") %>" class="rating-loading ratingStar">
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
                    <br /><b>Type:</b>
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br /><b>Postcode:</b>
                    <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                    <br /><b>Price by Day:</b>
                    <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                    <br /><b>Rating:</b>
                    <input id="inputRating" name="inputRating" value="<%# Eval("averageRating") %>" class="rating-loading ratingStar">
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
                    <br /><b>Type:</b>
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br /><b>Postcode:</b>
                    <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                    <br /><b>Price by Day:</b>
                    <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                    <br /><b>Rating:</b>
                    <input id="inputRating" name="inputRating" value="<%# Eval("averageRating") %>" class="rating-loading ratingStar">
                    <br />
                    <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>">
                        <asp:Label ID="Label1" runat="server" Text='View Provider' />
                    </a>
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>

          </p>
        </div>

        <asp:SqlDataSource ID="providerQuery" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT prov.[id], proImg.[imagePath], prov.[name], proTy.[type], proAdd.[postcode], prov.[priceByDay], (SELECT SUM([rating]) / COUNT([id]) as average FROM [Rating] WHERE [providerfk] = prov.[id]) averageRating FROM [Provider] prov INNER JOIN [ProviderType] proTy ON proTy.Id = prov.providerTypeId INNER JOIN [ProviderAddress] proAdd ON proAdd.Id = prov.providerAddressId INNER JOIN [ProviderImages] proImg ON proImg.Id = prov.providerImageId WHERE proTy.[type] LIKE @providerType AND proAdd.[postcode] LIKE (@postCode + '%') AND prov.[priceByDay] &lt;= @maxPrice AND (@tagID IN (SELECT tagID FROM [TagJunction]  WHERE providerId = prov.[id]) OR @tagID = 0) AND  ((SELECT SUM([rating]) / COUNT([id]) as average FROM [Rating] WHERE [providerfk] = prov.[id]) &gt;= @minRating OR @minRating = 0)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlType" DefaultValue="%" Name="providerType" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter  ControlID="tbPostCode" DefaultValue="%" Name="postCode" PropertyName="Text" Type="String" />
                <asp:ControlParameter  ControlID="tbMaxPrice" DefaultValue="10000" Name="maxPrice" PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter  ControlID="ddlTag" DefaultValue="0" Name="tagID" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter  ControlID="ddlMinRating" DefaultValue="0" Name="minRating" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <script src="Scripts/star-rating.js" type="text/javascript"></script>
     <script>
        jQuery(document).ready(function () {
            $('.ratingStar').rating({displayOnly: true, step: 0.5});
        });
    </script>
</asp:Content>
    


 
       

 
       