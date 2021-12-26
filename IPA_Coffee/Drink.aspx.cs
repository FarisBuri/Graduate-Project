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
    public partial class WebForm4 : System.Web.UI.Page
    {
        string cnn = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlConnection cnn_OpenDataList = new SqlConnection(cnn);

                SqlCommand cmd_OpenDataList = new SqlCommand("select * from orders", cnn_OpenDataList);
                cnn_OpenDataList.Open();
                SqlDataReader rdr_OpenDataList = cmd_OpenDataList.ExecuteReader();
                DataList1.DataSource = rdr_OpenDataList;
                DataList1.DataBind();
                cnn_OpenDataList.Close();
            }
           
            if(Session["user"] != null)
            {
                SqlConnection cnn_cartNum = new SqlConnection(cnn);

                SqlCommand cmd_cartNum = new SqlCommand("select count(*) from cart where userName ='" + Session["user"].ToString() + "'", cnn_cartNum);
                cnn_cartNum.Open();
                lbl_num.Text = Convert.ToString(cmd_cartNum.ExecuteScalar());
                cnn_cartNum.Close();
            }






        }



        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {


            DropDownList Quantity = (DropDownList)e.Item.FindControl("DropDownList1");
            int quantity = Convert.ToInt32(Quantity.SelectedItem.Value.ToString());

            if (e.CommandName == "Add")
            {






                Session["buyItem"] = e.CommandArgument.ToString();
                Session["quantity"] = quantity;

                Response.Redirect("~/Cart.aspx");


            }
        }

        protected void submit_Command(object sender, CommandEventArgs e)
        {
           
                if (Session["user"] == null)
                {
                    Response.Redirect("~/Sign_Up.aspx");
                }
            

        }

        protected void TypeCoffee_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (true)
            {
                // Start  Only Search 
                if (ddl_TypeCoffee.SelectedValue == "all" && ddl_OrderBy.SelectedValue == "newest")
                {
                    SqlConnection cnn_All = new SqlConnection(cnn);
                    cnn_All.Open();
                    if (txt_search.Text == null)
                    {
                        SqlCommand cmd_All = new SqlCommand("select * from orders ", cnn_All);
                        SqlDataReader rdr_All = cmd_All.ExecuteReader();

                        DataList1.DataSource = rdr_All;
                        DataList1.DataBind();
                    }
                    else
                    {
                        SqlCommand cmd_All = new SqlCommand("select * from orders where order_name Like @search ", cnn_All);
                        cmd_All.Parameters.AddWithValue("@search", '%' + txt_search.Text + '%');
                        SqlDataReader rdr_All = cmd_All.ExecuteReader();

                        DataList1.DataSource = rdr_All;
                        DataList1.DataBind();
                    }


                    cnn_All.Close();


                    // End Only Search

                }
                else if (ddl_TypeCoffee.SelectedValue != "all" && txt_search.Text == null && ddl_OrderBy.SelectedValue == "newest")
                {
                    SqlConnection cnn_else = new SqlConnection(cnn);
                    cnn_else.Open();
                    SqlCommand cmd_else = new SqlCommand("select * from orders where order_category ='" + ddl_TypeCoffee.SelectedValue + "'", cnn_else);
                    SqlDataReader rdr_else = cmd_else.ExecuteReader();

                    DataList1.DataSource = rdr_else;
                    DataList1.DataBind();
                    cnn_else.Close();
                }
                else if (ddl_TypeCoffee.SelectedValue != "all" && txt_search.Text != null && ddl_OrderBy.SelectedValue == "newest" )
                {
                    SqlConnection cnn_else = new SqlConnection(cnn);
                    cnn_else.Open();
                    SqlCommand cmd_else = new SqlCommand("select * from orders where order_name Like @search and order_category = '" + ddl_TypeCoffee.SelectedValue + "'", cnn_else);
                    cmd_else.Parameters.AddWithValue("@search", '%' + txt_search.Text + '%');
                    SqlDataReader rdr_else = cmd_else.ExecuteReader();

                    DataList1.DataSource = rdr_else;
                    DataList1.DataBind();
                    cnn_else.Close();
                }
                else if (ddl_TypeCoffee.SelectedValue != "all" && ddl_OrderBy.SelectedValue == "newest" && txt_search.Text == null)
                {
                    SqlConnection cnn_else = new SqlConnection(cnn);
                    cnn_else.Open();
                    SqlCommand cmd_else = new SqlCommand("select * from orders where order_category ='" + ddl_TypeCoffee.SelectedValue + "'", cnn_else);
                    SqlDataReader rdr_else = cmd_else.ExecuteReader();

                    DataList1.DataSource = rdr_else;
                    DataList1.DataBind();
                    cnn_else.Close();
                }
                else if (ddl_OrderBy.SelectedValue != "newest")
                {
                    SqlConnection cnn_else = new SqlConnection(cnn);
                    cnn_else.Open();
                    // Start Order By

                    if (ddl_TypeCoffee.SelectedValue != "all" && txt_search.Text == null)
                    {
                        if (ddl_OrderBy.SelectedValue == "asc")
                        {
                            SqlCommand cmd_else = new SqlCommand("select * from orders where order_category = '" + ddl_TypeCoffee.SelectedValue + "' order by order_price asc", cnn_else);
                            SqlDataReader rdr_else = cmd_else.ExecuteReader();

                            DataList1.DataSource = rdr_else;
                            DataList1.DataBind();

                        }
                        else
                        {
                            SqlCommand cmd_else = new SqlCommand("select * from orders where order_category = '" + ddl_TypeCoffee.SelectedValue + "' order by order_price desc", cnn_else);
                            SqlDataReader rdr_else = cmd_else.ExecuteReader();

                            DataList1.DataSource = rdr_else;
                            DataList1.DataBind();

                        }
                    }
                    else if (ddl_TypeCoffee.SelectedValue != "all" && txt_search.Text != null)

                    {
                        if (ddl_OrderBy.SelectedValue == "asc")
                        {
                            SqlCommand cmd_else = new SqlCommand("select * from orders where order_category = '" + ddl_TypeCoffee.SelectedValue + "' and order_name Like @search order by order_price asc", cnn_else);
                            cmd_else.Parameters.AddWithValue("@search", '%' + txt_search.Text + '%');
                            SqlDataReader rdr_else = cmd_else.ExecuteReader();

                            DataList1.DataSource = rdr_else;
                            DataList1.DataBind();

                        }
                        else
                        {
                            SqlCommand cmd_else = new SqlCommand("select * from orders where order_category = '" + ddl_TypeCoffee.SelectedValue + "' and order_name Like @search order by order_price desc", cnn_else);
                            cmd_else.Parameters.AddWithValue("@search", '%' + txt_search.Text + '%');
                            SqlDataReader rdr_else = cmd_else.ExecuteReader();

                            DataList1.DataSource = rdr_else;
                            DataList1.DataBind();

                        }
                    }
                    else if (ddl_TypeCoffee.SelectedValue == "all" && txt_search.Text != null)
                    {
                        if (ddl_OrderBy.SelectedValue == "asc")
                        {
                            SqlCommand cmd_else = new SqlCommand("select * from orders where order_name Like @search order by order_price asc", cnn_else);
                            cmd_else.Parameters.AddWithValue("@search", '%' + txt_search.Text + '%');
                            SqlDataReader rdr_else = cmd_else.ExecuteReader();

                            DataList1.DataSource = rdr_else;
                            DataList1.DataBind();

                        }

                        else
                        {
                            SqlCommand cmd_else = new SqlCommand("select * from orders where order_name Like @search order by order_price desc", cnn_else);
                            cmd_else.Parameters.AddWithValue("@search", '%' + txt_search.Text + '%');
                            SqlDataReader rdr_else = cmd_else.ExecuteReader();

                            DataList1.DataSource = rdr_else;
                            DataList1.DataBind();

                        }

                    }
                    else
                    {
                        if (ddl_OrderBy.SelectedValue == "asc")
                        {
                            SqlCommand cmd_else = new SqlCommand("select * from orders order by order_price asc", cnn_else);
                            SqlDataReader rdr_else = cmd_else.ExecuteReader();

                            DataList1.DataSource = rdr_else;
                            DataList1.DataBind();

                        }
                        else
                        {
                            SqlCommand cmd_else = new SqlCommand("select * from orders order by order_price decs", cnn_else);
                            SqlDataReader rdr_else = cmd_else.ExecuteReader();

                            DataList1.DataSource = rdr_else;
                            DataList1.DataBind();

                        }
                    cnn_else.Close();
                    }

                    // End Order By


                }
            }
        }

        protected void txt_search_TextChanged(object sender, EventArgs e)
        {
            //SqlConnection cnn_search = new SqlConnection(cnn);
            //SqlCommand cmd_search = new SqlCommand("select * from orders where order_name Like '" + txt_search.Text+'%' + "' ", cnn_search);

            //cnn_search.Open();
            //SqlDataReader rdr_serch = cmd_search.ExecuteReader();
            //DataList1.DataSource = rdr_serch;
            //DataList1.DataBind();
            //cnn_search.Close();
        }
    }

}