<%@ Page Title="" Language="C#" MasterPageFile="~/headerfooter.Master" AutoEventWireup="false" CodeBehind="AdminLogin.aspx.cs" Inherits="TheVintageLibrary.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/loginStyleSheet.css" rel="stylesheet" />
    <br />
    <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <img width="150" src="imgsvids/admin.png" />
                                </center>    
                            </div>
                        </div>
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <h3>Admin Login</h3>
                                </center>    
                            </div>
                        </div>
                      
                        <div class="row">
                            <div class=" col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class=" col">
                               
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="User ID" runat="server"></asp:TextBox>
                                </div>
                                <br />
                           
                               
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                   <br />
                                <div class="form-group">
                                    <asp:Button class="btn btn-success w-100 d-block" id="Button1"  runat="server" Text="Login" OnClick="Button1_Click1" />
                                </div>
                                <br />
                              
                        </div>

                    </div>
                </div>
                    <a href="home.aspx"><< Back to Home</a>
                    <br />
                    <br />
            </div>
        </div>
    </div>
    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
