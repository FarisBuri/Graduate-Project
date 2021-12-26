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
    public partial class WebForm11 : System.Web.UI.Page
    {
         string cnn1 = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null) Response.Redirect("Sign_Up.aspx");

            if(!IsPostBack)
            {
                SqlConnection cnn_show = new SqlConnection(cnn1);
                SqlCommand cmd_show = new SqlCommand("select * from customer",cnn_show);
                
                cnn_show.Open();
                SqlDataReader rdr_show = cmd_show.ExecuteReader();
                ListView1.DataSource = rdr_show;
                ListView1.DataBind();

                cnn_show.Close();

            }

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection cnn_emp = new SqlConnection(cnn1);
            SqlCommand cmd_insert_emp = new SqlCommand("insert into employee values(@first,@last,@email,@password,@user)", cnn_emp);
            SqlCommand cmd_check_emp = new SqlCommand("select * from customer where email = @email or userName = @user", cnn_emp);
            cmd_insert_emp.Parameters.AddWithValue("@first", first_name.Text);
            cmd_insert_emp.Parameters.AddWithValue("@last", last_name.Text);
            cmd_insert_emp.Parameters.AddWithValue("@email", email.Text);
            cmd_insert_emp.Parameters.AddWithValue("@password", password.Text);
            cmd_insert_emp.Parameters.AddWithValue("@user", user_name.Text);


            cmd_check_emp.Parameters.AddWithValue("@email", email.Text);

            cmd_check_emp.Parameters.AddWithValue("@user", user_name.Text);

            cnn_emp.Open();

            if (cmd_check_emp.ExecuteReader().HasRows)
            {
                email_found.Visible = true;
                cnn_emp.Close();
            }
            else
            {
                email_found.Visible = false;
                cnn_emp.Close();
                cnn_emp.Open();
                cmd_insert_emp.ExecuteNonQuery();
                Response.Redirect("~/Employee.aspx");
                cnn_emp.Close();
            }
        }

       

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "remove")
            {
                string cnn = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;
                SqlConnection cnn_remove = new SqlConnection(cnn);
                SqlCommand cmd_show = new SqlCommand("select * from customer", cnn_remove);
                SqlCommand cmd_remove = new SqlCommand("delete from customer where email=@email", cnn_remove);
                cmd_remove.Parameters.AddWithValue("@email", e.CommandArgument.ToString());

                cnn_remove.Open();
                cmd_remove.ExecuteNonQuery();

                SqlDataReader rdr_show = cmd_show.ExecuteReader();
                ListView1.DataSource = rdr_show;
                ListView1.DataBind();

                cnn_remove.Close();


            }
        }
    }
}