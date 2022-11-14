using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
 
namespace visitorSystem2
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DARKRAI-BEAST\SQLEXPRESS;Initial Catalog=visitor;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e) 
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            con.Open();
            DateTime now = DateTime.Now;
            Session["date"] = now;

            SqlCommand q = new SqlCommand("insert into visitor (name, email,mobile, visit, details,date, emp_email) values ('" + TextBox1.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + DropDownList1.Text + "','" + descrip.Text + "','"+ now + "','" + TextBox9.Text + "')", con);
            SqlCommand q1 = new SqlCommand("insert into approval (approval_descrip,visitor_email,emp_email) values ('...pending for approval','" + TextBox6.Text + "', '"+ TextBox9.Text + "')", con);
            //SqlCommand q2 = new SqlCommand("insert into ApprovalType (approval_type,visit_email) values ('...pending for approval','" + TextBox6.Text + "')", con);
            SqlCommand q3 = new SqlCommand("insert into VisitStatus (visit_status,visitor_email) values ('Not Started','" + TextBox6.Text + "')", con);
            q.ExecuteNonQuery();
            q1.ExecuteNonQuery();
            //q2.ExecuteNonQuery();
            q3.ExecuteNonQuery();

            
            con.Close();

            try
            {
                MailMessage msg = new MailMessage(TextBox6.Text, TextBox9.Text);
                msg.Subject = "Request for Visit to your Company";
                msg.Body = $"Sir, <br /><br />You have a Request for visit from  {TextBox1.Text},  for {DropDownList1.Text}.<br /> " +
                    $"<br /> Description:  '{ descrip.Text }'. " +
               $"<br /><br />Here are my contact details: <br />Mobile No: {TextBox7.Text} <br />Email: {TextBox6.Text}" +
               $"<br /><br />Please click here to approve: https://localhost:44324/detailsEmp";
              // $"<br/> <br/>For Security : https://localhost:44324/Security";

                msg.IsBodyHtml = true;
                SmtpClient smpt = new SmtpClient("smtp.gmail.com", 587);
                smpt.Credentials = new System.Net.NetworkCredential(TextBox6.Text, "jnwoeivehzhvyrei");
                smpt.EnableSsl = true;
                smpt.Send(msg);
            }
            catch (Exception ex)
            {
                //lb.Text = ex.Message;
            }

            Session["name"] = TextBox1.Text;
            Session["email"] = TextBox6.Text;
            Session["mob"] = TextBox7.Text;
            Session["visit"] = DropDownList1.Text;
            Session["descrip"] = descrip.Text;
            Session["e_email"] = TextBox9.Text;
            Response.Redirect("details.aspx");

            
        }

        
    }
}