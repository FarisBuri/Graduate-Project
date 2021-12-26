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
    public partial class Main : System.Web.UI.MasterPage
    {
        string cnn = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

             
            if (Session["user"] != null)
            {
                sign_out.Visible = true;
                sign_up.Visible = false;
                customer cus = (customer)Session["cus"];

                first_name.Text = cus.frist_name.ToString();
                last_name.Text = cus.last_name.ToString();
                //txt_first.Text = cus.frist_name.ToString();
                //txt_last.Text = cus.last_name.ToString();
                //txt_username.Text = cus.userName.ToString();



                SqlConnection cnn_excute_img = new SqlConnection(cnn);
                SqlCommand cmd_exute_img = new SqlCommand("select * from customer where email ='" + cus.email.ToString() + "'", cnn_excute_img);
                cnn_excute_img.Open();

                SqlDataReader rdr_exute_img = cmd_exute_img.ExecuteReader();
                rdr_exute_img.Read();
                Image1.Visible = true;
                Image1.ImageUrl = "image1/" + rdr_exute_img["picture"].ToString();
                Image2.Visible = false;
                cnn_excute_img.Close();

            }
            else if (Session["emp"] != null)
            {
                sign_out.Visible = true;

                sign_up.Visible = false;
            }
            else if(Session["admin"] != null)
            {
                sign_out.Visible = true;

                sign_up.Visible = false;
            }
        }

        protected void sign_out_Click(object sender, EventArgs e)
        {

            Session.Clear();
            Response.Redirect("~/Sign_Up.aspx");
        }

        protected void btn_Avatar_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                if (file_upload_picture.HasFile)
                {
                    customer cus = (customer)Session["cus"];
                    file_upload_picture.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image1/" + file_upload_picture.FileName);
                    SqlConnection cnn_picture = new SqlConnection(cnn);
                    SqlCommand cmd_picture = new SqlCommand("update customer set picture = '" + file_upload_picture.FileName + "' where email = '" + cus.email.ToString() + "'  ", cnn_picture);
                    cnn_picture.Open();
                    cmd_picture.ExecuteNonQuery();

                    cnn_picture.Close();
                    Image1.ImageUrl = "image1/" + file_upload_picture.FileName;
                    Response.Redirect("~/Home.aspx", false);

                } else
                {
                    lbl_error.CssClass = "error";
                }



            } else
            {
                Response.Redirect("~/Sign_Up.aspx");
            }
        }

        protected void MakeChange_Command(object sender, CommandEventArgs e)
        {
            if(Session["user"] != null)
            {
                customer cus = (customer)Session["cus"];


              
                    if (e.CommandName == "names")
                    {
                        SqlConnection cnn_names = new SqlConnection(cnn);
                        SqlCommand cmd_names = new SqlCommand("update customer set first_name=@first, last_name=@last where email='"+ cus.email.ToString() + "' ", cnn_names);

                    cmd_names.Parameters.AddWithValue("@first", txt_first.Text);
                    cmd_names.Parameters.AddWithValue("@last", txt_last.Text);



                        cnn_names.Open();
                    
                        cmd_names.ExecuteNonQuery();
                        
                        cnn_names.Close();
                    }
                    else if (e.CommandName == "username")
                    {
                        SqlConnection cnn_username = new SqlConnection(cnn);
                        SqlCommand cmd_username = new SqlCommand("update customer set userName=@user where email='" + cus.email.ToString() + "' ", cnn_username);
                        SqlCommand cmd_check_username = new SqlCommand("select * from customer where userName=@user2", cnn_username);

                        cmd_username.Parameters.AddWithValue("@user", txt_username.Text);
                        cmd_check_username.Parameters.AddWithValue("user2", txt_username.Text);
                        cnn_username.Open();

                        if(cmd_check_username.ExecuteReader().HasRows)
                        {
                            lbl_found.Visible = true;
                            cnn_username.Close();

                        } else
                        {
                            cnn_username.Close();
                            cnn_username.Open();
                            cmd_username.ExecuteNonQuery();
                            cnn_username.Close();
                        }

                        cnn_username.Close();
                    }
                    else if (e.CommandName == "password")
                    {
                        SqlConnection cnn_password = new SqlConnection(cnn);
                    SqlConnection cnn_check_password = new SqlConnection(cnn);
                    SqlCommand cmd_password = new SqlCommand("update customer set password=@password where email='" + cus.email.ToString() + "' ", cnn_password);
                        SqlCommand cmd_check_password = new SqlCommand("select * from customer where password ='"+txt_oldP+"' and  email='" + cus.email.ToString() + "'", cnn_check_password);

                        cmd_password.Parameters.AddWithValue("@password", txt_newPassword.Text);

                        cnn_password.Open();
                        cnn_check_password.Open();

                        if (cmd_check_password.ExecuteReader().HasRows)
                        {
                            cnn_check_password.Close();
                            cnn_check_password.Open();
                            cnn_password.Close();

                            cnn_password.Open();
                            cmd_password.ExecuteNonQuery();
                            cnn_password.Close();
                        }
                        else
                        {
                            lbl_found.Visible = true;
                            cnn_password.Close();

                        }
                        cnn_check_password.Close();

                        cnn_password.Close();
                    }
                


            } else
            {
                Response.Redirect("~/Sign_Up.aspx");
            }
        }

       



        //protected void sign_up_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("~/Sign_Up.aspx");


        //}
    }
}