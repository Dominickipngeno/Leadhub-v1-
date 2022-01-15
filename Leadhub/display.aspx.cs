using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Leadhub
{
    public partial class display : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();

            }
        }

        private void GetData()
        {
            string cs = @"Data Source=DESKTOP-32BMRJG\SQLEXPRESS;Initial Catalog=Test;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            string query = "SELECT * FROM members ";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }
        protected void Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            string cs = @"Data Source=DESKTOP-32BMRJG\SQLEXPRESS;Initial Catalog=Test;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);

            string query = "DELETE  FROM members WHERE contact= " + id;
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int row = cmd.ExecuteNonQuery();
            con.Close();
            if (row > 0)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "swal('Deleted!','Record Deleted Successfully','success')", true);
                GetData();
            }

        }

    }
}
