<%@ Page Title="" Language="C#" MasterPageFile="~/headerfooter.Master" AutoEventWireup="true" CodeBehind="PublisherManagement.aspx.cs" Inherits="TheVintageLibrary.PublisherManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript">
          $(document).ready(function () {
              $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          });
      </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/PublisherMangementStylesheet.css" rel="stylesheet" />
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
                                    <h3>Publisher Detalis</h3>
                                </center>
                            </div>
                        </div>
                        <%-- form image --%>
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <img width="200" src="imgsvids/logopublisher.png" />                                 
                                </center>
                            </div>
                        </div>
                        <br />
                        <br />

                        <div class="row">

                            <div class=" col-md-4 ">
                                <label>Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder=" ID" runat="server"></asp:TextBox>
                                        <asp:Button class="btn btn-secondary  " ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class=" col-md-8 ">
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Publisher Name" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>

                        <div class="row">
                            <div class=" col-4 ">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success w-100 block" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                                </div>
                            </div>
                            <div class=" col-4 ">
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary w-100 block" ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                                </div>
                            </div>
                            <div class=" col-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-danger w-100 block" ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
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
                                    <h3>Publisher List</h3>                                
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vintage_library_dbConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"> </asp:SqlDataSource>
                            <div class=" col">
                                <asp:GridView class="table table-striped table-bordered table-hover" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
            <br />
            <br />
        <a href="homePage.aspx"><< Back to Home</a>
        <br />
        <br />
    </div>

</asp:Content>
