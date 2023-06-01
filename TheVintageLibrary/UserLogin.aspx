<%@ Page Title="" Language="C#" MasterPageFile="~/headerfooter.Master" AutoEventWireup="false" CodeBehind="UserLogin.aspx.cs" Inherits="TheVintageLibrary.UserLogin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="css/UserLoginStyleSheet1.css" rel="stylesheet" />
    <br />
    <br /><br />
    <br />
      <div class="container">
          
    
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <img width="150" src="imgsvids/user.png" />
                                </center>    
                            </div>
                        </div>
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <h3>User Login</h3>
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
                                    <asp:Button class="btn btn-success w-100 d-block" id="Button1"  runat="server" Text="Login" OnClick="Button1_Click" />
                                    

                                </div>
                                <br />
                                <div class="form-group">
                                    <a href="UserSignup.aspx" >  <input  class="btn btn-info w-100 d-block" id="Button2"  type="button" value="Sign Up" /> </a>
                            </div>
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
    <br /><br />
    <br />


</asp:Content>


   