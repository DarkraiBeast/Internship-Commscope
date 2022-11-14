using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace visitorSystem2
{
    public partial class RequestList : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DARKRAI-BEAST\SQLEXPRESS;Initial Catalog=visitor;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GVBind();
            }
        }
        protected void GVBind()
        {
            con.Open();
            SqlCommand q1 = new SqlCommand("select Date, Name, Employee_Name, Request_Approval, Start_Time, End_Time, Visit_Status  from visitor", con);
            SqlDataReader dr = q1.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand q1 = new SqlCommand("select Date, Name, Employee_Name, Request_Approval, Start_Time, End_Time, Visit_Status  from visitor where Date between '"+ TextBox1.Text + "' and '"+ TextBox2.Text + "'", con);
            SqlDataReader dr = q1.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            GridView1.Visible = true;
            con.Close();
        }
    }
}