using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Leadhub
{
    public partial class ClientLogin : System.Web.UI.Page
    {
        string cs = @"Data Source=DESKTOP-32BMRJG\SQLEXPRESS;Initial Catalog=LeadHub;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(cs);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from client where email='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('"+ dr.GetValue(4).ToString() +"'); </script>");
                        Session["username"] = dr.GetValue(8).ToString();
                        Session["role"] = "user";
                        
                    }
                    Response.Redirect("m.aspx");
                }
                else
                {
                    Response.Write("<script>alert('invalid credentials'); </script>");

                }


            }

            catch(Exception ex)
            {

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("register/ClientRegistration.aspx");
        }
    }
}