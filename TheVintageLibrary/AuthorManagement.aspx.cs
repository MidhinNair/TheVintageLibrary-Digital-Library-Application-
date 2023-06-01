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
  
    public partial class AutherManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // add button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            

            if (checkAutorExist())
            {
                Response.Write("<script>alert('Author with this ID already exist you can't add anoth author with the same Author ID')</script>");
               
            }
            else
            {
               addNewAuthor();
            }
           
        }
        //update Button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkAutorExist())
            {
                updateAutor();
            }
            else
            {
                Response.Write("<script>alert('Author doesnot exist')</script>");
            
            }
            
        }
        //Delete Button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkAutorExist())
            {
                deleteAutor();
            }
            else
            {
                Response.Write("<script>alert('Author doesnot exist')</script>");
            }
           
        }
        //GO BUTTON CLICK
        protected void Button4_Click(object sender, EventArgs e)
        {
            getAutorBYId();
        }


        //userDefin fun to check the autor exist or not
        bool checkAutorExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_tbl WHERE author_id ='" + TextBox1.Text.Trim() + "'", con);
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
            catch(Exception ex)
            {
                Response.Write("<sript>alert('" + ex.Message + "');</sript>");
                return false;
            }
            
        }
        //userdefine publishernme get
        void getAutorBYId()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_tbl WHERE author_id ='" + TextBox1.Text.Trim() + "'", con);
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
                    Response.Write("<sript>alert('Invalid Author ID');</sript>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<sript>alert('" + ex.Message + "');</sript>");

            }
        }

        //userDefin fun to add Author
        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO author_master_tbl (author_id,author_name) " +
                                        "VALUES (@AuthorId, @AuthorNmae) ", con);



                cmd.Parameters.AddWithValue("@AuthorId", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@AuthorNmae", TextBox2.Text.Trim());                
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully added new Author')</script>");
                clearForm();
                GridView2.DataBind();
            }
            catch (Exception ex)
            {                                //dynamic Alertbox
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        //userDefin fun to update Author
        void updateAutor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE author_master_tbl SET author_name= @AuthorNmae WHERE author_id='"+TextBox1.Text.Trim()+"' ", con);
                cmd.Parameters.AddWithValue("@AuthorNmae", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully updated  Author')</script>");
                clearForm();
                GridView2.DataBind();
            }
            catch (Exception ex)
            {                                //dynamic Alertbox
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        //userdefine to Delete Author
        void deleteAutor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE FROM author_master_tbl WHERE author_id='" + TextBox1.Text.Trim() + "'  ", con);

                cmd.Parameters.AddWithValue("@AuthorId", TextBox1.Text.Trim());            
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Successfully Deleted Author')</script>");
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

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}