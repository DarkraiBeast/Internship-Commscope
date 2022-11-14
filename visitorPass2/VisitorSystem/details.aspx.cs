using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace visitorSystem2
{
    public partial class details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DARKRAI-BEAST\SQLEXPRESS;Initial Catalog=visitor;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            name.Text = Session["name"].ToString();
            email.Text = Session["email"].ToString();
            mob.Text = Session["mob"].ToString();
            visit.Text = Session["visit"].ToString();
            desp.Text = Session["descrip"].ToString();
            date.Text = Session["date"].ToString();
            e_email.Text = Session["e_email"].ToString();
            status.Text = "...pending for approval";

            con.Open();
            SqlCommand q = new SqlCommand("SELECT max(visitor_id) from visitor", con);
            q.CommandType = System.Data.CommandType.Text;
            v_id.Text = q.ExecuteScalar().ToString();
            Session["id"]= q.ExecuteScalar().ToString();
            con.Close();
            
            
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            var empEmail = Session["e_email"].ToString();
            con.Open();
            SqlCommand q = new SqlCommand("select approval_descrip from approval where emp_email = '"+empEmail+"'", con);
            var des = q.ExecuteReader();
            while (des.Read())
            {
                status.Text = des["approval_descrip"].ToString();

            }
            //status.Text = des.ToString();
            con.Close();
            //status.Text = Session["des"].ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

       
    }
}