<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FinalMastersProject.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="contact" class="container-fluid bg-grey">
        <h2 class="text-center">CONTACT</h2>
        <hr />
        <div class="row">
            <div class="col-sm-6">
                <p>Contact us and we'll get back to you within 24 hours.</p>
                <p>
                    <span class="glyphicon glyphicon-map-marker"></span> London, US</p>
                <p>
                    <span class="glyphicon glyphicon-phone"></span> +44 18563915</p>
                <p>
                    <span class="glyphicon glyphicon-envelope"></span> MinderFinder@gmail.com</p>

                <div class="row">
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                    </div>
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                    </div>
                </div>
                <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
                <br>
                <div class="row">
                    <div class="col-sm-12 form-group">
                        <button class="btn btn-default pull-right" type="submit">Send</button>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div id="googleMap" style="height:400px"></div>
            </div>
        </div>
    </div>

    <script>
        function myMap() {
            var mapProp = {
                center: new google.maps.LatLng(51.508742, -0.120850),
                zoom: 9,
            };
            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCtceCX381ywQ6c6EctiwIVNSrG1KogdEo&callback=myMap"></script>
</asp:Content>
