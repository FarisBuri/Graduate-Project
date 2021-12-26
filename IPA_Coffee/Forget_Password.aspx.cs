using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using System.Drawing;
using System.Net.Mail;
namespace IPA_Coffee
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        // footballcommentator095
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_Click(object sender, EventArgs e)
        {
            string st = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;

            SqlConnection sc = new SqlConnection(st);


            SqlCommand sq = new SqlCommand("Select Email, Password, userName from customer where email=@Email", sc);
            sq.Parameters.AddWithValue("@Email", txt_email.Text);
            sc.Open();
            SqlDataReader sdr = sq.ExecuteReader();
            if (sdr.Read())
            {
                string user = sdr["Email"].ToString();
                string pas = sdr["Password"].ToString();
                // One
                MailMessage mm = new MailMessage("ipacoffee1@gmail.com", txt_email.Text);
                mm.Subject = "Your Password !";
                mm.IsBodyHtml = true;

                mm.Body = string.Format("Hello: \""+sdr["userName"]+"\" This Is Your Paassword: \" {1} \"", user, pas);
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                // Two
                nc.UserName = "ipacoffee1@gmail.com";
                nc.Password = "A3ipacoffee";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                smtp.Send(mm);
                
                lbl_end.Text = "Your Pasword has been sent to " + txt_email.Text;
                
                
            }
            else
            {
                lbl_end.Text = txt_email.Text + ": Not Found !";
               
            }
        }
    }
}
  