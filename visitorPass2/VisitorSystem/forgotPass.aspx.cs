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
    public partial class forgotPass : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DARKRAI-BEAST\SQLEXPRESS;Initial Catalog=visitor;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            captcha1.ValidateCaptcha(TextBox2.Text.Trim());
            if (captcha1.UserValidated)
            {
               
                //Panel1.Visible = true;
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = " You Have Entered Invalid Captcha";
            }
        }
    }
}