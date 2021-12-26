<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="IPA_Coffee.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Start Student  */
.student {
  padding: 60px 0;
  position: relative;
  overflow: hidden;
  overflow-x: scroll;
}
.container > h3 {
  text-align: center;
  padding: 20px;
  color: var(--main-color);
  margin-bottom: 20px;
  background-color: white;
  font-size: 24px;
  font-weight: bold;
  border-radius: 10px 10px 0 0;
  box-shadow: 0 2px 15px #ccc;
}
.student .container {
  padding: 0;
  background-color: #fff;
  position: relative;
  border-radius: 10px;
  height: fit-content;
  overflow-x: auto;
  overflow-y: hidden;
}

.student .container .box {
  display: flex;
  justify-content: space-between;
}
@media (max-width: 1200px) {
  .student .container .box {
    display: block;
  }
}
.student .container .part,
.student .container .full {
  position: relative;
  padding: 25px 40px;
  flex-grow: 1;
  min-width: 360px;
}
.student .container .part:not(:last-of-type)::after {
  content: "";
  background-color: #795548;
  position: absolute;
  right: 0;
  top: 0;
  width: 2px;
  height: 95%;
}
@media (max-width: 1200px) {
  .student .container .part:not(:last-of-type)::after {
    width: 70%;
    height: 2px;
    top: 100%;
    left: 0;
    margin: 0 auto;
  }
  .student .container .part:not(:last-of-type)::before {
    content: "";
    width: 15px;
    height: 15px;
    top: calc(100% + -9px);
    left: 50%;
    transform: translateX(-50%);
    background-color: white;
    position: absolute;
    border-radius: 50%;
    border: 3px solid var(--main-color);
    z-index: 2;
  }
}
.student .container .part h3,
.student .container .full h3 {
  text-align: center;
  color: var(--main-color);
  margin-bottom: 25px;
}
.student .container ul {
  list-style-type: disc;
}
.student .container ul.sub {
  list-style-type: circle;
  margin-left: 10px;
  margin-top: 5px;
}
.student .container ul li span.imp {
  color: red;
}
.student .container li {
  padding: 10px;
}
.student .container .liHead {
  padding: 20px 0 10px;
  list-style: none;
  color: black;
  font-weight: bold;
}
.student .container p {
  color: #777;
  line-height: 1.7;
  text-transform: capitalize;
  margin: 20px;
}
.student .container pre {
  white-space: pre-wrap;
  font-size: 14px;
}

.student .container .code {
  color: #2196f3;
  font-weight: bold;
  line-height: 1.7;
  overflow: auto;
}
.student .container a {
  color: blue;
  font-weight: bold;
}

/* Seprate */

.svg-container {
  position: absolute;
  left: 0;
  width: 100%;
  height: 100%;
}
/* End Student  */

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <!-- Start Student   -->

 <div class="student">
     <div class="svg-container" style="top:-2%;">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z"></path></svg>
         <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z"></path></svg>
     </div>     
     <div class="svg-container" style="top:50%;">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z"></path></svg>
         <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z"></path></svg>
     </div>     
     <div class="svg-container" style="top:95%;">
         <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z"></path></svg>
     </div>     
     <div class="container">
         <h3>Apply 1</h3>
        <div class="box">
            <div class="part">
                <h3>What You Will Get : </h3>
                <ul>
                    <li class="liHead">Pages Must Done</li>
                    <li>Sign Up</li>
                    <li>Sign In</li>
                    <li>Products</li>
                    <li class="liHead">Features Must Done</li>
                    <li>When User Make Sign in then it will redirect to another page, in that page must dipslay his first name and last name</li>
                    <li>Make Sign Out</li>
                    <li class="liHead">Must To Learn :</li>
                    <li>SqlCommand</li>
                    <li>SqlConnection</li>
                    <li>Respone.Redirect</li>
                    <li>SqlDataReader</li>
                    <li>Session</li>
                    <li>ExecuteNonQuery</li>
                    <li>ExecuteReader</li>
                </ul>
                
            </div>
            <div class="part">
                <h3>Problem May You Face :</h3>
                <h3>Sign Out</h3>
                <p>when you make sign out must put it in ( Button ) to make change in code behind when he click it </p>
                <h3>Sign In</h3>
                <p>also in sign in put it in ( asp:HyperLink ) to make visbile false in code behind when user sign in </p>
                <h3>Display First Name, Last</h3>
                <p>here you must use SqlDataReader to read from database then put it in rdr['firstName'] then make ExecuteReader but it will not work becuase you must use rdr.Read() first then you use it as rdr['firstName'] For Example : 
                </p>
                <pre class="code">
                    SqlDataReader rdr = cmd.ExecuteReader();
                    rdr.Read();
                    lbl_fname = rdr["first_name"].ToString();
                    cnn.Close();
                </pre>
            </div>
             <div class="part">
                 <h3>Advice 1 :</h3>
                 <p>make class customer and put on it all his property For Example :</p>
                 <pre class="code">
                     class Customer {
                         string first_name;
                         string last_name;
                         string date;
                         string username;
                         string email;
                         int phone;
                     }
                 </pre>
                 <p>this will save a lot of time when you know how to use it after you make class you must create object:</p>
                 <p class="code">Customer cus = new Customer()</p>
                 <p>Then When user make sign in make sqlcommand and get all his data by using sql data reader for example :</p>
                 <pre class="code">
                    customer cus = new customer();
                    cus.frist_name = rdr["first_name"].ToString();
                    cus.last_name = rdr["last_name"].ToString();
                    cus.email = rdr["email"].ToString();
                    cus.userName = rdr["userName"].ToString();
                 </p>
                 <p>then put the refrence cus in session Like: </p>
                 <p class="code">Session["cus"] = cus;</p>

                 <p>then in all pages that you need customer data you don't need to make sqlcommand and SqlDataReader to get them just do this: </p>
                 <p class="code">
                    customer cus = (customer)Session["cus"];

                    first_name.Text = cus.frist_name.ToString();
                 </p>
                <h3>Advice 2 :</h3>
                <p>also you must to make in web config connection that will help you in the end of semester that you can put your website in servr and it will save time when you make connection. </p>

                <pre>
                    
