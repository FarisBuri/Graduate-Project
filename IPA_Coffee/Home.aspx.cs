using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace IPA_Coffee
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DateTime date = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
           if(Session["user"] != null)
            {
                string cnn = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;
                SqlConnection cnn_contact = new SqlConnection(cnn);
                customer cus = Session["cus"] as customer;
                
                SqlCommand cmd_contact = new SqlCommand("insert into contact values(@fname, @lname, @email, @phone, @img, @date, @msg,@best) ", cnn_contact);

                cmd_contact.Parameters.AddWithValue("@fname", cus.frist_name);
                cmd_contact.Parameters.AddWithValue("@lname", cus.last_name);
                cmd_contact.Parameters.AddWithValue("@email", cus.email);
                cmd_contact.Parameters.AddWithValue("@phone", Convert.ToInt32(txt_phone.Text));
                cmd_contact.Parameters.AddWithValue("@img", cus.image);
                cmd_contact.Parameters.AddWithValue("@date", date);
                cmd_contact.Parameters.AddWithValue("@msg", txtarea.Text);
                cmd_contact.Parameters.AddWithValue("@best","false");

                cnn_contact.Open();
                cmd_contact.ExecuteNonQuery();
                cnn_contact.Close();
            } else
            {
                Response.Redirect("~/Sign_Up.aspx");
            }



        }
    }
}