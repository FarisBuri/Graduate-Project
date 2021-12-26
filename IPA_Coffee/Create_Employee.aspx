<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Create_Employee.aspx.cs" Inherits="IPA_Coffee.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" >
    <style>

        
/* Start Admin Page */
        
            .hide_admin {
                display: block;
            }
            .hide_emp {
                display: none;
            }

            .show {
                display: none;
            }


/* Start Admin Page */
        

/* Start Header*/

/* Start Main Page */
header .container .links > li:not(:last-child) {
  position: relative;
}

/* Start Hover On Element  */
header .container .links li:nth-of-type(4) a:hover::before  {
    left: -100%;
}
/* End Hover On Element  */
header .container .links > li:nth-child(4)::before {
  content: "";
  position: absolute;
  bottom: -25px;
  left: 0;
  width: 100%;
  height: 3px;
  background-color: var(--main-color);
}
header .container .links > .emp {
  position: relative;
}
header .container .links > li > .emp::before {
  content: "";
  position: absolute;
  bottom: -22px;
  left: 50%;
  transform: translateX(-50%);
  border: 7px solid #fff;
  border-bottom-color: var(--main-color);
}
header .container .links > li > .emp::after {
  content: "";
  position: absolute;
  bottom: -25px;
  left: 50%;
  transform: translateX(-50%);
  border: 6px solid transparent;
  border-bottom-color: #ffffff;
  border-left-color: transparent;
  border-right-color: transparent;
}

/* Mega  */
/* End Header*/

        
/* Start Remove User */
.user {
  padding: 80px 0;
  background-image: url("image1/land4.jpg");
  /*background-color: #eee;*/
  background-repeat: no-repeat;
  background-size: cover;
  height: fit-content;
}

.user .container {
     background-color: #ffffff70;
    padding: 0;
    height: 700px;
    overflow: auto;
    position:relative;
 
}

.user h2 {
  text-align: center;
  padding: 20px;
  /* padding-bottom: 40px; */
  color: var(--main-color);
  margin-bottom: 20px;
  background-color: white;
  margin-bottom: 40px;
  font-size: 24px;
}

/* End Remove User */

