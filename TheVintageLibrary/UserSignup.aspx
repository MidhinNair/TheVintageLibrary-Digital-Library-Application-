<%@ Page Title="User SignUp" Language="C#" MasterPageFile="~/headerfooter.Master" AutoEventWireup="false" CodeBehind="UserSignup.aspx.cs" Inherits="TheVintageLibrary.UserSignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/loginStyleSheet.css" rel="stylesheet" />

    <div class="container">
        
    <br />
    <br />
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <%-- form image --%>
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <img width="100" src="imgsvids/user.png" />
                                </center>
                            </div>
                        </div>

                        <%-- form heading --%>
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <h3>Member Registration</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class=" col">
                                <hr />
                            </div>
                        </div>
                        <%-- user personal detials--%>

                        <div class="row">
                            <div class=" col-md-6">
                                <div class="form-group">
                                    <label>Full Name </label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Full Name" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class=" col-md-6">
                                <div class="form-group">
                                    <label>Date Of Birth </label>

                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Date Of Birth" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class=" col-md-6">
                                <div class="form-group">
                                    <label>Email </label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class=" col-md-6">
                                <div class="form-group">
                                    <label>Contact Number </label>

                                    <asp:TextBox CssClass="form-control" ID="TextBox4" placeholder="Contact Number" runat="server" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class=" col-md-4">
                                <div class="form-group">
                                    <label>State </label>
                                    <asp:DropDownList class="form-control custom-dropdown" ID="DropDownList1" runat="server" >
                                        <asp:ListItem Text="Select" Value="select"></asp:ListItem>
                                        <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
                                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                                        <asp:ListItem>Assam</asp:ListItem>
                                        <asp:ListItem>Bihar</asp:ListItem>
                                        <asp:ListItem>Chandigarh</asp:ListItem>
                                        <asp:ListItem>Chattisgarh</asp:ListItem>
                                        <asp:ListItem>Dadra and Nagar Haveli</asp:ListItem>
                                        <asp:ListItem>Daman and Diu</asp:ListItem>
                                        <asp:ListItem>Delhi</asp:ListItem>
                                        <asp:ListItem>Goa</asp:ListItem>
                                        <asp:ListItem>Gujarat</asp:ListItem>
                                        <asp:ListItem>Haryana</asp:ListItem>
                                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                                        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                                        <asp:ListItem>Jharkhand</asp:ListItem>
                                        <asp:ListItem>Karnataka</asp:ListItem>
                                        <asp:ListItem>Kerala</asp:ListItem>
                                        <asp:ListItem>Lakshadweep</asp:ListItem>
                                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                        <asp:ListItem>Maharashtra</asp:ListItem>
                                        <asp:ListItem>Manipur</asp:ListItem>
                                        <asp:ListItem>Meghalaya</asp:ListItem>
                                        <asp:ListItem>Mizoram</asp:ListItem>
                                        <asp:ListItem>Nagaland</asp:ListItem>
                                        <asp:ListItem>Orissa</asp:ListItem>
                                        <asp:ListItem>Pondicherry</asp:ListItem>
                                        <asp:ListItem>Punjab</asp:ListItem>
                                        <asp:ListItem>Rajasthan</asp:ListItem>
                                        <asp:ListItem>Sikkim</asp:ListItem>
                                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                                        <asp:ListItem>Tripura</asp:ListItem>
                                        <asp:ListItem>Uttarakhand</asp:ListItem>
                                        <asp:ListItem>Uttaranchal</asp:ListItem>
                                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                                        <asp:ListItem>West Bengal</asp:ListItem>


                                    </asp:DropDownList>
                                </div>
                            </div>

                            <%-- user personal detials--%>
                            <div class=" col-md-4">
                                <div class="form-group">
                                    <label>City </label>

                                    <asp:TextBox CssClass="form-control" ID="TextBox6" placeholder="City" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class=" col-md-4">
                                <div class="form-group">
                                    <label>Pincode </label>

                                    <asp:TextBox CssClass="form-control" ID="TextBox7" placeholder="Pincode" runat="server" Textmode="Number" ></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class=" col">
                                <div class="form-group">
                                    <label>Full  Address </label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" placeholder="Full Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>

                            </div>
                        </div>
                        <%-- login credential--%>
                        <br />
                        <center>
                        <span class="badge text-bg-primary">login credential</span>
                        </center>
                         <div class="row">
                            <div class=" col-md-6">
                                <div class="form-group">
                                    <label>Member ID </label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" placeholder="Member ID" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class=" col-md-6">
                                <div class="form-group">
                                    <label>Password </label>

                                    <asp:TextBox CssClass="form-control" ID="TextBox9" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class=" col">
                                <br />
                                <br />
                                <div class="form-group">
                                    <asp:Button class="btn btn-success w-100 d-block" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                    <a href="homePage.aspx"><< Back to Home</a>
                    <br />
                    <br />
                </div>
            </div>
        </div>
        </div>
</asp:Content>
