using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace IPA_Coffee
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string cnn1 = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;
            //                Connection 
            SqlConnection cnn = new SqlConnection(cnn1);
            SqlConnection cnn_manager = new SqlConnection(cnn1);
            SqlConnection cnn_employee = new SqlConnection(cnn1);

            //                Command

            SqlCommand cmd = new SqlCommand("select * from customer where email = @email or userName = @user and password = @pass" ,cnn);
            SqlCommand cmd_manager = new SqlCommand("select * from manager where userName = @user and password = @pass", cnn_manager);
            SqlCommand cmd_employee = new SqlCommand("select * from employee where userName = @user and password = @pass", cnn_employee);

            cmd.Parameters.AddWithValue("@email", user_name.Text);
            cmd.Parameters.AddWithValue("@user", user_name.Text);

            cmd.Parameters.AddWithValue("@pass", password.Text);

            cmd_manager.Parameters.AddWithValue("@user", user_name.Text);
            cmd_manager.Parameters.AddWithValue("@pass", password.Text);

            cmd_employee.Parameters.AddWithValue("@user", user_name.Text);
            cmd_employee.Parameters.AddWithValue("@pass", password.Text);

            SqlConnection cnn_2 = new SqlConnection(cnn1);
            SqlCommand cmd_2 = new SqlCommand("select * from customer where email = @email or userName = @user", cnn_2);
            cmd_2.Parameters.AddWithValue("@user", user_name.Text);
            cmd_2.Parameters.AddWithValue("@email", user_name.Text);
            cnn_2.Open();
            SqlDataReader rdr = cmd_2.ExecuteReader();
            rdr.Read();


            cnn_employee.Open();
            cnn_manager.Open();
            cnn.Open();

           

           
            if(cmd.ExecuteReader().HasRows)
            {
                Session.Clear();
                customer cus = new customer();
                cus.frist_name = rdr["first_name"].ToString();
                cus.last_name = rdr["last_name"].ToString();
                cus.email = rdr["email"].ToString();
                cus.userName = rdr["userName"].ToString();
                cus.image = rdr["picture"].ToString();
                Session["cus"] = cus;

                Session["user"] = rdr["userName"].ToString();   
                Response.Redirect("~/Drink.aspx");
                Response.Redirect("~/Main.Master");

                cnn_2.Close();
                cnn.Close();

            }
            else if (cmd_employee.ExecuteReader().HasRows)
            {
                Session.Clear();
                Session["emp"] = user_name.Text;
                Response.Redirect("~/Employee.aspx");
               
                cnn_employee.Close();
            }
            else if (cmd_manager.ExecuteReader().HasRows)
            {
                Session.Clear();
                Session["admin"] = user_name.Text;
                Response.Redirect("~/Admin.aspx");
                Response.Redirect("~/Main.Master");
                cnn_manager.Close();
            }
            else
            {
                user_name_found.Visible = true;
                cnn.Close();
            }

            cnn.Close();

        }
    }
}