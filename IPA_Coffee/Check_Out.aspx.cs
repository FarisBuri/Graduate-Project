using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace IPA_Coffee
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        private orders order;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Start validation 
            string cnn = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;
            SqlConnection cnn_valid = new SqlConnection(cnn);
            SqlCommand cmd_valid = new SqlCommand("select * from cart where userName = '" + Session["user"] + "' ", cnn_valid);
            cnn_valid.Open();

            if (Session["user"] == null || cmd_valid.ExecuteReader().HasRows == false) Response.Redirect("Sign_Up.aspx");
            cnn_valid.Close();
            // End Validation 

            customer cus1 = (customer)Session["cus"];
            cus1.last_name = "ali";
            
            
            if (Session["cus"] != null)
            {
                txt_first_name.Text = cus1.frist_name.ToString();
                txt_last_name.Text = cus1.last_name.ToString();
                txt_email.Text = cus1.email.ToString();
                //order.userName = cus1.userName.ToString(); 
            }

            lbl_drived.Visible = true;
            lbl_drived_1.Visible = true;
            lbl_price.Visible = true;
            lbl_price_1.Visible = true;
            if(Session["two"] != null || Session["three"] != null)
            {

                lbl_price_1.Text = Session["two"].ToString() + " SR";
                lbl_total.Text = Session["three"].ToString() + " SR";
                //order.total = Session["three"].ToString() + "SR";
            }
            
        }

        protected void send_Click(object sender, EventArgs e)
        {
            customer cus_1 = (customer)Session["cus"];

            var ord = new orders();

            if (txt_textarea.Text == null || txt_textarea.Text == "")
            {
                ord.details = "";
            }
            else
            {
                ord.details = txt_textarea.Text;
            }
            ord.room = Convert.ToInt32(txt_number.Text);
            ord.total = Session["three"].ToString() + "SR";
            ord.userName = cus_1.userName.ToString();




            Session["ord_pay"] = ord;

            Response.Redirect("~/Payments.aspx");

        }   
    }
}