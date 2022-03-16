﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="AmarShop.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
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
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="col-sm-3"> </div>
            <div class="col-sm-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">Login</div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>    Name:</label>
                                    <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>    SurName:</label>
                                    <asp:TextBox ID="txtSurname" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>    Address:</label>
                                    <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>    City:</label>
                                    <asp:TextBox ID="txtCity" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>    Pincode:</label>
                                    <asp:TextBox ID="txtPincode" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>    Mobile:</label>
                                    <asp:TextBox ID="txtMobile" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Email:</label>
                                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>    Gender:</label>
                                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="Female" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Male" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="Other" Value="3"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label>    Password:</label>
                                    <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>    Created Date:</label>
                                    <asp:TextBox ID="txtDate" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnSignup" CssClass="btn btn-success" runat="server" Text="Registration" OnClick="btnSignup_Click" />
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
