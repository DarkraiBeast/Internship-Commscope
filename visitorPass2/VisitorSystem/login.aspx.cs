using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace visitorSystem2
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DARKRAI-BEAST\SQLEXPRESS;Initial Catalog=visitor;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand q = new SqlCommand("select COUNT(1) from Security where sec_username= @username AND sec_password=@password", con);
            q.Parameters.AddWithValue("@username", TextBox1.Text.Trim());
            q.Parameters.AddWithValue("@password",TextBox2.Text.Trim());
            int count = Convert.ToInt32(q.ExecuteScalar());
            con.Close();
            if(count == 1)
            {
                Session["username"] = TextBox1.Text.Trim();
                Response.Redirect("Security.aspx");
            }
            else
            {
                Label2.Visible = true;
            }
            
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}