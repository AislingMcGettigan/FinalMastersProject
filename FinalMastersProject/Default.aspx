<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalMastersProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <div class="jumbotron text-center">
    <h1>MinderFinder</h1>
    <p>We specialize in finding high quality, affordable childcare facilities. With Minderfinder, you can view prices, reviews
      and services.</p>
  </div>



  <div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 800px; margin: 0 auto">
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>

      <div class="carousel-inner">

        <div class="item active">
          <img src="Image/HomePageCarousel/nursery.jpg" alt="nursery" style="width:100%;">
          <div class="carousel-caption">
            <h3>Find nurseries in your local area</h3>
          </div>
        </div>

        <div class="item">
          <img src="Image/HomePageCarousel/slide.jpg"  alt="high quality" style="width:100%;">
          <div class="carousel-caption">
            <h3>High quality</h3>
          </div>
        </div>

        <div class="item">
          <img src="Image/HomePageCarousel/money.jpg" alt="affordable" style="width:100%;">
          <div class="carousel-caption">
            <h3>Affordable Prices</h3>
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


  <div id="about" class="container-fluid">
    <div class="row">
      <div class="col-sm-8">
        <h2>About MinderFinder</h2>
        <br>
        <h4> MinderFinder was set up in 2018 to help parents find high quality childcare at the most affordable price.</h4>
        <br>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
          magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
          consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
          laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
          ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        <br>
        <button class="btn btn-default btn-lg">List your service</button>
      </div>
    </div>
  </div>

  <div id="services" class="container-fluid text-center">
    <h2>SERVICES</h2>
    <h4>What we offer</h4>
    <br>
    <div class="row slideanim">
      <div class="col-sm-4">
        <span class="glyphicon glyphicon-gbp logo-small"></span>
        <h4>AFFORDABILITY </h4>
        <p>Minderfinder lets parents find high quality childcare at the best price.</p>
      </div>
      <div class="col-sm-4">
        <span class="glyphicon glyphicon-heart logo-small"></span>
        <h4>QUALITY</h4>
        <p>Our review section ensures that you see fair and accurate reviews </p>
      </div>
      <div class="col-sm-4">
        <span class="glyphicon glyphicon-sunglasses logo-small"></span>
        <h4>EASE</h4>
        <p>MinderFinder aims to make finding childcare a breeze</p>
      </div>
    </div>
    <br>
    <br>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-certificate logo-small"></span>
      <h4>CERTIFIED</h4>
      <p>All out services must have up to date certifications and be compliant with the latest legislation.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small"></span>
      <h4 style="color:#303030;">HARD WORK</h4>
      <p>The MinderFinder team work extreamly hard to ensure that people can analyse the childcare facilities to ensure the
        best price.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small"></span>
      <h4 style="color:#303030;">HARD WORK</h4>
      <p>The MinderFinder team work extreamly hard to ensure that people can analyse the childcare facilities to ensure the
        best price.</p>
    </div>
  </div>

</asp:Content>
