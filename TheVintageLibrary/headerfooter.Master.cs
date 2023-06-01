using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheVintageLibrary
{
    public partial class headerfooter : System.Web.UI.MasterPage
    {
       

            protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AuthorManagement.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("PublisherManagement.aspx");

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookIssuing.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberManagement.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookInventory.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberManagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignup.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Terms.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {    //not login

            try
            {
                if (Session["role"] == null || string.IsNullOrEmpty(Session["role"].ToString()))
                {
                    LinkButton1.Visible = true; //userlogin link button
                    LinkButton2.Visible = true; //signup link button

                    LinkButton3.Visible = false; //logout link button
                    LinkButton11.Visible = false; //hellouser link button

                    LinkButton5.Visible = true; //admin link button
                    LinkButton6.Visible = false; //autherManag link button
                    LinkButton7.Visible = false; //publishermang link button
                    LinkButton8.Visible = false; //bookissue link button
                    LinkButton9.Visible = false; //membermangement link button
                    LinkButton10.Visible = false; //bookinventory link button
                }
                else if (Session["role"].ToString() == "user")
                {
                    LinkButton1.Visible = false; //userlogin link button
                    LinkButton2.Visible = false; //signup link button

                    LinkButton3.Visible = true; //logout link button
                    LinkButton11.Visible = true; //hellouser link button
                    LinkButton11.Text = "Hello " + Session["fullname"].ToString();

                    LinkButton5.Visible = true; //admin link button
                    LinkButton6.Visible = false; //autherManag link button
                    LinkButton7.Visible = false; //publishermang link button
                    LinkButton8.Visible = false; //bookissue link button
                    LinkButton9.Visible = false; //membermangement link button
                    LinkButton10.Visible = false; //bookinventory link button
                }
                else if (Session["role"].ToString() == "admin")
                {
                    LinkButton1.Visible = false; //userlogin link button
                    LinkButton2.Visible = false; //signup link button

                    LinkButton3.Visible = true; //logout link button
                    LinkButton11.Visible = true; //hellouser link button
                    LinkButton11.Text = "Hello admin";

                    LinkButton5.Visible = true; //admin link button
                    LinkButton6.Visible = true; //autherManag link button
                    LinkButton7.Visible = true; //publishermang link button
                    LinkButton8.Visible = true; //bookissue link button
                    LinkButton9.Visible = true; //membermangement link button
                    LinkButton10.Visible = true; //bookinventory link button
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        //logout button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";
            LinkButton1.Visible = true; //userlogin link button
            LinkButton2.Visible = true; //signup link button

            LinkButton3.Visible = false; //logout link button
            LinkButton11.Visible = false; //hellouser link button

            LinkButton5.Visible = true; //admin link button
            LinkButton6.Visible = false; //autherManag link button
            LinkButton7.Visible = false; //publishermang link button
            LinkButton8.Visible = false; //bookissue link button
            LinkButton9.Visible = false; //membermangement link button
            LinkButton10.Visible = false; //bookinventory link button
            Response.Redirect("home.aspx");
        }
    }
}
