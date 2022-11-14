using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace visitorSystem2
{
    public partial class visitorPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            nam.Text = Session["nam"].ToString();
            firm.Text = Session["clg"].ToString();
            purVisit.Text = Session["visit"].ToString();
            date.Text = Session["date"].ToString();
            Image1.ImageUrl = Session["cam"].ToString();
        }

        private static byte[] ConvertHexToBytes(string hex)
        {
            byte[] bytes = new byte[hex.Length / 2];
            for(int i = 0;i<=hex.Length; i += 2)
            {
                bytes[i / 2] = Convert.ToByte(hex.Substring(i, 2), 16);
            }
            return bytes;
        }
        public static string GetCapturedImage()
        {
            string url = HttpContext.Current.Session["CapturedImage"].ToString();
            return url;
        }
    }
}