<%@ Page Title="" Language="C#" MasterPageFile="~/headerfooter.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TheVintageLibrary.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/LoginsSyle.css" rel="stylesheet" />
    <script src="js/Login.js"></script>
    <script src="https://kit.fontawesome.com/dbfcce6475.js" crossorigin="anonymous"></script>
    <div class="space">
         <br />
            <br />
    </div>
    
    <div class="container">
        <div class="row">
            <h1>Sign in</h1>  
            <div class= "col">
                <div class="card">
                    <div class="card-body"></div>
                      
        <div class="main">
            <form id=login  onsubmit="handleSubmit(event)" saction="#">
                <div class="field">
                    <span class="fa fa-user"></span>
                    <input type="text" id="email" placeholder="email" name="field" required />
                </div>
                <div class="field space">
                    <span class="fa fa-lock"></span>
                    <input type="password" class="pass-key" id="pass-key" placeholder="password" name="field" required />
                    <span class="show" id="show">SHOW</span>
                </div>
                <div class="pass">
                    <a href="#">forgot password?</a>
                </div>
                <div class="fieldlog">
                    <input type="submit" value="LOGIN" />
                </div>
            </form>
            <div class="login">Or login with</div>
            <div class="links">
                <div class="gmail">
                    <i class="fa fa-envelope fa-lg"><span><a style="text-decoration: none" href="https://mail.google.com/mail/u/0">Gmail</a></span></i>
                </div>
                <div class="medium">
                    <i class="fa fa-medium fa-lg"><a style="text-decoration: none" href=" https://medium.com/log-in"><span>Medium</span></i>
                </div>
            </div>
            <div class="signup">
                Don't have account?
                <a href="#">Signup Now</a>
            </div>
        </div>
        </div>

                </div>
            </div>   
        </div>
        <div class="space">
            <br />
            <br />

    </div>
</asp:Content>
