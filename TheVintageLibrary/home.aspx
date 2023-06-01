<%@ Page Title="" Language="C#" MasterPageFile="~/headerfooter.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="TheVintageLibrary.homePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/customStyleSheetHomepage.css" rel="stylesheet" />
    <script src="js/homePageScript.js"></script>
    <script src="bootstrap/js/SlideShow1JavaScript.js"></script>
    <script src="bootstrap/js/SlideShowJavaScript.js"></script>
    <link href="bootstrap/css/SlideShowStyleSheet1.css" rel="stylesheet" />
    <center>
        <div class="fluid">
            <video id="video-background" autoplay loop muted>
                <source src="imgsvids/vintage%203.mp4" type="video/mp4">
                <!-- You can include additional source elements for different video formats -->
            </video>
        </div>
        <section class="container-fluid">

            <h1 >The Vintage Library</h1>
            <br />
            <br />
        </section>
        <section class="explore">
            <a href="#" onclick="explorerFun()">Explore</a>

            <br />
            <br />
            <br />

        </section>


    </center>

    <section class="magic">

        <div class="row">
            <div class="col-12">
                <center>
                    <h2>Books Are Here</h2>
                    <p><b>search any book you want</b></p>
                </center>
            </div>
        </div>
        <div class="row">

            <div class="col-md-4">
                <center>
                    <img width="120" src="imgsvids/search.png" />
                    <h4>Search book</h4>
                    <p class="text-justify">
                        Search book functionality allows users to easily explore vast collections and 
                            find specific books based on their interests or requirements. With a few simple 
                            keywords or filters, users can quickly narrow down their search and discover
                            books that align with their preferences. 
                    </p>
                </center>
            </div>
            <div class="col-md-4">
                <center>
                    <img width="120" src="imgsvids/abcd.png" />
                    <h4>Renew The Book</h4>
                    <p class="text-justify">
                        Tells the story of a dilapidated library on the verge of closure, 
                        but a determined group of book lovers unite to save it from its fate. 
                        Through their unwavering efforts, they transform the library into a vibrant 
                        hub of knowledge, inspiration, and connection. 
                    </p>
                </center>
            </div>
            <div class="col-md-4">
                <center>
                    <img width="120" src="imgsvids/dlib.png" />
                    <h4>Digital Book Inventory</h4>
                    <p class="text-justify">
                        A Digital Book Inventory is a comprehensive system designed to manage and 
                        organize digital books in a streamlined and efficient manner. With its intuitive 
                        interface, it allows users to easily categorize, track, and access their digital 
                        book collection from any device.ss

                    </p>
                </center>
            </div>
            

        </div>
    </section>
   
    <div class="card ">
    <div class="container">
        <center>
        <h2>Inside Our Library</h2>
            </center>
         <br />
        
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" id="sideshow">

                <div class="item active">
                    <img src="imgsvids/4.1.jpg" alt="New York" style="width: 100%;">
                   
                    <div class="carousel-caption">
                        <h3>Reading Light</h3>
                        <p>Our vintage library has all the heritage items that were kept for a long time </p>
                    </div>
                </div>

                <div class="item">
                    
                    <img src="imgsvids/5.1.jpg" alt="New York" style="width: 100%;">
                    <div class="carousel-caption">
                        <h3>The Books Inside The Shelf </h3>
                        <p>The books inside the shelf formed a colorful mosaic of literary treasures, each waiting to be discovered and explored by eager readers.</p>
                    </div>
                </div>

                <div class="item">
                   
                    <img src="imgsvids/6.1.jpg" alt="New York" style="width: 100%;">
                    <div class="carousel-caption">
                        <h3>Our Collections</h3>
                        <p>The Vintage books evoke a sense of nostalgia and charm with their worn pages and aged covers, taking readers on a literary journey through the past</p>
                    </div>
                </div>

            </div>

            <!-- Left and right controls -->
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
    </div>

    <br />

</asp:Content>
