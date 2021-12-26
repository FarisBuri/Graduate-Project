using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net;
using System.Drawing;
using System.Net.Mail;

namespace IPA_Coffee
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Start validation 
            string cnn = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;
            SqlConnection cnn_valid = new SqlConnection(cnn);
            SqlCommand cmd_valid = new SqlCommand("select * from cart where userName = '" + Session["user"] + "' ", cnn_valid);
            cnn_valid.Open();

            if (Session["user"] == null || cmd_valid.ExecuteReader().HasRows == false) Response.Redirect("Drink.aspx");
            cnn_valid.Close();
            // End Validation 
            lbl_drived.Visible = true;
            lbl_drived_1.Visible = true;
            lbl_price.Visible = true;
            lbl_price_1.Visible = true;
            if (Session["two"] != null || Session["three"] != null)
            {

                lbl_price_1.Text = Session["two"].ToString() + " SR";
                lbl_total.Text = Session["three"].ToString() + " SR";
                //order.total = Session["three"].ToString() + "SR";
            }
            //rad_visa.Checked == true ? rad_cash.Checked = false : rad_visa.Checked = true; 
            if (rad_visa.Checked)
            {


            }
            else
            {
                rad_cash.Checked = true;
                rad_visa.Checked = false;
            }
            rad_visa.Text = "Pay " + Session["three"] + " SR With Visa";
            rad_cash.Text = "Pay " + Session["three"] + " SR With CASH";
        }

        protected void send_Click(object sender, EventArgs e)
        {

            customer cus_1 = (customer)Session["cus"];

            string cnn = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;
            SqlConnection cnn_orders = new SqlConnection(cnn);
            SqlConnection cnn_ord = new SqlConnection(cnn);
            SqlConnection cnn_ord_lines = new SqlConnection(cnn);
           

            var ord_pay = (orders)Session["ord_pay"];


            SqlCommand cmd_orders = new SqlCommand("select * from cart where userName = '" + ord_pay.userName + "'", cnn_orders);

            // Start Ord
            cnn_ord.Open();
            SqlCommand cmd_ord = new SqlCommand("insert into ord values(@details , @room, @total, @userName, @status)", cnn_ord);
        
            cmd_ord.Parameters.AddWithValue("@details", ord_pay.details.ToString());
            cmd_ord.Parameters.AddWithValue("@room", ord_pay.room.ToString());
            cmd_ord.Parameters.AddWithValue(@"total", Session["three"].ToString());
            cmd_ord.Parameters.AddWithValue("@userName", cus_1.userName.ToString());
            cmd_ord.Parameters.AddWithValue("@status","Wait Accept");
         

            cmd_ord.ExecuteNonQuery();

            cnn_ord.Close();

            // End Ord

           
            cnn_orders.Open();
             
            SqlDataReader rdr_orders = cmd_orders.ExecuteReader();

            // start get ordID from ord

            SqlConnection cnn_ord_lines_ID_1 = new SqlConnection(cnn);
            SqlCommand cmd_ord_lines_ID = new SqlCommand("select * from ord where userName = '" + cus_1.userName.ToString() + "' and room = '" + ord_pay.room.ToString() + "' and total = '" + Session["three"].ToString() + "'", cnn_ord_lines_ID_1);
            cnn_ord_lines_ID_1.Open();

            SqlDataReader rdr_ord_lines_ID_1 = cmd_ord_lines_ID.ExecuteReader();
            rdr_ord_lines_ID_1.Read();
            

            // end get ordID from ord

            cnn_ord_lines.Open();
            while (rdr_orders.Read())
            {
                SqlCommand cmd_ord_lines = new SqlCommand("insert into ord_lines values(@drink1 , @quantity, @id, @user)", cnn_ord_lines);
                cmd_ord_lines.Parameters.AddWithValue("@drink1", rdr_orders["cart_name"]);

                cmd_ord_lines.Parameters.AddWithValue("@quantity", rdr_orders["quantity"]);

                cmd_ord_lines.Parameters.AddWithValue("@id", rdr_ord_lines_ID_1["id"]);

                cmd_ord_lines.Parameters.AddWithValue("@user", cus_1.userName.ToString());


                cmd_ord_lines.ExecuteNonQuery();
            }

            cnn_ord_lines_ID_1.Close();
            cnn_ord_lines.Close();

            cnn_orders.Close();



            //// Open Ord to get ID for ord_lines 
            //SqlConnection cnn_ord_lines_ID_1 = new SqlConnection(cnn);
            //SqlConnection cnn_ord_lines_ID_2 = new SqlConnection(cnn);






            //SqlCommand cmd_ord_lines_ID = new SqlCommand("select * from ord where userName = '" + cus_1.userName.ToString() + "' and room = '" + ord_pay.room.ToString() + "' and total = '" + Session["three"].ToString() + "'", cnn_ord_lines_ID_1);





            //cnn_ord_lines_ID_1.Open();
            //cnn_ord_lines_ID_2.Open();

            //SqlDataReader rdr_ord_lines_ID_2 = cmd_ord_lines_ID.ExecuteReader();
            //rdr_ord_lines_ID_2.Read();
            //SqlCommand cmd_update = new SqlCommand("update ord_lines set id = '"+rdr_ord_lines_ID_2["id"]+"' where userName = '"+cus_1.userName+"' " , cnn_ord_lines_ID_2);

            //cmd_update.ExecuteNonQuery();
            //cnn_ord_lines_ID_2.Close();
            //cnn_ord_lines_ID_1.Close();







            // Send Email To Use That he send his order

            //string st = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;

            //SqlConnection sc = new SqlConnection(st);


            //SqlCommand sq = new SqlCommand("Select Email, userName from customer where email=@Email", sc);
            //sq.Parameters.AddWithValue("@Email", cus_1.email.ToString());
            //sc.Open();
            //SqlDataReader sdr = sq.ExecuteReader();
            //sdr.Read();
            //    string user = sdr["Email"].ToString();
            //    //string pas = sdr["Password"].ToString();
            //    // One
            //    MailMessage mm = new MailMessage("faris@meshari-ipa.com", cus_1.email.ToString());
            //    mm.Subject = "IPA Coffee: Your Order Info:";
            //    mm.IsBodyHtml = true;
            //    SqlConnection cnn_body = new SqlConnection(st);
            //    SqlCommand cmd_body = new SqlCommand("select * from ord where userName = '" + cus_1.userName + "'", cnn_body);
            //    cnn_body.Open();
            //    SqlDataReader rdr_body = cmd_body.ExecuteReader();
            //    rdr_body.Read();

            //    mm.Body = string.Format("Info About Order: " + rdr_body["userName"] + " Room Number: '" + rdr_body["room"] + "' : Total:  '" + rdr_body["total"] + "' SR \"", user);

            //    cnn_body.Close();
            //    SmtpClient smtp = new SmtpClient();
            //    smtp.Host = "mail.meshari-ipa.com";
            //    smtp.EnableSsl = true;
            //    NetworkCredential nc = new NetworkCredential();
            //    // Two
            //    nc.UserName = "faris@meshari-ipa.com";
            //    nc.Password = "12Ff-7812";
            //    smtp.UseDefaultCredentials = true;
            //    smtp.Credentials = nc;
            //    smtp.Port = 8889;
            //    smtp.Send(mm);

            // Another Way 

            //System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;
            ////create the mail message 
            //MailMessage mail = new MailMessage();

            ////set the addresses 
            //mail.From = new MailAddress("faris@meshari-ipa.com"); //IMPORTANT: This must be same as your smtp authentication address.
            //mail.To.Add(cus_1.email.ToString());

            ////set the content 
            //mail.Subject = "This is an email";
            //mail.Body = "This is from system.net.mail using C sharp with smtp authentication.";
            ////send the message 
            //SmtpClient smtp = new SmtpClient("smtp.gmail.com");

            ////IMPORANT:  Your smtp login email MUST be same as your FROM address. 
            //NetworkCredential Credentials = new NetworkCredential("faris@meshari-ipa.com", "12Ff-7812");
            //smtp.UseDefaultCredentials = false;
            //smtp.Credentials = Credentials;
            //smtp.Port = 8889;    //alternative port number is 8889
            //smtp.EnableSsl = false;
            //smtp.Send(mail);


            //sc.Close();

            // Last Way Send Email

            //SmtpClient smtp = new SmtpClient();//Initializes a new instance of the SmtpClient class that sends email by using the specified SMTP server
            //smtp.Host = "mail.meshari-ipa.com";//smtp is a protocol to transfer mailes.
            //smtp.Port = 8889;
            //smtp.Credentials = new System.Net.NetworkCredential("faris@meshari-ipa.com", "Year@2021");//approve the sender's info.
            //smtp.EnableSsl = false;//secure between server and browser.
            //MailMessage msg = new MailMessage();
            //msg.Subject = "Here is your activasion code:";
            //msg.Body = "Dear";
            //string toAddress = cus_1.email.ToString();
            //msg.To.Add(toAddress);
            //string Sender = "<faris@meshari-ipa.com>";
            //msg.From = new MailAddress(Sender);
            //smtp.Send(msg);




            Response.Redirect("~/Orders.aspx");














        }
    }
}