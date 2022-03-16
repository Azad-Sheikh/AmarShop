<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AmarShop.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Amar Shop</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        footer{
            background-color: #f2f2f2;
            padding: 25px;
        }
        .carousel-inner img{
            width: 100%;
            min-height: 200px;
        }
        @media (max-width: 600px){
            .carousel-caption{
                display: none;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron text-center" style="margin-bottom: 0;background-color:#DD5E89">
            <h1>Amar Shop</h1>
            <p>The Real Bangladeshi online Food Site!</p>
        </div>
        <nav class=" navbar navbar-inserse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx">CB Food</a>
                </div>
                <div class="collapse navbar-collapse" id="mynavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="Default.aspx">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Product</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        <li><a href="Signup.aspx"><span class="glyphicon glyphicon-log-in"></span> Signup</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                   <div id="myCarousel" class="carousel slide" data-ride="carousel">
                       <ol class="carousel-indicators">
                           <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                           <li data-target="#myCarousel" data-slide-to="1"></li>
                       </ol>
                       <div class="carousel-inner" role="listbox">
                           <div class="item active">
                               <img src="logo/banner1.jpg" alt="Image"/>
                               <div class="carousel-caption">
                                   <h3>Offer</h3>
                                   <p>Pizza.</p>
                               </div>
                           </div>
                           <div class="item">
                               <img src="logo/banner2.jpg" alt="Image"/>
                               <div class="carousel-caption">
                                   <h3>More Sell $</h3>
                                   <p>Burger</p>
                               </div>
                           </div>
                         </div>

                       <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                           <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                               previous</span></a><a class="right carousel-control" href="#myCarousel" role="button"
                                   data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><span class="sr-only">Next</span></a>

                       </div>
                   </div>

                <div class="col-sm-4">
                    <div class="well">
                        <p>Some Text...</p>
                    </div>
                    <div class="well">
                        <p>Upcoming Events...</p>
                    </div>
                    <div class="well">
                        <p>Visit Our Blog.</p>
                    </div>

                </div>

                </div>

            </div>
        <div class="container text-center">

            <h3>  Product</h3>
            <br>
            <div class="row">
                <div class="col-sm-3">
                    <img src="logo/banner2.jpg" class="img-responsive" style="width: 100%" alt="Image" />
                    <p> Current Project</p>
                </div>
                <div class="col-sm-3">
                    <img src="logo/banner2.jpg" class="img-responsive" style="width: 100%" alt="Image" />
                    <p> Project 2</p>
                </div>
                <div class="col-sm-3">
                    <div class="well">
                        <p> Some Text.</p>
                    </div>
                    <div class="well">
                        <p> Some Text.</p>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="well">
                        <p> Some Text.</p>
                    </div>
                    <div class="well">
                        <p> Some Text.</p>
                    </div>
                </div>
            </div>
            <hr />
        </div>

        <div class="container text-center">

            <h3>Our Partners</h3>
            <br>
            <div class="row">
                <div class="col-sm-2">
                    <img src="logo/banner1.jpg" class="img-responsive" style="width: 100%" alt="Image" />
                    <p>Partner1</p>
                </div>
                <div class="col-sm-2">
                    <img src="logo/banner1.jpg" class="img-responsive" style="width: 100%" alt="Image" />
                    <p>Partner2</p>
                </div>
                <div class="col-sm-2">
                    <img src="logo/banner1.jpg" class="img-responsive" style="width: 100%" alt="Image" />
                    <p>Partner3</p>
                </div>
                <div class="col-sm-2">
                    <img src="logo/banner1.jpg" class="img-responsive" style="width: 100%" alt="Image" />
                    <p>Partner4</p>
                </div>
                <div class="col-sm-2">
                    <img src="logo/banner1.jpg" class="img-responsive" style="width: 100%" alt="Image" />
                    <p>Partner5</p>
                </div>
                <div class="col-sm-2">
                    <img src="logo/banner1.jpg" class="img-responsive" style="width: 100%" alt="Image" />
                    <p>Partner6</p>
                </div>
            </div>

        </div>
        <br>

        <footer class="container-fluid text-center jumbotron">
            <p>copyright@2022 www.amarshop.in</p>
        </footer>
    </form>
</body>
</html>