Step one : in web.cofig:
 
<connectionStrings>
	<add name="Modren" connectionString="bottom" provideName="System.Data.SQLClient"/>
</connectionStrings>
 

name : is the any name you want 

connection String : is the place of database 

provide Name : is the library that handle database 
 
Step Two : 

on database > right click > property  > Connection String > copy 
 

put this in connection String 
 
 
<p class="code">
    Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename="
C:\Users\Documents\Project  2\The_Proejct\IPA_Coffee\IPA_Coffee
\App_Data\IPA_Coffee_db.mdf";Integrated Security=True;Connect Timeout=30
</p>

change it to :
<p class="code">
    
connectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=
C:\Users\Documents\Project  2\The_Proejct\IPA_Coffee\IPA_Coffee
\App_Data\IPA_Coffee_db.mdf"
</p>
 

                </pre>
                
             </div>
            </div>
            <div class="full">
                <h3>Problem May You Face :</h3>
                <pre>
                   
when you want to make two if statement one of check email and one for check user name 
will never work to solve this problem ?

go sql command and write 

<pre class="code">
    SqlCommand cmd2 = new SqlCommand("select * from customer where email = @email or userName = @user", cnn2);

using system.confgiration
using System.Data.SqlClient
 
string cn1 = ConfigurationManager.ConnectionStrings["IPA"].ConnectionString;

            SqlConnection cn2 = new SqlConnection(cn1);
            SqlCommand cmd1 = new SqlCommand("insert into customer (first_name , last_name , email , password , userName) values(@first,@last,@email,@password,@user)",cn2);
	       // here is the row in table takes the parameter that you can name it any name then make cmd.Parameter.AddWithValue(parameter , Text) the way you make cause you can't put your text box in SQL Command
	
            SqlCommand cmd2 = new SqlCommand("select * form email where email = @email", cn2);
		

            cmd1.Parameters.AddWithValue("@first",first_name.Text);
            cmd1.Parameters.AddWithValue("@last", last_name.Text);
            cmd1.Parameters.AddWithValue("@email", email.Text);
            cmd1.Parameters.AddWithValue("@ passowrd", password.Text);
            cmd1.Parameters.AddWithValue("@user", user_name.Text);

            cmd2.Parameters.AddWithValue("@email",email.Text);
            cn2.Open();

            if (cmd2.ExecuteReader().HasRows)
            {
                
                cn2.Close();
            }
            else
            {
                cn2.Close();
                cn2.Open();
                cmd1.ExecuteNonQuery();

                cn2.Close();
            }

