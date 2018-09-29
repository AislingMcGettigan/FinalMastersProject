
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProviderDetails.aspx.cs" Inherits="FinalMastersProject.ProviderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <p style="font-size: x-large"><strong>Provider Review</strong></p>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <td runat="server" style="">
                <br />Name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' ForeColor="Black" />
                <a href="ProviderDetails.aspx?ProviderId=<%# Eval("Id")%>"/>
     <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="250px" Height="250px" ImageAlign="Right" /></a>
                <br />Type:
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                 <br />Description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                <br />Postcode:
                <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                <br />priceByDay:
                <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                <br /></td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">
                <br />Name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' ForeColor="Black" />
                <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>"/>
     <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="250px" Height="250px" ImageAlign="Right"  /></a>
                <br />Type:
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br /> Description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                <br />Postcode:
                <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                <br />priceByDay:
                <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                <br /></td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
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
            <td runat="server" style="">
                <br />Name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' ForeColor="Black"/>
                <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>"/>
     <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="250px" Height="250px" ImageAlign="Right" /></a>
                <br />Type:
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br /> Description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                <br />Postcode:
                <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                <br />priceByDay:
                <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="">
                <br />Name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' ForeColor="Black"/>
                <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>"/>
     <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="250px" Height="250px" ImageAlign="Right" /></a>
                <br />Type:
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br /> Description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                <br />Postcode:
                <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                <br />priceByDay:
                <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                <br /></td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">
                <br />Name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' ForeColor="Black"/>
                <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>"/>
     <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="250px" Height="250px" ImageAlign="Right" /></a>
                <br />Type:
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br /> Description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                <br />Postcode:
                <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                <br />priceByDay:
                <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                <br /></td>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT prov.Id, prov.description, proImg.imagePath, prov.name, proTy.type, proAdd.postcode, prov.priceByDay FROM Provider AS prov INNER JOIN ProviderType AS proTy ON proTy.Id = prov.providerTypeId INNER JOIN ProviderAddress AS proAdd ON proAdd.Id = prov.providerAddressId INNER JOIN ProviderImages AS proImg ON proImg.Id = prov.providerImageId WHERE (prov.Id = @ProviderId)">
                <SelectParameters>
                <asp:QueryStringParameter Name="ProviderId" QueryStringField="ProviderId" />
            </SelectParameters>
    </asp:SqlDataSource>
     <br />

   <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT anu.[UserName], rev.[userId], rev.[reviewTitle], rev.[reviewBody], rev.[AddedDate] FROM [Review] rev INNER JOIN [AspNetUsers] anu ON anu.[Id] = rev.[userId] WHERE (rev.[ProviderID] = @ProviderId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProviderId" QueryStringField="ProviderId" />
            </SelectParameters>
        </asp:SqlDataSource>

        <h2 style="font-size: x-large"><strong>Reviews</strong></h2>
    <p>&nbsp;</p>
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>You Must Log In To See Reviews</AnonymousTemplate>
        <LoggedInTemplate>
            <div style="border-style:solid; border-width:thick; border-color: #cbc0d2; background-color: beige">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate>
                        <div class="row">
                            <div class="col-md-12"><b>User Name: </b> <%#Eval("UserName")%></div>
                        </div>

                         <div class="row">
                            <div class="col-md-10"><b>Review Title:</b> <%#Eval("reviewTitle")%></div>
                            <div class="col-md-2"><%#Eval("AddedDate")%></div>
                        </div>

                        <div class="row">
                            <div class="col-md-11"><%#Eval("reviewBody")%></div>
                            <div class="col-md-1"> &nbsp;</div>
                        </div> 
                    <br />
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </LoggedInTemplate>
     </asp:LoginView>

            <p><span style="font-size: large"><strong>Add Tags to Your Post:</strong></span>
            <asp:TextBox ID="TbTags" runat="server" Width="586px"></asp:TextBox>
                &nbsp;
            <asp:Button ID="btnAddNewTags" runat="server" BackColor="#CC99FF" BorderColor="#CCCCCC" Font-Bold="True" Font-Size="Medium" Height="24px" OnClick="btnAddNewTags_Click" Text="Add New Tags" Width="152px" />
        </p>
        <p style="font-size: medium"><em>(Remember to seperate your tags using commas!)</em></p>
        <p style="font-size: medium">&nbsp;</p>
        <p style="font-size: medium"><strong><span style="font-size: large">Existing Tags:</span></strong>
          
            <asp:CheckBoxList ID="CBLExistingTags" runat="server" DataSourceID="SqlDataSource2" DataTextField="Tag" DataValueField="Id" RepeatColumns="8" RepeatDirection="Horizontal">
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [Id], [tag] FROM [Tag]"></asp:SqlDataSource>
        </p>

     <p>
            <span style="font-size: large"><strong>Title:&nbsp;&nbsp;</strong><em>&nbsp;</em><strong>&nbsp; </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TbReviewTitle" runat="server" Width="604px"></asp:TextBox>
        </p>
        <p>
            <span style="font-size: large"><strong>Body:</strong><em>&nbsp;</em><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TbReviewBody" runat="server" TextMode="MultiLine" Width="604px" Height="130px"></asp:TextBox>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnSubmitReviewtDetails" runat="server" BackColor="#CC99FF" Font-Bold="True" Font-Size="Medium" OnClick="btnSubmitReviewDetails_Click" Text="Add Review" />
        </p>
        <p>
            <asp:Label ID="LblComment" runat="server"></asp:Label>
        </p>
        <p>
        </p>
        <p>
        </p>

</asp:Content>

