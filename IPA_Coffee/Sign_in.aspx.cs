using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
namespace IPA_Coffee
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string cnn1 = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;
            SqlConnection cnn2 = new SqlConnection(cnn1);
            SqlCommand cmd1 = new SqlCommand("insert into customer values(@first,@last,@email,@password,@user, @pic)",cnn2);
            
            SqlCommand cmd2 = new SqlCommand("select * from customer where email = @email or userName = @user", cnn2);
            SqlCommand cmd3 = new SqlCommand("select * from customer where userName = @user", cnn2);

            cmd1.Parameters.AddWithValue("@first",first_name.Text);
            cmd1.Parameters.AddWithValue("@last", last_name.Text);
            cmd1.Parameters.AddWithValue("@email", email.Text);
            cmd1.Parameters.AddWithValue("@password", password.Text);
            cmd1.Parameters.AddWithValue("@user", user_name.Text);
            cmd1.Parameters.AddWithValue("@pic","image1/avatar2.bmp");
            cmd2.Parameters.AddWithValue("@email",email.Text);

            cmd2.Parameters.AddWithValue("@user", user_name.Text);

            cnn2.Open();

             if(cmd2.ExecuteReader().HasRows)
             {
                email_found.Visible = true;
                cnn2.Close();
             }
            else
            {
                email_found.Visible = false;
                cnn2.Close();
                cnn2.Open();
                cmd1.ExecuteNonQuery();
                Response.Redirect("~/Sign_Up.aspx");
                cnn2.Close();
            }

        }
    }
}