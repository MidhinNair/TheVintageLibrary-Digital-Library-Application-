using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheVintageLibrary
{
    public partial class PublisherManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //add button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkPublisherExist())
            {
                Response.Write("<script>alert('Publisher with this ID already exist you can't add anoth Publisher with the same Publisher ID')</script>");

            }
            else
            {
                addNewPublisher();
            }

        }
        //update button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkPublisherExist())
            {
                updatePublisher();
            }
            else
            {
                Response.Write("<script>alert('Publisher doesnot exist')</script>");

            }
        }
        //delete button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkPublisherExist())
            {
                deletePublisher();
            }
            else
            {
                Response.Write("<script>alert('Publisher doesnot exist')</script>");
            }
        }
        //go button
        protected void Button4_Click(object sender, EventArgs e)
        {
            getPublisherBYId();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        //userdefine publishernme get
        void getPublisherBYId()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM publisher_master_tbl WHERE publisher_id ='" + TextBox1.Text.Trim() + "'", con);
                //disconnected architecture 
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<sript>alert('Invalid Publisher ID');</sript>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<sript>alert('" + ex.Message + "');</sript>");
               
            }
        }
        //userDefin fun to check the autor exist or not
        bool checkPublisherExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM publisher_master_tbl WHERE publisher_id ='" + TextBox1.Text.Trim() + "'", con);
                //disconnected architecture 
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<sript>alert('" + ex.Message + "');</sript>");
                return false;
            }

        }
        //userDefin fun to add Author
        void addNewPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO publisher_master_tbl (publisher_id,publisher_name) " +
                                        "VALUES (@PublisherId, @PublisherName) ", con);



                cmd.Parameters.AddWithValue("@PublisherId", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@PublisherName", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully added new Publisher')</script>");
                clearForm();
                GridView2.DataBind();
            }
            catch (Exception ex)
            {                                //dynamic Alertbox
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        //userDefin fun to update Author
        void updatePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE publisher_master_tbl SET publisher_name= @publisherName WHERE publisher_id='" + TextBox1.Text.Trim() + "' ", con);
                cmd.Parameters.AddWithValue("@publisherName", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully updated  Publisher')</script>");
                clearForm();
                GridView2.DataBind();
            }
            catch (Exception ex)
            {                                //dynamic Alertbox
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        //userdefine to Delete Author
        void deletePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM publisher_master_tbl WHERE publisher_id='" + TextBox1.Text.Trim() + "'  ", con);

                cmd.Parameters.AddWithValue("@PublisherId", TextBox1.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Deleted Publisher')</script>");
                clearForm();
                GridView2.DataBind();
            }
            catch (Exception ex)
            {                                //dynamic Alertbox
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }
        //userdefined button blank
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        
    }
}