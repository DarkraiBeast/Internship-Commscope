using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Web.Services;

namespace visitorSystem2
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DARKRAI-BEAST\SQLEXPRESS;Initial Catalog=visitor;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (Request.InputStream.Length > 0)
                {
                    using (StreamReader reader = new StreamReader(Request.InputStream))
                    {
                        string contentType = Request.ContentType;
                        string hexString = Server.UrlEncode(reader.ReadToEnd());
                        string imageName = DateTime.Now.ToString("dd-MM-yy hh-mm-ss");


                        string imagePath = string.Format("~/Captures/{0}.png", imageName);
                        
                        //File.WriteAllBytes(Server.MapPath(imagePath), ConvertHexToBytes(hexString));
                        Session["CapturedImage"] = ResolveUrl(imagePath);

                        byte[] bytes = ConvertHexToBytes(hexString);
                        //string strQuery = "update VisitStatus set visitor_image = '" + img + "' where visitor_email = '" + email + "'";
                        //SqlCommand cmd = new SqlCommand(strQuery, con);
                        //cmd.Parameters.Add("@Data", SqlDbType.VarBinary).Value = bytes;
                        con.Close();

                        
                    }
                }
            }


        }

        private static byte[] ConvertHexToBytes(string hex)
        {
            byte[] bytes = new byte[hex.Length / 2];
            for (int i = 0; i < hex.Length; i += 2)
            {
                bytes[i / 2] = Convert.ToByte(hex.Substring(i, 2), 16);
            }
            return bytes;
        }

        [WebMethod(EnableSession = true)]
        public static string GetCapturedImage()
        {
            string url = HttpContext.Current.Session["CapturedImage"].ToString();
            HttpContext.Current.Session["CapturedImage"] = null;
            return url;
        }

        [WebMethod()]
        public static bool SaveCapturedImage(string data)
        {
            string fileName = DateTime.Now.ToString("dd-MM-yy hh-mm-ss");
            byte[] imageBytes = Convert.FromBase64String(data.Split(',')[1]);
            string filePath = HttpContext.Current.Server.MapPath(string.Format("~/Captures/{0}.jpg", fileName));
            File.WriteAllBytes(filePath, imageBytes);
            return true;

        }

       

      

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            Session["cam"] = idcaptured.ImageUrl;
            var img = Session["cam"];
            var email = Session["email"];
            con.Open();
            SqlCommand cmd = new SqlCommand("update VisitStatus set visitor_image = '"+img+"'  where visitor_email = '" + email + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            



        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["nam"] = regName.Text;
            Session["clg"] = regClg.Text;
            Session["add"] = regAdd.Text;
            Session["padd"] = regPAdd.Text;
            Session["cam"] = idcaptured.ImageUrl;
            Response.Redirect("visitorPass.aspx");
        }

       
    }
}