/* Start Grid */

        .gridview {
            border: 1px solid var(--main-color);
              position: absolute;
            top: 169px;
            text-align: center;
            height: 34%;
    
            width: 100%;
            background-color: white;
        }

            .gridview td {
                color: var(--main-color);
                padding: 0px
            }

            .gridview th {
                font-style: normal;
                color: white;
                background-color: var(--main-color);
                padding: 15px;

            }

            .gridview th a {
                color: white
            }

      

            .gridview td [id^="ContentPlaceHolder1_GridView1_LinkButton1"],
             .gridview td [id^="ContentPlaceHolder1_GridView2_LinkButton1"]{
                font-size: 21px;
                font-style: normal;
                font-weight: bold;
                color: red;
                background-color: white;
                padding: 0px;
                background-color: transparent;
            }

            .gridview table td span,
            .gridview table td a
            {
                    color: white;
                    display: inline-block;
                    background-color: var(--main-color);
                    padding: 0px -4px;
                    border-radius: 50%;
                    text-align: center;
                    line-height: 26px;
                    margin: 10px 5px;
                    width: 25px;
                    height: 25px;
                    padding: 0 2px 0 0;
                     
            }

            .gridview table td span {
                opacity: .6
            }

     

            @media(min-width: 491px) {
                .gridview td {               
                    padding: 10px
                }
                .gridview td [id^="ContentPlaceHolder1_GridView1_LinkButton1"],
                 .gridview td [id^="ContentPlaceHolder1_GridView2_LinkButton1"] {
                    padding: 7px;
                }
                .gridview table td span,
                .gridview table td a {               
                    padding: 3px 6px;              
                    line-height: 28px;          
                       margin: -3px -5px;
                    width: 35px;
                    height: 35px;
                }
            }


            @media(min-width: 757px) {
                .gridview {
                    margin: 0 10%;
                    width: 80%;
                }
                .gridview td {               
                    padding: 20px
                }
                .gridview td [id^="ContentPlaceHolder1_GridView1_LinkButton1"],
                .gridview td [id^="ContentPlaceHolder1_GridView2_LinkButton1"]{
                    padding: 17px;
                }
                .gridview table td span,
                .gridview table td a {               
                    padding: 3px 6px;              
                    line-height: 28px;          
                       margin: -3px -11px;
                    width: 35px;
                    height: 35px;
                }
                     
            }

            @media(max-width: 992px) {
                .gridview {
                    margin: 0 3%;
                }
            }

           
            

        /* End Grid */

        /* Start Info */
        
        .user .container .info {
            background-color: white;
            position: absolute;
            top: 100px;
            height: 46px;
            width: 100%;
            transform: scaleX(0.8);
            display: flex;
            align-items: center;
                justify-content: space-around;
        }
              .user .container .info input {
                border: 1px solid var(--main-color);
                
                padding: 4px 10px;
                border-radius: 10px;
                text-align: center;
                position: relative;
            }
           .user .container .info input::before {
                 content: "hi";
                position: absolute;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                background-color: red;
            }
             
         
            .user .container .info input:focus {
                    border: 1px solid var(--main-color);
                outline: none;
            }

            .user .container .info select {
                   padding: 2px 15px;
                    border: 1px solid var(--main-color);
                    border-radius: 10px;
                    width: 200px;
                    font-size: 14px;

            }
            .user .container .info h3 {
                font-weight: normal;
                color: var(--main-color);
            }

            .user .container .info .input_search {
                position: relative;
            }

            .user .container .info .input_search i {
                position: absolute;
                top: 6px;
                right: 20px;
                /* left: 20px; */
                /* right: 10px; */
                z-index: 99;
                opacity: .8;
                color: var(--main-color);
            }

            @media(max-width: 650px) {
                .user .container .info h3 {
                    display: none;
                }
            } 

        /* End Info */


        /* Start Create Employee */

                /* Start Sign */

        section {
          padding-top: var(--padding);
          padding-bottom: var(--padding);
        }
        @media (min-width: 767px) {
          section {
                padding: 30px 0 0 15px;
               
          }
        }

        section .sign {
          padding: 39px;
          background-color: white;
          margin: 0 auto;
          border-radius: 10px;
          padding-top: 125px;
          position: relative;
        }

        @media (min-width: 767px) {
          section .sign {
            padding: 39px;
            background-color: white;
            width: 574px;
            height: 490px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            /* flex-basis: 100px; */
            border-radius: 10px;
            padding-top: 125px;
            position: relative;
                            box-shadow: 10px 10px 40px #ccc;

          }
        }
        section h3 {
          display: block;
          color: var(--main-color);
          transform: translateY(-81px);
          position: absolute;
          text-align: center;
          font-size: 45px;
          width: 85%;
        }

        @media (max-width: 768px) {
          section h3 {
            transform: translateY(-81px);
            position: absolute;
            text-align: center;
          }
        }

        section .sign h4:first-of-type,
        section .sign h4:last-of-type {
         
            position: absolute;
            top: 0;
            padding: 11px;
            width: 250px;
            text-align: center;
            border-radius: 0 0 5px 6px;
            background-color: var(--main-color);
            color: white;
            left: 0;
            border-radius: 0 0 5px 0;
            transition: 1s;
        }

        section .sign h4:first-of-type,
        section .sign h4:last-of-type:active {
            
        }

        @media (min-width: 767px) {
            section .sign h4:first-of-type,
            section .sign h4:last-of-type {
                left: 50%;
                transform: translateX(-50%);
                border-radius: 0 0 5px 5px
            }
        }

        section .sign input {
          position: relative;
          display: block;
          border: none;
          height: 40px;
          border-bottom: 1px solid var(--main-color);
          text-align: center;
          padding: 30px;
          border-radius: 3px;
          margin: 0 auto;
          font-size: 19px;

        }

        @media (min-width: 767px) {
          section .sign input {
            position: relative;
            display: block;
            border: none;
            height: 40px;
            border-bottom: 1px solid var(--main-color);
            text-align: center;
            padding: 10px;
            margin-left: 10px;
            border-radius: 3px;
            font-size: inherit;
          }
        }

        section .sign input:active {
          /* border: none; */
          outline: none;
        }
        section .sign input:focus {
          /* border: none; */
          outline: none;
        }

        section .sign select {
        }

        section .sign select option {
        }

        section .sign input:last-child {
          border: none;
          background-image: linear-gradient(to left, var(--main-color), #daae68);
          color: white;
          font-weight: bold;
          letter-spacing: 1px;
          border-radius: 10px;
          /* padding: 20px; */
          margin-top: 30px;
          width: 70%;
          line-height: 5px;
          margin: 0 auto;
        }

        @media (max-width: 768px) {
          section .sign input:last-child {
            border: none;
            background-image: linear-gradient(to left, var(--main-color), #daae68);
            color: white;
            font-weight: bold;
            letter-spacing: 1px;
            border-radius: 10px;
            /* padding: 15px; */
            margin-top: 30px;
            width: 70%;
          }
        }

        section .sign input:last-child:hover {
          opacity: 0.9;
        }
        section .sign input:last-child:active {
          border: none;
          outline: none;
          color: #eee;
        }
        section .sign input:last-child:active{
            outline: none;
            border: 0;
            border: 1px solid #333;
        }

        
        /* End Sign */


        /* Start  Requeriment*/

         .rq {
           color: white;
            background-color: var(--main-color);
            position: absolute;
            font-size: 12px;
            right: 0px;
            padding: 7px;
            border-radius: 10px 0 0 10px;
            width: fit-content;
            transition: 1s;
         }

         .rq1 {
             top : 22%
         }
         .rq2 {
             top: 32%
         }
         
         .rq3 {
             top: 42%
         }

         .rq4 {
             top: 52%
         }

         .rq5 {
             top: 62%
         }

         .rq6{
             top: 72%;
         }
         .cm {
             top: 61%;
             left: 0;
             border-radius: 0 10px 10px 0;
             width: 144px;
             line-height: 1.6;
         }
         .rg {
             top: 41%;
             width: 144px;
             line-height: 1.6;
         }

        @media(min-width: 767px) {

            .rq {
            }

            .rq1 {
                left: 0;
                top: 20px;
                border-radius: 0 10px 10px 0;
            }

            .rq2 {
                left: 0;
                top: 60px;
                border-radius: 0 10px 10px 0;
            }

            .rq3 {
                left: 0;
                top: 100px;
                border-radius: 0 10px 10px 0;
            }

            .rq4 {
                right: 0;
                top: 100px;
            }

            .rq5 {
                right: 0;
                top: 60px;
            }

            .rq6 {
                right: 0;
                top: 20px;
            }

            .cm {
                top: 87%;
            }
            .rg {
                top: 87%;
                right: 0;
            }
        }

         /* End Requriment */

        /* End Create Empl0yee */

        
/* Start Remove User */

.remove-user {
  padding: 60px 0;
}
.remove-user .container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 30px;
}
.remove-user .container .box {
  box-shadow: 0 2px 15px #ccc;
  height: 433px;
  position: relative;
  border-radius: 25px;
  overflow: hidden;
  transition: var(--main-transition);
}
.remove-user .container .box:hover {
  outline: 10px solid #ffc107;
}
.remove-user .container .box .image {
  height: 240px;
  /* outline: 10px solid #ffc107; */
}
.remove-user .container .box .image img {
  width: 100%;
  height: 100%;
}
.remove-user .container .box .text {
}

.remove-user .container .box .text h4 {
  padding: 10px;
  text-align: center;
  font-style: normal;
  font-size: 19px;
  margin-bottom: 10px;

  color: white;
  background-color: var(--main-color);
  margin-top: -3px;
  transition: var(--main-transition);
  border-top: 13px solid transparent;
}
.remove-user .container .box:hover .text h4 {
  border-top: 13px solid #ffc107;
}
.remove-user .container .box .text p {
  padding: 10px;
  color: #2196f3;
  padding-left: 4px;
  font-style: normal;
  margin-top: 10px;
}
.remove-user .container .box .text p span {
  font-weight: bold;
  padding-right: 10px;
  color: black;
  font-style: normal;
  font-size: 15px;
}
.remove-user .container .box input {
  width: 100%;
  padding: 13px;
  color: white;
  font-weight: bold;
  background-color: red;
  border: none;
  display: block;
  margin: 0 auto;
  margin-top: 10px;
  position: absolute;
  bottom: 0px;
  transition: .3s;
}
.remove-user .container .box input:hover {
        box-shadow: 0 57px 15px inset #03a9f4;

}
.remove-user .container .box input:active{   
    box-shadow: 500px 0px 15px inset #ff9800;


}
/* End Remove User */



    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div class="user" style="margin: 0 0 10px 0; background-image: url('image1/bgC2.jpg')">
        <div class="container" style="height: fit-content; padding: 0 0 30px;">
            <h2>Create Employee</h2>
            
            <!-- Start Sign in -->
            
        <section>
            <div class="sign">
                <asp:Label ID="email_found" runat="server" Visible="false"><h4>Email / User Name Is Exist</h4></asp:Label>
                
                 <asp:Label ID="user_name_found" runat="server" Visible="false"><h4>User Name Is Exist</h4></asp:Label>
               <h3>Sign Up</h3>

                <!-- First Name -->
                <asp:TextBox runat="server" ID="first_name"  autocomplete="no" placeholder="First Name" autofocus="autofocus" />

                <asp:RequiredFieldValidator runat="server" ID="rq_first_name" ControlToValidate="first_name" ErrorMessage="First Name Requreid" CssClass="rq rq1" />
                
                <!-- Last Name -->
                <asp:TextBox runat="server" autocomplete="no"  ID="last_name" placeholder="Last Name"/>
                <asp:RequiredFieldValidator runat="server" ID="rq_last_name" ControlToValidate="last_name" ErrorMessage="Last Name Requreid"  CssClass="rq rq2" />
                
                <!-- Email -->
                <asp:TextBox runat="server" autocomplete="no"   ID="email" placeholder="Email"/>
                <asp:RequiredFieldValidator runat="server" ID="rq_email" ControlToValidate="email" ErrorMessage="Email Requreid"  CssClass="rq rq3" />
                <asp:RegularExpressionValidator ID="rg" runat="server" ControlToValidate="email" ErrorMessage="Invalid Email Address." CssClass="rq rg" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                <!-- Password -->
                <asp:TextBox runat="server" TextMode="Password" autocomplete="no"  ID="password" placeholder="Password"/>
                <asp:RequiredFieldValidator runat="server" ID="rq_password" ControlToValidate="password"  ErrorMessage="Password Requreid"  CssClass="rq rq4" />
                
                <!-- re-Password -->
                <asp:TextBox runat="server" autocomplete="no" TextMode="Password"  ID="re_password" placeholder="Re-Password"/>
                <asp:RequiredFieldValidator runat="server" ID="rq_re_password" ControlToValidate="re_password" ErrorMessage="Re Password Requreid"  CssClass="rq rq5" />
                <asp:CompareValidator ID="cm" runat="server" ErrorMessage="Re-Password Not Match Password" ControlToCompare="password" ControlToValidate="re_password" CssClass="rq cm" ></asp:CompareValidator>
                
                <!-- User Name-->
                <asp:TextBox runat="server" ID="user_name" placeholder="User Name" autocomplete="no" />
                <asp:RequiredFieldValidator runat="server" ID="rq_user_name" ControlToValidate="user_name" ErrorMessage="User Name Requreid"  CssClass="rq rq6" />
                
                <!-- Room -->
                <!-- <select name="" id="">
                    
                    <option value="">10</option>
                    <option value="">10</option>
                </select> -->
                <asp:Button runat="server" ID="submit" Text="Submit" OnClick="submit_Click" />
            </div>
        </section>

    <!-- End Sign in -->

        </div>
    </div>

 


 <!-- Start Remove User -->

 <div class="remove-user">
     <h2 class="main-title">Remove User</h2>

     <div class="container">

         <asp:ListView ID="ListView1" runat="server" DataKeyField="email"  OnItemCommand="ListView1_ItemCommand">
             <ItemTemplate>
                  <!-- Box -->
                     <div class="box">
                        <div class="image">
                            <img src="image1/<%# Eval("picture") %>" alt="">
                        </div>
                        <div class="text">
                            <h4>Mr.<%# Eval("first_name") %> <%# Eval("last_name") %></h4>
                 
                            <p><span>Username :</span><%# Eval("userName") %></p>
                             <p><span>Email :</span><%# Eval("email") %></p>

                        </div>
                        <asp:Button runat="server" ID="btn" Text="Remove" CommandName="remove" CommandArgument='<%# Eval("email") %>' CausesValidation="false"/>
                     </div>

                     <!-- End Box -->
               
          
          
             </ItemTemplate>
         </asp:ListView>         
        <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [first_name], [last_name], [email], [userName], [picture] FROM [customer]"></asp:SqlDataSource>--%>
        
     </div>
 </div>

 <!-- End Remove User -->

       <!-- Start Create Employee -->
        <div class="user" style="margin: 0 0 10px 0;">
        <div class="container">
           <div class="info">
                <asp:DropDownList runat="server" ID="DropDownList1">
                    <asp:ListItem Value="asc">Start To End</asp:ListItem>
                    <asp:ListItem  Value="desc">End To Start</asp:ListItem>
                </asp:DropDownList>
               
               <h3>Find User By First Namee</h3>
               <div class="input_search">
                   <i class="fas fa-search"></i>
                    <asp:TextBox autocomplete="off" runat="server" ID="TextBox1" placeholder="Search"  ReadOnly="true" />
               </div>
           </div> 
           
            <h2>Remove Employee</h2>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource2" GridLines="None" AllowPaging="True" AllowSorting="True" CssClass="gridview" PageSize="5" >
                <Columns>
                    <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
                    <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
                    <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" SortExpression="email" />
<%--                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />--%>
                    <asp:BoundField DataField="userName" HeaderText="Username" SortExpression="userName" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="X"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
    
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [employee] WHERE [email] = @email" InsertCommand="INSERT INTO [employee] ([first_name], [last_name], [email], [password], [userName]) VALUES (@first_name, @last_name, @email, @password, @userName)" SelectCommand="SELECT * FROM [employee]" UpdateCommand="UPDATE [employee] SET [first_name] = @first_name, [last_name] = @last_name, [password] = @password, [userName] = @userName WHERE [email] = @email">
                <DeleteParameters>
                    <asp:Parameter Name="email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="first_name" Type="String" />
                    <asp:Parameter Name="last_name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="userName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="first_name" Type="String" />
                    <asp:Parameter Name="last_name" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="userName" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
    
        </div>
    </div>
    <!-- End Create Employee -->

</asp:Content>


