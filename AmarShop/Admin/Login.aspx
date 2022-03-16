<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AmarShop.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login </title>
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
        <div class="jumbotron text-center" style="margin-bottom: 0">
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
                       <%-- <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Product</a></li>--%>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                       <%-- <li><a href="Signup.aspx"><span class="glyphicon glyphicon-log-in"></span> Signup</a></li>--%>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="col-sm-3"> </div>
            <div class="col-sm-6">
                <div class="panel panel-danger">
                    <div class="panel-heading">Admin Login</div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>UserName:</label>
                                    <asp:TextBox ID="txtuserid" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Password:</label>
                                    <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                    <asp:Button ID="btnCancel" CssClass="btn btn-danger" runat="server" Text="Cancel" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer"></div>
                </div>
            </div>
            <div class="col-sm-3"> </div>

        </div>
          <br>

        <footer class="container-fluid text-center jumbotron">
            <p>copyright@2022 www.amarshop.in</p>
        </footer>
    </form>
</body>
</html>