</pre>
                    

                </pre>
            </div>
     </div>
     
 </div>

 <div class="student">
    <div class="svg-container" style="top:-5%;">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z"></path></svg>
         <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z"></path></svg>
     </div>     
     
     <div class="svg-container" style="top:95%;">
         <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z"></path></svg>
     </div>     
     <div class="container">
         <h3>Apply 2</h3>
         <div class="box">
            <div class="part">
                <h3>What You Will Get :</h3>
                <ul>
                    <li class="liHead">Pages Must Done</li>
                    <li>Cart</li>
                    <li>Checkout</li>
                    <li>Payment</li>
                    <li>Order</li>
                    <li>Employee
                        <ul class="sub">
                            <li>Accept Order Or Deny</li>
                            <li>Make Order <span class="imp">( Not Important )</span></li>
                        </ul>
                    </li>
                    <li>Admin
                        <ul class="sub">
                           <li>Add Prodcut</li>
                           <li>Remove Product</li>
                           <li>Add Employee</li>
                           <li>Remove Employee <span class="imp">( Not Important )</span></li>
                           <li>Remove Customer <span class="imp">( Not Important )</span></li>
                        </ul>
                    </li>
                </ul>
   
                <ul>
                    <li class="liHead">Must To Learn :</li>
                    <li>IsPostPack</li>
                    <li>CausesValidation</li>
                    <li>ExecuteScalar</li>
                    <li>Find Control</li>
                    <li>CommandName</li>
                    <li>CommandArgument</li>
                    <li>OnCommand</li>
                </ul>
   
               <ul>
                   <li class="liHead">Feature Should Done :</li>
                   <li>Favorite <span class="imp">( Not Important )</span></li>
                   <li>Comment <span class="imp">( Not Important )</span></li>
                   <li>Search</li>
                   <li>DropDownList <span class="imp">( Not Important )</span></li>
               </ul>
            </div>
            <div class="part">
                <h3>Advice :</h3>
                <p>most your time will be in how to send data from prodcut to cart you have three way</p>
                <li>Bad Way :</li>
                <p>to make session that just send one prodcut and go to cart page to put it and get back to same page so it will be time for reload and this the Worst way </p>
                <li>Good Way</li>
                <p>in stack overflow or youTube there are a lot of code that it's hard to understand but it work but you don't know how it work </p>
                <li>Perfect</li>
                <p>use list to put data  on it then go to cart page then make for to display all data and to make remove by using push or pop or another method that make it easy or you can use data structure to make your own method <span style="color:red">[ Don't Forget To Use Class For Product ]</span> </p>
            </div>
            <div class="part">
                <h3>Problem May You Face :</h3>
                <p>when you make search or dropdownlist and you don't know how to use it <br>
                    you must make <strong>DataList , ListView , GridView </strong> in code behind by remove <b>SqlDataSource</b> from interface page and in control like datalist remove <b>DataSourceID</b>
                    <br>
                    then in code behind make this for search :
                </p>
                <pre class="code">
                    SqlCommand cmd_All = new SqlCommand("select * from products where product_name Like @search ", cnn_All);
                    cmd_All.Parameters.AddWithValue("@search", '%' + txt_search.Text + '%');                    SqlDataReader rdr_All = cmd_All.ExecuteReader();

                    DataList1.DataSource = rdr_All;
                    DataList1.DataBind();  
                </pre>
                <br>
                <h3>Another Problem May You Face :</h3>
                <p>most of problems you can solve it by learn <b>[ what you must to learn ] </b> </p>
            </div>
         </div>
         
     </div>
 </div>

 <div class="student">
    <div class="svg-container" style="top:15%;">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z"></path></svg>
         <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z"></path></svg>
     </div>     
     <div class="container">
         <h3>Apply 3</h3>
         <div class="box">
             <div class="part">
                 <h3>What You Will Get :</h3>
                 <ul>
                     <li class="liHead"> Feature Must Add :</li>
                     <li>In Your Project 1 you put some featrues apply it</li>
                 </ul>
                 <ul>
                     <li class="liHead">Must To Know About It :</li>
                     <li>SQL Injection</li>
                 </ul>
                 <ul>
                     <li class="liHead">How to Make Your website Secure </li>
                     <p><b>Step 1</b><br>Prevnet ( ; ) semicolon or when you get data from user put it in cmd.Parameter.AddWithValue to prevnet sql injection</p>
                     <p><b>Step 2</b><br>if your site take images from user and there is to name of same image it will overwrite on first image to solve this problem you have to way : <br><b>First Way ( Bad Way ):</b><br>
                        if there is image has same name tell user change img name because there already same name 

                        <br><b>Second Way ( Good Way ):</b><br>
                        to make folder for every user sign up by  automatic way 
                    </p>
                 </ul>
                 
             </div>
             <div class="part">
                 <h3>What Procedure In Discussion :</h3>
                 <p> <span style="color:red">{ Customer }</span> Create Account > Make Sign In >  Make Order > Checkout > payment > order page <br>
                    
                <span style="color:red">{ Employee }</span> Accept Order Or Deny
                    <br>
                <span style="color:red">{ Admin }</span> Remove Customer 
                
                </p>
                <p class="code"> They Will Ask you questions when you make these steps  </p>
                 <h3>Common Question :</h3>
                 <p>It's depend on Teacher For Me Most Question From SQL</p>
                 <ul>
                     <li>What Things That You Add From Outside Like Library Or Featrues</li>
                     <li>Is Everthing You Code it or get it From Another Website</li>
                      <li>Show Me Domain Class Diagram in project 1
                     <ul class="sub">
                         <li>Why You Don't Use Unery</li>
                         <li>Why You Don't Make Shortcut</li>
                     </ul>
                 </li>
                 <li>Why You Don't Make Admin And Employee at same table and add column type</li>
                 <li>in table Cart  what is inside it and explain it </li>
                 <li>Show Me Orders For Yesterday </li>
                 <li>Why In Order Doesn't Have Date</li>
                 <li>Show Me How Users Do You Have ( Count )</li>
                 <li>Give Me report for every employee and what order he accept it and deny it</li>

                 </ul>
                 <p>For Me i didn't answer all the questions becuase most of question you can't answer it so don't warry :)</p>
             </div>
         </div>
     </div>
 </div>

 <div class="student">
    <div class="svg-container" style="top:-20%;">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z"></path></svg>
         <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z"></path></svg>
     </div>     
     <div class="container">
         <h3>After Graduate <i class="fas fa-user-graduate"></i></h3>
         <div class="box">
             <div class="part">
                 <h3>Must To Do :</h3>
                 <ul>
                    <li>Make Resume Not CV
                        <ul class="sub">
                            <li><a href="https://seirah.com" style="color:blue;font-weight: bold;" target="_blank">Make Resume</a></li>
                        </ul>
                    </li>
                    <li>Make portfolio </li>
                    <li>Make Account in ( Linked In )</li>
                 </ul>
                
             </div>
             <div class="part">
                 <h3>Must To Learn :</h3>
                 <li>GitHub</li>
             </div>
         </div>
     </div>
 </div>

 <div class="student">
    <div class="svg-container" style="top:-20%;">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z"></path></svg>
         <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffd700" fill-opacity="1" d="M0,288L80,250.7C160,213,320,139,480,133.3C640,128,800,192,960,218.7C1120,245,1280,235,1360,229.3L1440,224L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z"></path></svg>
     </div>     
     <div class="container">
         <h3>Advice To Make WebSite Like This Or Better :)</h3>
         <div class="box">
             <div class="part">
                 <h3>Courses You Must See It :</h3>
                 <ul>
                     <li><a href="https://youtube.com/playlist?list=PLDoPjvoNmBAw_t_XWUFbBX-c9MafPk9ji">HTML</a></li>
                     <li><a href="https://youtube.com/playlist?list=PLDoPjvoNmBAzjsz06gkzlSrlev53MGIKe">CSS</a></li>
                     <li><a href="https://youtube.com/playlist?list=PLDoPjvoNmBAx3kiplQR_oeDqLDBUDYwVv">javascript</a></li>
                 </ul>
             </div>
             <div class="part">
                 <h3>Courses You Must Apply Them :</h3>
                 <ul>
                     <li><a href="https://youtube.com/playlist?list=PLDoPjvoNmBAzHSjcR-HnW9tnxyuye8KbF">HTML CSS Apply 1</a></li>
                     <li><a href="https://youtube.com/playlist?list=PLDoPjvoNmBAy1l-2A21ng3gxEyocruT0t">HTML CSS Apply 2</a></li>
                     <li><a href="https://youtube.com/playlist?list=PLDoPjvoNmBAxuCSp2_-9LurPqRVwketnc">HTML CSS Apply 3</a></li>
                     <li><a href="https://youtube.com/playlist?list=PLDoPjvoNmBAzvmpzF-6l3tAviiCPbwkB8">HTML CSS javascript Apply </a></li>
                 </ul>
             </div>
         </div>
     </div>
 </div>
<!-- End Student   -->
</asp:Content>
