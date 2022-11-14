using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace visitorSystem2
{
    public partial class detailsEmp : System.Web.UI.Page
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
            v_id.Text = Session["id"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var email = Session["email"].ToString();
            var emp_email = Session["e_email"].ToString();
            Session["des"] = TextBox1.Text;
            status.Text = "Sent";
            
            con.Open();
            SqlCommand q = new SqlCommand("update approval set approval_descrip = '"+TextBox1.Text+ "' where emp_email = '" + emp_email + "'", con);
            q.ExecuteNonQuery();

            string q1 = "update approval set employee_id = '1' where emp_email = '" + emp_email + "'";
            string q2 = "update approval set employee_id = '2' where emp_email = '" + emp_email + "'";
            string q3 = "update approval set employee_id = '3' where emp_email = '" + emp_email + "'";
            string q4 = "update approval set employee_id = '4' where emp_email = '" + emp_email + "'";
            if (emp_email == "musicpurpose36@gmail.com")
            {
                SqlCommand query1 = new SqlCommand(q1, con);
                query1.ExecuteNonQuery();

            }
            else if (emp_email == "josephrthayil94@gmail.com")
            {
                SqlCommand query2 = new SqlCommand(q2, con);
                query2.ExecuteNonQuery();


            }
            else if (emp_email == "josephthayil6@gmail.com")
            {
                SqlCommand query3 = new SqlCommand(q3, con);
                query3.ExecuteNonQuery();

            }
            else
            {
                SqlCommand query4 = new SqlCommand(q4, con);
                query4.ExecuteNonQuery();

            }

            DateTime now = DateTime.Now;
            SqlCommand date = new SqlCommand("update approval set approval_date= '" + now + "' where emp_email = '" + emp_email + "'", con);
            date.ExecuteNonQuery();

            var emp_name = "";
            if (emp_email == "josephthayil6@gmail.com")
            {
                emp_name = "Santosh";
            }
            else if (emp_email == "josephrthayil94@gmail.com")
            {
                emp_name = "Miscell";
            }
            else if (emp_email == "musicpurpose36@gmail.com")
            {
                emp_name = "Rahul";
            }
            else if(emp_email == "asp.netinternship@gmail.com")
            {
                emp_name = "Manoj";
            }
            var id = Session["id"];
            SqlCommand req = new SqlCommand("update visitor set Employee_Name = '" + emp_name + "', Request_Approval = '"+TextBox1.Text+"', Visit_Status='Not Started' where visitor_id = '" + id + "'", con);
            req.ExecuteNonQuery();
            con.Close();
        }

        /*protected void Button1_Click(object sender, EventArgs e)
        {
            var email= Session["email"].ToString();
            
            con.Open();
            SqlCommand q = new SqlCommand("UPDATE ApprovalType SET approval_type = 'Approved' where visit_email = '"+ email + "'", con);
            q.ExecuteNonQuery();
            

            //var name= Session["name"].ToString(); ;
            //SqlCommand req = new SqlCommand("insert into RequestList (Date, VisitorName, EmployeeName, RequestApproval, visitor_email) values ('"+ now + "','"+ name + "','"+ emp_name + "','Approved' , '"+ email + "')", con);
            
            con.Close();
            status.Text = "Approved";



        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var email = Session["email"].ToString();
            var emp_email = Session["e_email"].ToString();

            con.Open();
            SqlCommand q = new SqlCommand("UPDATE ApprovalType SET approval_type = 'Rejected' where visit_email = '" + email + "'", con);
            q.ExecuteNonQuery();
            string q1 = "update approval set employee_id = '1' where emp_email = '" + emp_email + "'";
            string q2 = "update approval set employee_id = '2' where emp_email = '" + emp_email + "'";
            string q3 = "update approval set employee_id = '3' where emp_email = '" + emp_email + "'";
            string q4 = "update approval set employee_id = '4' where emp_email = '" + emp_email + "'";
            if (emp_email == "musicpurpose36@gmail.com")
            {
                SqlCommand query1 = new SqlCommand(q1, con);
                query1.ExecuteNonQuery();

            }
            else if (emp_email == "josephrthayil94@gmail.com")
            {
                SqlCommand query2 = new SqlCommand(q2, con);
                query2.ExecuteNonQuery();


            }
            else if (emp_email == "josephthayil6@gmail.com")
            {
                SqlCommand query3 = new SqlCommand(q3, con);
                query3.ExecuteNonQuery();

            }
            else
            {
                SqlCommand query4 = new SqlCommand(q4, con);
                query4.ExecuteNonQuery();

            }
            DateTime now = DateTime.Now;
            SqlCommand date = new SqlCommand("update approval set approval_date= '" + now + "' where emp_email = '" + emp_email + "'", con);
            date.ExecuteNonQuery();

            var emp_name = "";
            if (emp_email == "josephthayil6@gmail.com")
            {
                emp_name = "Santosh";
            }
            else if (emp_email == "josephrthayil94@gmail.com")
            {
                emp_name = "Rahul";
            }
            else if (emp_email == "musicpurpose36@gmail.com")
            {
                emp_name = "Miscell";
            }
            else
            {
                emp_name = "Manoj";
            }

            var name = Session["name"].ToString(); ;
            SqlCommand req = new SqlCommand("update visitor set Employee_Name = '" + emp_name + "', Request_Approval = 'Rejected'", con);
            req.ExecuteNonQuery();
            con.Close();
            con.Close();
            status.Text = "Rejected";
        }*/


    }
}