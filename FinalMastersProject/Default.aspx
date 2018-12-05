<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalMastersProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .carousel-inner > .item > img {
  width:700px;
  height:350px;
}
    </style>
  <div class="jumbotron text-center">
    <h1 style="color:rebeccapurple"><b>MinderFinder</b></h1>
    <p style="font-family:serif">We specialize in finding high quality, affordable childcare facilities. With Minderfinder, you can view prices, reviews
      and services.</p>
  </div>



  <div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 700px; margin: 0 auto">
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>

      <div class="carousel-inner">

        <div class="item active">
          <img src="Image/HomePageCarousel/nursery.jpg" alt="nursery" style="width:100%;">
          <div class="carousel-caption">
            <h3 style="color:white">Find nurseries in your local area</h3>
          </div>
        </div>

        <div class="item">
          <img src="Image/HomePageCarousel/slide.jpg"  alt="high quality" style="width:100%;">
          <div class="carousel-caption">
            <h3 style="color:white">High quality</h3>
          </div>
        </div>

        <div class="item">
          <img src="Image/HomePageCarousel/money.jpg" alt="affordable" style="width:100%;">
          <div class="carousel-caption">
            <h3 style="color:black">Affordable Prices</h3>
          </div>
        </div>

      </div>

      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>

    <br />
    <br />
  <div id="about" class="container-fluid">
    <div class="row">
      <div class="col-sm-8">
          <div class="panel panel-default">
  <div class="panel-heading"><h2 style="color:purple">About MinderFinder</h2></div>
  <div class="panel-body">MinderFinder was set up in 2018 to help parents find high quality childcare at the most affordable price.
          Minder Finder has everything you need to one place to high quality childcare at a decent price. With the ability to filter by price, star rating, tags, and location, Minder Finder makes it extreamly easy to find exactly what you need. Use Minder Finder today to find the best deal on your childcare services.    <br />
      <br />
      <a href="AddProvider.aspx"><asp:Label ID="butLabel" runat="server" Text='List Your Service' /></a>
      </div>
              </div>
        
      </div>


      <div class="col-sm-4">
          <div class="panel panel-default">
  <div class="panel-heading"><h3 style="color:purple">Looking for Childcare?</h3></div>
  <div class="panel-body">
      <br />
      <ol>
          <li>Register</li>
          <li>Search for local, high quality care</li>
          <li>Browse Services</li>
          <li>Read Reviews</li>
          <li>Leave Reviews</li>
      </ol>
       <a href="Register.aspx"><asp:Label ID="Label2" runat="server" Text='Register Today'/></a>
              </div>
              </div>
          </div>
      </div>
      </div>
             

  <div id="services" class="container-fluid text-center">
    <h2>SERVICES</h2>
    <h4>What we offer</h4>
    <br>
    <div class="row slideanim">
      <div class="col-sm-4">
        <span class="glyphicon glyphicon-gbp logo-small" style="color:green"></span>
        <h4>AFFORDABILITY </h4>
        <p>Minderfinder lets parents find high quality childcare at the best price.</p>
      </div>
      <div class="col-sm-4">
        <span class="glyphicon glyphicon-heart logo-small" style="color:red"></span>
        <h4>QUALITY</h4>
        <p>Our review section ensures that you see fair and accurate reviews </p>
      </div>
      <div class="col-sm-4">
        <span class="glyphicon glyphicon-sunglasses logo-small" style="color:blue"></span>
        <h4>EASE</h4>
        <p>MinderFinder aims to make finding childcare a breeze</p>
      </div>
    </div>
    <br>
    <br>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-certificate logo-small" style="color:orange"></span>
      <h4>CERTIFIED</h4>
      <p>All out services must have up to date certifications and be compliant with the latest legislation.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small" style="color:purple"></span>
      <h4 style="color:#303030;">HARD WORK</h4>
      <p>The MinderFinder team work extreamly hard to ensure that people can analyse the childcare facilities to ensure the
        best price.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-star logo-small" style="color:yellow"></span>
      <h4 style="color:#303030;">5 Star Service</h4>
      <p>The MinderFinder team  are available six days a week to ensure you have everything you need to find
          the best service.</p>
    </div>
  </div>

</asp:Content>
