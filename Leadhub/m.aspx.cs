using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Leadhub
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = @"Data Source=DESKTOP-32BMRJG\SQLEXPRESS;Initial Catalog=Test;Integrated Security=True";
       
        protected void Page_Load(object sender, EventArgs e)
        {
           }
        protected void Button1_Click(object sender, EventArgs e)
        {

           
            if (checkMemberExists())
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "swal('Oops','User Exist','error')", true);
                
            }
            else
            {
                signUpNewMember();
            }
        }

        // user defined method
        bool checkMemberExists()
        {
            try
            {
                
                SqlConnection con = new SqlConnection(cs);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from members where username='" + txtusername.Text.Trim() + "';", con);
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
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void signUpNewMember()
        {
            string fname = txtfname.Text;
            string lname = txtlname.Text;
            string dob = txtdob.Text;
            string email = txtemail.Text;
            string contact = txtcontact.Text;
            string state = DropDownList1.SelectedValue;
            string box = txtbox.Text;
            string Address = txtaddress.Text;
            string username = txtusername.Text;
            string password = txtpassword.Text;

            string query = string.Format("INSERT INTO members (First_name,Last_name,dob,Email,contact,state,box,Address,username,password) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}')", fname, lname, dob, email, contact, state, box, Address, username, password);
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();
            con.Close();

            //Response.Write("<script>swal("Good job!", "You clicked the button!", "success");;</script>");

            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "swal('Good Job','saved Successfully','success')", true);


            txtfname.Text = "";
            txtlname.Text = "";
            txtdob.Text = "";
            txtemail.Text = "";
            txtcontact.Text = "";
            txtbox.Text = "";
            txtaddress.Text = "";
            txtusername.Text = "";
            txtpassword.Text = "";
   
        }
       
    }
}