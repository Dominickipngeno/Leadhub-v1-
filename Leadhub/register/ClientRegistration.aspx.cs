using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Leadhub.register
{
    public partial class ClientRegistration : System.Web.UI.Page
    {
        string cs = @"Data Source=DESKTOP-32BMRJG\SQLEXPRESS;Initial Catalog=LeadHub;Integrated Security=True";
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
                SqlCommand cmd = new SqlCommand("SELECT * from client where Email='" + TextBox4.Text.Trim() + "';", con);
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
            
            string title =   TextBox1.Text;
            string fname =   TextBox2.Text;
            string lname =   TextBox3.Text;
            string email =   TextBox4.Text;
            string contact = TextBox5.Text;
            string services = DropDownList1.SelectedValue;
            string date =    TextBox6.Text;
          
            string password = TextBox7.Text;

            try
            {
                string query = string.Format("INSERT INTO client (title,FirstName,LastName,Email,phone,services,date,password) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')", title, fname, lname, email, contact, services, date, password);
                SqlConnection con = new SqlConnection(cs);
                con.Open();

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.ExecuteNonQuery();
                con.Close();

                //Response.Write("<script>swal("Good job!", "You clicked the button!", "success");;</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "swal('Good Job','saved Successfully','success')", true);


                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";

                Response.Redirect("./ClientLogin.aspx");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
             
            }

        }
    }
}
