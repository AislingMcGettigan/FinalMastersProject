<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProviderDetails.aspx.cs" Inherits="FinalMastersProject.ProviderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Scripts/CSS/star-rating.css" media="all" rel="stylesheet" type="text/css" />
      <style>
          ul.suggestions {list-style-type: square;}
      </style>
     <div style="font-size: x-large"><strong>Provider Review</strong></div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <td runat="server" style="">
                <br /><b> Name: </b>
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' ForeColor="Black" />
                <a href="ProviderDetails.aspx?ProviderId=<%# Eval("Id")%>"/>
                <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="250px" Height="250px" ImageAlign="Right" /></a>
                <br /><b> Type: </b>
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br /><b> Opening Times: </b>
                <asp:Label ID="lblOpeningTime" runat="server" Text='<%# Eval("openingTime") %>' /> - <asp:Label ID="lblClosingTime" runat="server" Text='<%# Eval("closingTime") %>' />
                 <br /><b>Description:</b>
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                <br /><b> Postcode: </b>
                <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                <br /><b>Price Per Day: </b>
                <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                <br /> <b>Total Spaces: </b>
                <asp:Label ID="totalSpacesLabel" runat="server" Text='<%# Eval("totalSpaces") %>' />
                <br /> <b>Available Spaces: </b>
                <asp:Label ID="availableSpacesLabel" runat="server" Text='<%# Eval("availibleSpaces") %>' />
                <br /> <b>Staff Count: </b>
                <asp:Label ID="staffCountLabel" runat="server" Text='<%# Eval("staffCount") %>' />
                <br /> <b>Required Certificates Checked: </b>
                <asp:Label ID="requiredCertficatesCheckedLable" runat="server" Text='<%# Eval("requiredCertificatesChecked") %>' />
                <br /> <b>Multi Child Discount: </b>
                <asp:Label ID="multiChildPriceLabel" runat="server" Text='<%# Eval("multiChildPrice") %>' />
                <br /> <b>Childcare Vouchers Accepted: </b>
                <asp:Label ID="childCareVouchersAcceptedLabel" runat="server" Text='<%# Eval("childCareVouchersAccepted") %>' />
                <br /> <b>Certificiation Review Date</b>
                <asp:Label ID="CertificateReviewDateLabel" runat="server" Text='<%# Eval("certificationReviewDate") %>' />
                <br /> <b>Special Services:</b>
                <asp:Label ID="ServiceIdLabel" runat="server" Text='<%# Eval("ServiceId") %>' />
                <br /> <b>Ofsted Validated:</b>
                <asp:Label ID="ofstedValidatedLabel" runat="server" Text='<%# Eval("ofstedValidated") %>' />
                <br /> <b>Open Bank Holidays:</b>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("openBankHolidays") %>' />
                <br /> <b>Early Dropoffs:</b>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("earlyDropOff") %>' />
                <br /> <b>Late Pickup:</b>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("latePickUp") %>' />
                <br /> <b>Open Weekends:</b>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("openWeekends") %>' />
                <br /></td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">
                <br /><b> Name: </b>
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' ForeColor="Black" />
                <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>"/>
                <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="250px" Height="250px" ImageAlign="Right"  /></a>
                <br /><b> Type: </b>
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br /><b> Opening Times: </b>
                <asp:Label ID="lblOpeningTime" runat="server" Text='<%# Eval("openingTime") %>' /> - <asp:Label ID="lblClosingTime" runat="server" Text='<%# Eval("closingTime") %>' />
                <br /> <b>Description:</b>
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                <br /><b> Postcode: </b>
                <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                <br /><b>Price Per Day: </b>
                <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                   <br /> <b>Total Spaces: </b>
                <asp:Label ID="totalSpacesLabel" runat="server" Text='<%# Eval("totalSpaces") %>' />
                <br /> <b>Available Spaces: </b>
                <asp:Label ID="availableSpacesLabel" runat="server" Text='<%# Eval("availibleSpaces") %>' />
                <br /> <b>Staff Count: </b>
                <asp:Label ID="staffCountLabel" runat="server" Text='<%# Eval("staffCount") %>' />
                <br /><b>Required Certificates Checked: </b>
                <asp:Label ID="requiredCertficatesCheckedLable" runat="server" Text='<%# Eval("requiredCertificatesChecked") %>' />
                <br /> <b>Multi Child Discount: </b>
                <asp:Label ID="multiChildPriceLabel" runat="server" Text='<%# Eval("multiChildPrice") %>' />
                <br /> <b>Childcare Vouchers Accepted: </b>
                <asp:Label ID="childCareVouchersAcceptedLabel" runat="server" Text='<%# Eval("childCareVouchersAccepted") %>' />
                <br /> <b>Certification Review Date</b>
                <asp:Label ID="CertificateReviewDateLabel" runat="server" Text='<%# Eval("certificationReviewDate") %>' />
                <br /> <b>Special Services:</b>
                <asp:Label ID="ServiceIdLabel" runat="server" Text='<%# Eval("ServiceId") %>' />
                <br /> <b>Ofsted Validated:</b>
                <asp:Label ID="ofstedValidatedLabel" runat="server" Text='<%# Eval("ofstedValidated") %>' />
                <br /> <b>Open Bank Holidays:</b>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("openBankHolidays") %>' />
                <br /> <b>Early Dropoffs:</b>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("earlyDropOff") %>' />
                <br /> <b>Late Pickup:</b>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("latePickUp") %>' />
                <br /> <b>Open Weekends:</b>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("openWeekends") %>' />
                <br /></td>>
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
                <br /><b> Name: </b>
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' ForeColor="Black"/>
                <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>"/>
                <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="250px" Height="250px" ImageAlign="Right" /></a>
                <br /><b> Type: </b>
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br /><b> Opening Times: </b>
                <asp:Label ID="lblOpeningTime" runat="server" Text='<%# Eval("openingTime") %>' /> - <asp:Label ID="lblClosingTime" runat="server" Text='<%# Eval("closingTime") %>' />
                <br /> <b>Description:</b>
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                <br /><b> Postcode: </b>
                <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                <br /><b>Price Per Day: </b>
                <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                   <br /> <b>Total Spaces: </b>
                <asp:Label ID="totalSpacesLabel" runat="server" Text='<%# Eval("totalSpaces") %>' />
                <br /> <b>Available Spaces: </b>
                <asp:Label ID="availableSpacesLabel" runat="server" Text='<%# Eval("availibleSpaces") %>' />
                <br /> <b>Staff Count: </b>
                <asp:Label ID="staffCountLabel" runat="server" Text='<%# Eval("staffCount") %>' />
                <br /> <b>Required Certificates Checked: </b>
                <asp:Label ID="requiredCertficatesCheckedLable" runat="server" Text='<%# Eval("requiredCertificatesChecked") %>' />
                <br /> <b>Multi Child Discount: </b>
                <asp:Label ID="multiChildPriceLabel" runat="server" Text='<%# Eval("multiChildPrice") %>' />
                <br /> <b>Childcare Vouchers Accepted: </b>
                <asp:Label ID="childCareVouchersAcceptedLabel" runat="server" Text='<%# Eval("childCareVouchersAccepted") %>' />
                <br /> <b>Certification Review Date</b>
                <asp:Label ID="CertificateReviewDateLabel" runat="server" Text='<%# Eval("certificationReviewDate") %>' />
                <br /> <b>Special Services:</b>
                <asp:Label ID="ServiceIdLabel" runat="server" Text='<%# Eval("ServiceId") %>' />
                <br /> <b>Ofsted Validated:</b>
                <asp:Label ID="ofstedValidatedLabel" runat="server" Text='<%# Eval("ofstedValidated") %>' />
                <br /> <b>Open Bank Holidays:</b>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("openBankHolidays") %>' />
                <br /> <b>Early Dropoffs:</b>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("earlyDropOff") %>' />
                <br /> <b>Late Pickup:</b>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("latePickUp") %>' />
                <br /> <b>Open Weekends:</b>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("openWeekends") %>' />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="">
                <br /><b> Name: </b>
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' ForeColor="Black"/>
                <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>"/>
                <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="250px" Height="250px" ImageAlign="Right" /></a>
                <br /><b> Type: </b>
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br /><b> Opening Times: </b>
                <asp:Label ID="lblOpeningTime" runat="server" Text='<%# Eval("openingTime") %>' /> - <asp:Label ID="lblClosingTime" runat="server" Text='<%# Eval("closingTime") %>' />
                <br /> <b>Description:</b>
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                <br /><b> Postcode: </b>
                <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                <br /><b>Price Per Day: </b>
                <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                   <br /> <b>Total Spaces: </b>
                <asp:Label ID="totalSpacesLabel" runat="server" Text='<%# Eval("totalSpaces") %>' />
                <br /> <b>Available Spaces: </b>
                <asp:Label ID="availableSpacesLabel" runat="server" Text='<%# Eval("availibleSpaces") %>' />
                <br /> <b>Staff Count: </b>
                <asp:Label ID="staffCountLabel" runat="server" Text='<%# Eval("staffCount") %>' />
                <br /> <b>Required Certificates Checked: </b>
                <asp:Label ID="requiredCertficatesCheckedLabel" runat="server" Text='<%# Eval("requiredCertificatesChecked") %>' />
                <br /> <b>Multi Child Discount: </b>
                <asp:Label ID="multiChildPriceLabel" runat="server" Text='<%# Eval("multiChildPrice") %>' />
                <br /> <b>Childcare Vouchers Accepted: </b>
                <asp:Label ID="childCareVouchersAcceptedLabel" runat="server" Text='<%# Eval("childCareVouchersAccepted") %>' />
                <br /> <b>Certification Review Date</b>
                <asp:Label ID="CertificateReviewDateLabel" runat="server" Text='<%# Eval("certificationReviewDate") %>' />
                <br /> <b>Special Services:</b>
                <asp:Label ID="ServiceIdLabel" runat="server" Text='<%# Eval("ServiceId") %>' />
                <br /> <b>Ofsted Validated:</b>
                <asp:Label ID="ofstedValidatedLabel" runat="server" Text='<%# Eval("ofstedValidated") %>' />
                <br /> <b>Open Bank Holidays:</b>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("openBankHolidays") %>' />
                <br /> <b>Early Dropoffs:</b>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("earlyDropOff") %>' />
                <br /> <b>Late Pickup:</b>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("latePickUp") %>' />
                <br /> <b>Open Weekends:</b>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("openWeekends") %>' />
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
                <br /><b> Name: </b>
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' ForeColor="Black"/>
                <a href="ProviderDetails.aspx?ProviderId=<%#Eval("Id")%>"/>
                <asp:Image id="Image2" runat="server" ImageUrl='<%# Eval("ImagePath")%>' Width="250px" Height="250px" ImageAlign="Right" /></a>
                <br /><b> Type: </b>
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br /><b> Opening Times: </b>
                <asp:Label ID="lblOpeningTime" runat="server" Text='<%# Eval("openingTime") %>' /> - <asp:Label ID="lblClosingTime" runat="server" Text='<%# Eval("closingTime") %>' />
                <br /> <b>Description:</b>
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                <br /><b> Postcode: </b>
                <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                <br /><b>Price Per Day: </b>
                <asp:Label ID="priceByDayLabel" runat="server" Text='<%# Eval("priceByDay") %>' />
                   <br /> <b>Total Spaces: </b>
                <asp:Label ID="totalSpacesLabel" runat="server" Text='<%# Eval("totalSpaces") %>' />
                <br /> <b>Available Spaces: </b>
                <asp:Label ID="availableSpacesLabel" runat="server" Text='<%# Eval("availibleSpaces") %>' />
                <br /> <b>Staff Count: </b>
                <asp:Label ID="staffCountLabel" runat="server" Text='<%# Eval("staffCount") %>' />
                <br /> <br /><b>Required Certificates Checked: </b>
                <asp:Label ID="requiredCertficatesCheckedLable" runat="server" Text='<%# Eval("requiredCertificatesChecked") %>' />
                <br /> <b>Multi Child Discount: </b>
                <asp:Label ID="multiChildPriceLabel" runat="server" Text='<%# Eval("multiChildPrice") %>' />
                <br /> <b>Childcare Vouchers Accepted: </b>
                <asp:Label ID="childCareVouchersAcceptedLabel" runat="server" Text='<%# Eval("childCareVouchersAccepted") %>' />
                <br /> <b>Certification Review Date</b>
                <asp:Label ID="CertificateReviewDateLabel" runat="server" Text='<%# Eval("certificationReviewDate") %>' />
                <br /> <b>Special Services:</b>
                <asp:Label ID="ServiceIdLabel" runat="server" Text='<%# Eval("ServiceId") %>' />
                <br /> <b>Ofsted Validated:</b>
                <asp:Label ID="ofstedValidatedLabel" runat="server" Text='<%# Eval("ofstedValidated") %>' />
                <br /> <b>Open Bank Holidays:</b>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("openBankHolidays") %>' />
                <br /> <b>Early Dropoffs:</b>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("earlyDropOff") %>' />
                <br /> <b>Late Pickup:</b>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("latePickUp") %>' />
                <br /> <b>Open Weekends:</b>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("openWeekends") %>' />
                <br /></td>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT prov.Id, prov.description, proImg.imagePath, prov.name, proTy.type, proAdd.postcode, prov.priceByDay, prov.totalSpaces, prov.availibleSpaces, prov.staffCount, prov.requiredCertificatesChecked, prov.multiChildPrice, prov.childCareVouchersAccepted, prov.certificationReviewDate, prov.serviceId, prov.ofstedValidated, CASE WHEN serv.earlyDropOff = 1 THEN 'Yes' WHEN serv.earlyDropOff = 2 THEN 'No' END as 'earlyDropOff', CASE WHEN serv.openBankHolidays = 1 THEN 'Yes' WHEN serv.openBankHolidays = 2 THEN 'No' END as 'openBankHolidays', CASE WHEN serv.latePickUp = 1 THEN 'Yes' WHEN serv.latePickUp = 2 THEN 'No' END as 'latePickUp', CASE WHEN serv.openWeekends = 1 THEN 'Yes' WHEN serv.openWeekends = 2 THEN 'No' END as 'openWeekends', prov.openingTime, prov.closingTime FROM Provider AS prov INNER JOIN ProviderType AS proTy ON proTy.Id = prov.providerTypeId INNER JOIN ProviderAddress AS proAdd ON proAdd.Id = prov.providerAddressId INNER JOIN ProviderImages AS proImg ON proImg.Id = prov.providerImageId LEFT JOIN Services AS serv ON serv.ID = serviceID WHERE (prov.Id = @ProviderId)">
                <SelectParameters>
                <asp:QueryStringParameter Name="ProviderId" QueryStringField="ProviderId" />
            </SelectParameters>
    </asp:SqlDataSource>
     <br />

   <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT anu.UserName, rev.userId, rev.reviewTitle, rev.reviewBody, rev.addedDate FROM Review AS rev INNER JOIN AspNetUsers AS anu ON anu.Id = rev.userId WHERE (rev.providerId = @ProviderId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProviderId" QueryStringField="ProviderId" />
            </SelectParameters>
        </asp:SqlDataSource>


<div>
    <b>Suggestions on what to write about in your review:</b>
        <ul class="suggestions">
            <li>Facilities/Outdoor Space</li>
            <li>Curriculum</li>
            <li>Resources/Equipment/ICT</li>
            <li>Care</li>
            <li>Staff</li>
            <li>Food/Nutrition</li>
            <li>Management</li>
            <li>Cleanliness</li>
            <li>Value for Money </li>
            <li>Safeguarding</li>
        </ul>
    </div>

        <h2 style="font-size: x-large"><strong>Reviews</strong></h2>
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>You Must Log In To See Reviews</AnonymousTemplate>
        <LoggedInTemplate>
            <div style="border-style:solid; border-width:thick; border-color: #cbc0d2; background-color: beige">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate>
                        <div class="row">
                            <div class="col-md-12"><b>User <b> Name: </b> </b> <%#Eval("UserName")%></div>
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

      <div ID="jsRater" runat="server">  
            <asp:PlaceHolder runat="server">
                <input id="mainRater" type="number" class="rating rating-loading" data-min="0" data-max="5" data-step="1">
            </asp:PlaceHolder>

               <h2 style="font-size: x-large"><strong>Add a new tag:</strong></h2>
            <asp:TextBox ID="TbTags" runat="server" Width="586px"></asp:TextBox>
                &nbsp;
            <asp:Button ID="btnAddNewTags" runat="server" BackColor="#CC99FF" BorderColor="#CCCCCC" Font-Bold="True" Font-Size="Medium" Height="24px" OnClick="btnAddNewTags_Click" Text="Add New Tags" Width="152px" />
     
        <p style="font-size: medium"><em>(Remember to seperate your tags using commas!)</em></p>
        <p style="font-size: medium">&nbsp;</p>
        <h2 style="font-size: x-large"><strong>Choose an existing tag</strong></h2>
          
            <asp:CheckBoxList ID="CBLExistingTags" runat="server" DataSourceID="SqlDataSource2" DataTextField="Tag" DataValueField="Id" RepeatColumns="8" RepeatDirection="Horizontal">
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [Id], [tag] FROM [Tag]"></asp:SqlDataSource>

     <p>
            <h2 style="font-size: x-large"><strong>Leave a Review:</strong></h2>
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
          </div>
    <script src="Scripts/star-rating.js" type="text/javascript"></script>
     <script>
        jQuery(document).ready(function () {
            $("#mainRater").rating({min:1, max:5, step:1, size:'lg'});
        });

        $('#mainRater').on('rating:change', function (event, value, caption) {
            var proId = getUrlVars()["ProviderId"];
            var rate = $('#mainRater').val();
            $.get("Rating.aspx",{
                BeingRated: proId,
                Rating: rate
            });
        });

        function getUrlVars() {
            var vars = [], hash;
            var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
            for (var i = 0; i < hashes.length; i++) {
                hash = hashes[i].split('=');
                vars.push(hash[0]);
                vars[hash[0]] = hash[1];
            }
            return vars;
        };
    </script>
</asp:Content>

