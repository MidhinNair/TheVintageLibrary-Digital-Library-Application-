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

    public partial class UserSignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //sign up button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckNewUser())
            {
                Response.Write("<script>alert('Member Already Exist with this Member Id try another ID')</script>");
            }
            else
            {
                signUpNewUser();
            }
           
        }

       //user defined method
       void signUpNewUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl (member_name,dob,contact_no,email,state,city,pincode,full_adderss,member_id,password,account_status) " +
                                        "VALUES (@FullName, @DateOfBirth, @ContactNumber, @Email, @State, @City, @Pincode, @FullAddress,@MemberID, @Password,@account_status) ", con);



                cmd.Parameters.AddWithValue("@FullName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@DateOfBirth", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@ContactNumber", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@State", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@City", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@FullAddress", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@MemberID", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successfull. Go to User Login to Login')</script>");
            }
            catch (Exception ex)
            {                                //dynamic Alertbox
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        bool CheckNewUser()  
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();                                 
                }

                SqlCommand cmd = new SqlCommand( "SELECT * FROM member_master_tbl WHERE member_id ='"+ TextBox5.Text.Trim() + "'", con);
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
            {                                //dynamic Alertbox
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
           
        }
    }
}