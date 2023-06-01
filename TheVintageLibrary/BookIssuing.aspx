<%@ Page Title="" Language="C#" MasterPageFile="~/headerfooter.Master" AutoEventWireup="true" CodeBehind="BookIssuing.aspx.cs" Inherits="TheVintageLibrary.BookIssuing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/BookIssuingStyleSheet1%20.css" rel="stylesheet" />
    
    <div class="container">
        <br />
        <br />
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        <%-- form heading --%>
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <h3>Book Issuing</h3>
                                </center>
                            </div>
                        </div>
                        <%-- form image --%>
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <img width="150px" src="imgsvids/book%20issuing.png" />
                                </center>
                            </div>
                        </div>
                        <br />
                       


                        <div class="row">
                            <div class=" col-md-6 ">
                                <label>Member ID</label>                               
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder=" Member ID" runat="server"></asp:TextBox>                                                                   
                                   </div>
                            </div>                            
                            <div class=" col-md-6 ">
                                <label>Book ID</label>                               
                                    <div class="input-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder=" Book ID" runat="server"></asp:TextBox>  
                                        <asp:Button class="btn btn-secondary  " ID="Button4" runat="server" Text="Go" />
                                   </div>
                                   </div>
                            </div>
                            <br />
                            <br />
                        </div>


                            <div class="row">
                            <div class=" col-md-6 ">
                                <label>Member Name</label>                               
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder=" Member Name" runat="server" ReadOnly="True"></asp:TextBox>                                                                   
                                   </div>
                            </div>                            
                            <div class=" col-md-6 ">
                                <label>Book Name</label>                               
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" placeholder=" Book Name" runat="server" ReadOnly="True"></asp:TextBox>                                                                   
                                   </div>
                            </div>
                            <br />
                            <br />

                                
         
                            <div class=" col-md-6 ">
                                <label>Start Date</label>                               
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" placeholder=" Start Date" runat="server"  TextMode="Date"></asp:TextBox>                                                                   
                                   </div>
                            </div>                            
                            <div class=" col-md-6 ">
                                <label>End Date</label>                               
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" placeholder=" End Date" runat="server" TextMode="Date"  ></asp:TextBox>                                                                   
                                   </div>
                            </div>
                           
                        </div>

                                 <br />
                           
                            <br />

                        <div class="row">
                            <div class=" col-6 ">
                                <div class="form-group">
                                    <asp:Button class="btn btn-info w-100 block" ID="Button1" runat="server" Text="Issue" />
                                </div>
                            </div>
                            <div class=" col-6 ">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success w-100 block" ID="Button2" runat="server" Text="Return" />
                                </div>
                            </div>
                           
                        </div>

                        <br />
                    </div>
                </div>
            </div>


            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">
                        <%-- form heading --%>
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <h3>Issued Book List</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class=" col">
                                <hr />
                            </div>
                        </div>

                        <%-- result table --%>

                        <div class="row">
                            <div class=" col">
                                <asp:GridView class="table table-striped table-bordered table-hover" ID="GridView2" runat="server"></asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        
        <br />
        
        <a href="home.aspx"><< Back to Home</a>
       
        <br />
    </div>
    </div>


</asp:Content>
