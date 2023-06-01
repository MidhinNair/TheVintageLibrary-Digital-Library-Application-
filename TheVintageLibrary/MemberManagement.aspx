<%@ Page Title="" Language="C#" MasterPageFile="~/headerfooter.Master" AutoEventWireup="true" CodeBehind="MemberManagement.aspx.cs" Inherits="TheVintageLibrary.MemberManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/MemberManagementStyleSheet1.css" rel="stylesheet" />
    <link href="fontawsome/css/all.css" rel="stylesheet" />

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
                                    <h3>Member Details</h3>

                                </center>
                            </div>
                        </div>
                        <%-- form image --%>
                        <div class="row">
                            <div class=" col">
                                <center>
                                    <img width="100" src="imgsvids/user.png" />
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
                            <div class=" col-md-2">
                                <label>Member ID </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="ID" runat="server"></asp:TextBox>
                                        <asp:Button class="btn btn-primary me-1  " ID="Button4" runat="server" Text="Go" />

                                    </div>
                                </div>
                            </div>
                            <div class=" col-md-4">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Full Name" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class=" col-md-6">
                                <label>Account Status </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" placeholder="Member ID" runat="server"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success me-1" ID="LinkButton1" runat="server"><i class="fa-solid fa-circle-check" ></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning me-1" ID="LinkButton2" runat="server"><i class="fa-solid fa-circle-pause"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger me-1" ID="LinkButton3" runat="server"><i class="fa-solid fa-user-xmark" style="color: #ffffff;"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class=" col-md-3">
                                <div class="form-group">
                                    <label>Date Of Birth</label>

                                    <asp:TextBox CssClass="form-control" ID="TextBox12" placeholder="Date Of Birth" runat="server" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class=" col-md-4">
                                <div class="form-group">
                                    <label>Contact Number </label>

                                    <asp:TextBox CssClass="form-control" ID="TextBox4" placeholder="Contact Number" runat="server" TextMode="Phone" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class=" col-md-5">
                                <div class="form-group">
                                    <label>Email </label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="Email" runat="server" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class=" col-md-4">
                                <div class="form-group">
                                    <label>State </label>
                                    <asp:DropDownList class="form-control custom-dropdown" ID="DropDownList2" runat="server">
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

                                    <asp:TextBox CssClass="form-control" ID="TextBox6" placeholder="City" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class=" col-md-4">
                                <div class="form-group">
                                    <label>Pincode </label>

                                    <asp:TextBox CssClass="form-control" ID="TextBox7" placeholder="Pincode" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class=" col">
                                <div class="form-group">
                                    <label>Full  Adderss </label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" placeholder="Full Adderss" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>
                        </div>
                        <%-- login credential--%>
                        <br />
                        <asp:Button class="btn btn-danger w-100 d-block" ID="Button1" runat="server" Text="Delete User Permanently" />

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
                                    <h3>Member List</h3>
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vintage_library_dbConnectionString %>" ProviderName="<%$ ConnectionStrings:vintage_library_dbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class=" col">
                                <asp:GridView class="table table-striped table-bordered table-hover" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="member_id" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name" />
                                        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                                        <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                        <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                                        <asp:BoundField DataField="full_adderss" HeaderText="full_adderss" SortExpression="full_adderss" />
                                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                        <asp:BoundField DataField="account_status" HeaderText="account_status" SortExpression="account_status" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <br />


            <br />
        </div>
    </div>

</asp:Content>
