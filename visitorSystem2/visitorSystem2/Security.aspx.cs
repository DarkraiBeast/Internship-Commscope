using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace visitorSystem2
{
    public partial class Security : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DARKRAI-BEAST\SQLEXPRESS;Initial Catalog=visitor;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            /* con.Open();
             SqlCommand q = new SqlCommand("select Visitor_id, Name, Email, Mobile, Date,Employee_Name, Request_Approval,Start_Time, End_Time, Visit_Status from visitor ORDER by visitor_id DESC", con);
             SqlDataReader dr = q.ExecuteReader();
             if (dr.HasRows == true)
             {

                 GridView1.DataSource = dr;
                 GridView1.DataBind();
             }
             con.Close();*/
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");

            }
            if (!IsPostBack)
            {
                ViewState["Filter"] = "All";
                BindGrid();

                ViewState["Filter2"] = "ALL";
                BindGrid2();
            }

            Label1.Text = Session["username"].ToString();


        }

        protected void BindGrid()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand("visit_status");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Filter", ViewState["Filter"].ToString());
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            DropDownList Req = (DropDownList)GridView2.HeaderRow.FindControl("Req");
            this.BindStatus(Req);


            
        }
        protected void BindGrid2()
        {
            DataTable dt2 = new DataTable();
            SqlDataAdapter sda2 = new SqlDataAdapter();
            SqlCommand cmd2 = new SqlCommand("RequestApprove");
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.Parameters.AddWithValue("@Filter2", ViewState["Filter2"].ToString());
            cmd2.Connection = con;
            sda2.SelectCommand = cmd2;
            sda2.Fill(dt2);
            GridView2.DataSource = dt2;
            GridView2.DataBind();
            DropDownList Approve = (DropDownList)GridView2.HeaderRow.FindControl("Approve");
            this.BindStatus2(Approve);
        }

        protected void BindStatus(DropDownList Req)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand("select distinct visit_status" + "from visitor");
            cmd.Connection = con;
            con.Open();
            Req.DataTextField = "visit_status";
            Req.DataValueField = "visit_status";
            Req.DataBind();
            con.Close();
            Req.Items.FindByValue(ViewState["Filter"].ToString()).Selected = true;

        }
        protected void BindStatus2(DropDownList Approve)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand("select distinct Request_Approval" + "from visitor");
            cmd.Connection = con;
            con.Open();
            Approve.DataTextField = "Request_Approval";
            Approve.DataValueField = "Request_Approval";
            Approve.DataBind();
            con.Close();
            Approve.Items.FindByValue(ViewState["Filter2"].ToString()).Selected = true;

        }

        protected void ReqChanged(object sender, EventArgs e)
        {
            DropDownList Req = (DropDownList)sender;
            ViewState["Filter"] = Req.SelectedValue;
            this.BindGrid();

        }
        protected void AppChanged(object sender, EventArgs e)
        {
            DropDownList Approve = (DropDownList)sender;
            ViewState["Filter2"] = Approve.SelectedValue;
            this.BindGrid2();

        }

        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }




        protected void Button2_Click(object sender, EventArgs e)
        {
            //var email = Session["email"].ToString();
            con.Open();
            SqlCommand q = new SqlCommand("update visitor set start_time = '" + TextBox1.Text + "', end_time='" + TextBox3.Text + "' where visitor_id = '" + TextBox2.Text + "'", con);
            q.ExecuteNonQuery();
            SqlCommand q2 = new SqlCommand("update VisitStatus set visit_status = '" + DropDownList1.Text + "' where visitor_id = '" + TextBox2.Text + "'", con);
            q2.ExecuteNonQuery();
            SqlCommand q3 = new SqlCommand("update visitor set visit_status = '" + DropDownList1.Text + "' where visitor_id = '" + TextBox2.Text + "'", con);
            q3.ExecuteNonQuery();
            //SqlCommand q3 = new SqlCommand("update RequestList set StartTime = '" + TextBox1.Text + "', EndTime='" + TextBox3.Text + "' where visitor_email = '" + email + "'", con);
            //q3.ExecuteNonQuery();
            con.Close();

            TextBox2.Text = "";
            TextBox1.Text = "";
            TextBox3.Text = "";
            DropDownList1.Text = "";
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView2, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row.";
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView2.Rows)
            {
                if (row.RowIndex == GridView2.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;
                    String visitor_id;
                    visitor_id = row.Cells[0].Text;
                    String start_time;
                    start_time = row.Cells[7].Text;
                    String end_time;
                    end_time = row.Cells[8].Text;
                    String visit_status;
                    visit_status = row.Cells[9].Text;

                    TextBox2.Text = visitor_id;
                    TextBox1.Text = start_time;
                    TextBox3.Text = end_time;
                    DropDownList1.Text = visit_status;



                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Click to select this row.";
                }
            }
            TextBox2.Visible = true;
            TextBox1.Visible = true;
            TextBox3.Visible = true;
            DropDownList1.Visible = true;




        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            BindGrid();
            
        }
    }
}