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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null) Response.Redirect("Sign_Up.aspx");
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string cnn1 = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;
            SqlConnection cnn = new SqlConnection(cnn1);

            SqlCommand cmd = new SqlCommand("insert into orders values(@order_img, @order_category, @order_price , @order_details , @order_name )", cnn);

            SqlCommand cmd2 = new SqlCommand("select * from orders where order_name = @order_name",cnn);
            

            cmd2.Parameters.AddWithValue("@order_name", order_name1.Text);
            if(file_upload.HasFile)
            {
                file_upload.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image1/" + file_upload.FileName);
            }
            cmd.Parameters.AddWithValue("@order_img",txt_file.Text);
            cmd.Parameters.AddWithValue("@order_name", order_name1.Text);
            cmd.Parameters.AddWithValue("@order_category", ddl.SelectedValue);
            
            
            float mine = 0;
           try
            {
                 mine = float.Parse(order_price.Text);
                lbl_order_price.Visible = false;
            } catch
            {
                lbl_order_price.Visible = true;
                
            }

                cmd.Parameters.AddWithValue("@order_price", mine);
                cmd.Parameters.AddWithValue("@order_details", order_details.Text);

            lbl_order_name.Visible = false;
            cnn.Open(); 
            if(cmd2.ExecuteReader().HasRows || ddl.SelectedValue == "Category")
            {
                lbl_order_name.Visible = true;
                cnn.Close();
            } else
            {
                order_name1.Text = null;
                txt_file.Text = null;
                order_details.Text = null;
                order_price.Text = null;
                lbl_done.CssClass = "done open_done";
                cnn.Close();
                cnn.Open();
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            // 




        }


    }
}