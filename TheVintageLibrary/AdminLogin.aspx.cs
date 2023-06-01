using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheVintageLibrary
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        string strcon = System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM admin_login_tbl WHERE user_name='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                        Session["username"] = dr.GetValue(0).ToString();
                        Session["fullname"] = dr.GetValue(2).ToString();
                        Session["role"] = "admin";
                    }
                    Response.Redirect("home.aspx");
                }

                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
                dr.Close();

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}