using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace IPA_Coffee
{
    public partial class WebForm8 : System.Web.UI.Page
    {
       
     
        string cnn1 = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {



            //var total = new List<string>();








            //lbl_total2.Text = GridView1.Rows[1].Cells[5].ToString();
            if (Session["user"] != null)
            {
                
                //Total(Session["user"]);
                if (Session["buyItem"] != null)
                {
                    Total(Session["user"]);

                   
                    SqlConnection cnn = new SqlConnection(cnn1);
                    SqlConnection cnn_2 = new SqlConnection(cnn1);
                    Total(Session["user"]);
                    SqlCommand cmd_1 = new SqlCommand("select * from orders where order_name = '" + Session["buyItem"].ToString() + "' ", cnn);
                    cnn.Open();
                    SqlDataReader rdr_1 = cmd_1.ExecuteReader();
                    rdr_1.Read();
                    SqlCommand cmd_2 = new SqlCommand("insert into cart values(@img , @category , @price , @details ,@name, @quantity, @user)", cnn);
                    cmd_2.Parameters.AddWithValue("@img", rdr_1["order_img"]);
                    cmd_2.Parameters.AddWithValue("@category", rdr_1["order_category"]);
                    cmd_2.Parameters.AddWithValue("@price", rdr_1["order_price"]);
                    cmd_2.Parameters.AddWithValue("@details", rdr_1["order_details"]);
                    cmd_2.Parameters.AddWithValue("@name", rdr_1["order_name"]);
                    cmd_2.Parameters.AddWithValue("@quantity", Convert.ToInt32(Session["quantity"]));
                    cmd_2.Parameters.AddWithValue("@user", Session["user"].ToString());
                    SqlCommand cmd_3 = new SqlCommand("select * from cart where cart_name = @name1 and userName = '" + Session["user"] + "'", cnn_2);
                    cmd_3.Parameters.AddWithValue("@name1", Session["buyItem"]);
                    Total(Session["user"]);
                    cnn_2.Open();
                    if (cmd_3.ExecuteReader().HasRows)
                    {
                        cnn.Close();
                        SqlConnection cnn_3 = new SqlConnection(cnn1);
                        SqlConnection cnn_quantity = new SqlConnection(cnn1);
                        SqlCommand cmd_quantity = new SqlCommand("select * from cart where cart_name = '" + Session["buyItem"].ToString() + "'", cnn_quantity);
                        cnn_3.Open();
                        cnn_quantity.Open();
                        SqlDataReader rdr_quantity = cmd_quantity.ExecuteReader();
                        rdr_quantity.Read();
                        int qu = Convert.ToInt32(rdr_quantity["quantity"]);
                        SqlCommand cmd_4 = new SqlCommand("update cart set quantity = '"+ (Convert.ToInt32(Session["quantity"]) + qu) + "' where cart_name = '" + Session["buyItem"].ToString() + "' ", cnn_3);

                        cmd_4.ExecuteNonQuery();
                        cnn_quantity.Close();
                        cnn_3.Close();
                        cnn.Open();

                        ///cmd_2.ExecuteNonQuery();
                        Session.Remove("buyItem");
                    
                        Response.Redirect("~/Drink.aspx");
                        
                        Total(Session["user"]);

                        cnn_2.Close();
                        cnn.Close();
                        
                    }
                    else
                    {
                        cnn.Close();
                        cnn.Open();
                        Total(Session["user"]);
                        cmd_2.ExecuteNonQuery();
                        Session.Remove("buyItem");

                        Response.Redirect("~/Drink.aspx");
                        cnn_2.Close();
                        cnn.Close();


                    }
                    Total(Session["user"]);
                    Session.Remove("buyItem");
                   





                }                
            }
        }

       
        public void Total(object User)
        {
            SqlConnection cnn2 = new SqlConnection(cnn1);
            SqlCommand cmd_4 = new SqlCommand("select * from cart where userName = '"+User+"'", cnn2);
            cnn2.Open();
            SqlDataReader rdr_2 = cmd_4.ExecuteReader();
            List<string> total = new List<string>();
            while (rdr_2.Read())
            {
                var price = Convert.ToDouble(rdr_2["quantity"].ToString()) * Convert.ToDouble(rdr_2["cart_price"].ToString());
                total.Add(price.ToString());


            }
            double fine = 0;
            for (var i = 0; i < total.Count; i++)
            {
                fine = fine + Convert.ToDouble(total[i]);
            }
            double fine_2 = fine + 1;
            lbl_drived.Visible = true;
            lbl_drived_1.Visible = true;
            lbl_price.Visible = true;
            lbl_price_1.Visible = true;
            lbl_price_1.Text = fine.ToString() + " SR";
            lbl_total.Text = fine_2.ToString() + " SR";

           
            Session["two"] = fine.ToString();
            Session["three"] = fine_2.ToString();


            cnn2.Close();
        }

        protected void send_Click(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                SqlConnection cnn_5 = new SqlConnection(cnn1);
                SqlCommand cmd_5 = new SqlCommand("select * from cart where userName = '" + Session["user"].ToString() + "'", cnn_5);
                cnn_5.Open();


                if (cmd_5.ExecuteReader().HasRows)
                {
                    Response.Redirect("~/Check_Out.aspx");
                }
                else
                {
                    Response.Redirect("~/Drink.aspx");
                }
            } else
            {
                Response.Redirect("~/Sign_Up.aspx");
            }


          
        }



        protected void GridView1_DataBinding(object sender, EventArgs e)
        {
            // true
            if(Session["user"] != null)
            {
                Total(Session["user"]);
            }
            Session.Remove("buyItem");
        }

    }
}