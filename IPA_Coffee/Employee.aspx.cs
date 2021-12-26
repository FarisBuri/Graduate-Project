using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace IPA_Coffee
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["emp"] == null) Response.Redirect("Sign_Up.aspx");

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
                string cnn1 = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;
           
                if (e.CommandName == "accept")
                {

                    SqlConnection cnn_update = new SqlConnection(cnn1);
                    SqlCommand cmd_update = new SqlCommand("update ord set status = 'Under Process' where id = '" + e.CommandArgument + "'", cnn_update);
                    //SqlCommand cmd_update = new SqlCommand("update ord set status = 'Wait Accept' where id = '" + e.CommandArgument + "'", cnn_update);

                    cnn_update.Open();

                    cmd_update.ExecuteNonQuery();

                    cnn_update.Close();



                }
                else if (e.CommandName == "dimiss")
                {
                    SqlConnection cnn_update = new SqlConnection(cnn1);
                    SqlCommand cmd_update = new SqlCommand("update ord set status = 'Not Accept Your Order :(' where id = '" + e.CommandArgument + "'", cnn_update);

                    cnn_update.Open();

                    cmd_update.ExecuteNonQuery();

                    cnn_update.Close();



                }
                else if (e.CommandName == "done")
                {
                    SqlConnection cnn_update = new SqlConnection(cnn1);
                    SqlCommand cmd_update = new SqlCommand("update ord set status = 'Your Order Is Done :)' where id = '" + e.CommandArgument + "'", cnn_update);

                    cnn_update.Open();

                    cmd_update.ExecuteNonQuery();


                    cnn_update.Close();



                }
            
                



        }

        protected void btn_accept_Command(object sender, CommandEventArgs e)
        {

            Response.Redirect("~/Employee.aspx",false);

            
        }
    }
}