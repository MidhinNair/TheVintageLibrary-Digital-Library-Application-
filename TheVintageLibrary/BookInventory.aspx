<%@ Page Title="" Language="C#" MasterPageFile="~/headerfooter.Master" AutoEventWireup="true" CodeBehind="BookInventory.aspx.cs" Inherits="TheVintageLibrary.Book_Inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/BookInventoryStyleSheet1.css" rel="stylesheet" />
    <video id="video-background" autoplay loop muted>
        <source src="imgsvids/vintage%202.mp4" type="video/mp4">
        <!-- You can include additional source elements for different video formats -->
    </video>
     <br />
    <br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        <%-- form heading --%>
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <h3>Book Details</h3>

                                </center>
                            </div>
                        </div>
                        <%-- form image --%>
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <img width="150" src="imgsvids/bookInventry.png" />
                                </center>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class=" col">
                                <hr />
                            </div>
                        </div>
                        <asp:FileUpload Class="form-control" ID="FileUpload1" runat="server" />
                        <br />
                        <%-- user personal detials--%>

                        <div class="row">
                            <div class=" col-md-4">
                                <label>Book ID </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="ID" runat="server"></asp:TextBox>
                                        <asp:Button class="btn btn-primary me-1  " ID="Button4" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                            <div class=" col-md-8">
                                <div class="form-group">
                                    <label>Book Name</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Book Name" runat="server" ></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class=" col-md-4">
                                <label>Langauge </label>
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
                                          
                                          <asp:ListItem>French</asp:ListItem>
                                          <asp:ListItem>German</asp:ListItem>
                                          <asp:ListItem>English</asp:ListItem>
                                          <asp:ListItem>Russian</asp:ListItem>
                                          <asp:ListItem>Latin</asp:ListItem>
                                          <asp:ListItem>Greek</asp:ListItem>
                                          <asp:ListItem>Spanish</asp:ListItem>
                                          <asp:ListItem>Italian</asp:ListItem>
                                          <asp:ListItem>Chinese</asp:ListItem>
                                          <asp:ListItem>Japanese</asp:ListItem>
                                          <asp:ListItem>Hindi</asp:ListItem>
                                          <asp:ListItem>Sankskrit</asp:ListItem>
                                          <asp:ListItem>Tamil</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <label>Publisher Name </label>
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control" ID="DropDownList3" runat="server">
                                           <asp:ListItem Text="Select" Value="select"></asp:ListItem>  
                                          <asp:ListItem>Penguin Books</asp:ListItem>
                                          <asp:ListItem>Random House</asp:ListItem>
                                          <asp:ListItem>Oxford University Press</asp:ListItem>
                                          <asp:ListItem>HarperCollins</asp:ListItem>
                                          <asp:ListItem>Macmillan Publishers</asp:ListItem>
                                          <asp:ListItem>G.P. Putnam's Sons</asp:ListItem>
                                          <asp:ListItem>Houghton Mifflin Harcourt</asp:ListItem>
                                          <asp:ListItem>Charles Scribner's Sons</asp:ListItem>
                                          <asp:ListItem>George Routledge & Sons</asp:ListItem>
                                          <asp:ListItem>William Collins, Sons</asp:ListItem>                                      
                                    </asp:DropDownList>
                                </div>
                            </div>                                                   
                       
                        <div class=" col-md-4">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList Class="form-control" ID="DropDownList4" runat="server">
                                        <asp:ListItem Text="Select" Value="select"></asp:ListItem>  
                                        <asp:ListItem>William Shakespeare</asp:ListItem>
                                          <asp:ListItem>Jane Austen</asp:ListItem>
                                          <asp:ListItem>Charles Dickens</asp:ListItem>
                                          <asp:ListItem>Fyodor Dostoevsky</asp:ListItem>
                                          <asp:ListItem>Mark Twain</asp:ListItem>
                                          <asp:ListItem>Charlotte Brontë</asp:ListItem>
                                          <asp:ListItem>Leo Tolstoy</asp:ListItem>
                                          <asp:ListItem>Victor Hugo</asp:ListItem>
                                          <asp:ListItem>Emily Brontë</asp:ListItem>
                                          <asp:ListItem>Miguel de Cervantes</asp:ListItem>                                         
                                    </asp:DropDownList>
                                </div>
                                <label>Publish Date </label>
                                <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox5" placeholder=" Publish Date" runat="server"  TextMode="Date"></asp:TextBox>
                                </div>                                                                            
                        </div>
                        <div class=" col-md-4">
                            <label>Genre</label>
                            <div class="form-group">
                                <asp:ListBox Class="form-control" ID="ListBox1" runat="server">
                                            
                                          <asp:ListItem>Classic Literature</asp:ListItem>
                                          <asp:ListItem>Historical Fiction </asp:ListItem>
                                          <asp:ListItem> Gothic Literature</asp:ListItem>
                                          <asp:ListItem> Adventure</asp:ListItem>
                                          <asp:ListItem> Mystery and Detective Fiction</asp:ListItem>
                                          <asp:ListItem> Science Fiction</asp:ListItem>
                                          <asp:ListItem> Poetry</asp:ListItem>
                                          <asp:ListItem> Philosophy and Essays</asp:ListItem>
                                          <asp:ListItem>Travel Literature</asp:ListItem>
                                          <asp:ListItem> Plays and Drama</asp:ListItem>  
                                          <asp:ListItem> Comedy</asp:ListItem>  
                                </asp:ListBox>
                            </div>
                        </div>
                    </div>
                        <div class="row">
                            <div class=" col-md-4">
                                <div class="form-group">
                                    <label>Edition</label>

                                    <asp:TextBox CssClass="form-control" ID="TextBox12" placeholder="Edition" runat="server"  ></asp:TextBox>
                                </div>
                            </div>
                            <div class=" col-md-4">
                                <div class="form-group">
                                    <label>Book Cost (per unit) </label>

                                    <asp:TextBox CssClass="form-control" ID="TextBox4" placeholder="Book Cost" runat="server"  ></asp:TextBox>
                                </div>
                            </div>
                            <div class=" col-md-4">
                                <div class="form-group">
                                    <label>Pages </label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="Pages" runat="server"  ></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class=" col-md-4">
                                <div class="form-group">
                                    <label>Actual Stoke</label>

                                    <asp:TextBox CssClass="form-control" ID="TextBox6" placeholder="Actual Stoke" runat="server"  ></asp:TextBox>
                                </div>
                            </div>
                            <div class=" col-md-4">
                                <div class="form-group">
                                    <label>Current Stoke </label>

                                    <asp:TextBox CssClass="form-control" ID="TextBox7" placeholder="Current Stoke" runat="server"  ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class=" col-md-4">
                                <div class="form-group">
                                    <label>Issued Books </label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" placeholder="Issued Books" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        


                        <div class="row">
                            <div class=" col">
                                <div class="form-group">
                                    <label>Book Description </label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" placeholder="Enter Product Description" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                       
                        <br />
                        <div class="row">
                            <div class=" col-md-4">
                                <asp:Button class="form-control btn btn-success w-100 d-block" ID="Button1" runat="server" Text="Add" />
                            </div>
                            <div class=" col-md-4">
                                <asp:Button class="form-control btn btn-primary w-100 d-block" ID="Button2" runat="server" Text="Update" />
                            </div>
                            <div class=" col-md-4">
                                <asp:Button class="form-control btn btn-danger w-100 d-block" ID="Button3" runat="server" Text="Delete" />
                            </div>
                        </div>
                        <br />
                        <a href="homePage.aspx"><< Back to Home</a>
                    </div>
                </div>
            </div>

            <br />
            <br />


            <%-- Member List --%>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">
                        <%-- form heading --%>
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <h3>Book Inventory List</h3>
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
        </div>
    </div>

        
</asp:Content>
