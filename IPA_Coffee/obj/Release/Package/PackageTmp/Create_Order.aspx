 <%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Create_Order.aspx.cs" Inherits="IPA_Coffee.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
header .container .links li:nth-of-type(5) a:hover::before  {
    left: -100%;
}
/* End Hover On Element  */
header .container .links > li:nth-child(5)::before {
  content: "";
  position: absolute;
  bottom: -25px;
  left: 0;
  width: 100%;
  height: 3px;
  background-color: var(--main-color);
}
header .container .links > .create_ord {
  position: relative;
}
header .container .links > li > .create_ord::before {
  content: "";
  position: absolute;
  bottom: -22px;
  left: 50%;
  transform: translateX(-50%);
  border: 7px solid #fff;
  border-bottom-color: var(--main-color);
}
header .container .links > li > .create_ord::after {
  content: "";
  position: absolute;
  bottom: -25px;
  left: 50%;
  transform: translateX(-50%);
  border: 6px solid transparent;
  border-bottom-color: #ffffff;
}

/* Mega  */
/* End Header*/

        
        /* Start Sign */

        section,
        .remove {
          padding-top: var(--padding);
          padding-bottom: var(--padding);
      
    
        }
       
        
        @media (min-width: 767px) {
          section,
          .remove {
            padding: 30px 0 0 15px;
            background-image: url("image1/O1.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
            height: 100vh;
          }
           .remove {
                padding: 70px 0 0 15px;
                overflow: hidden;
                    height: fit-content;
                    

           }
          .remove {
              background-image: url("image1/backgroundCoffee.jpg");
          }
          
        }

        section .sign,
        .remove .sign {
          padding: 15px;
          background-color: white;

          border-radius: 10px;
          padding-top: 125px;
          position: relative;
          overflow: auto;
          height: 400px;
        }
        section .sign {
                height: 590px;
        }
           .remove .sign {
                   height: 525px;
           }

        

        @media (min-width: 767px) {
          section .sign {
            padding: 39px;
            background-color: white;
            width: 574px;
            height: 490px;
            display: flex;
            flex-wrap: wrap;
            overflow: auto;
            
            justify-content: center;
            /* flex-basis: 100px; */
            border-radius: 10px;
            padding-top: 125px;
            position: absolute;
            left: 20px;
          }
          .remove .sign {
                     padding: 39px;
            background-color: white;
            min-width: 70%;
            max-width: 90%;
            height: 710px;
            display: flex;
            flex-wrap: wrap;
            overflow: auto;
            justify-content: center;
            /* flex-basis: 100px; */
            border-radius: 10px;
            padding-top: 125px;    
              margin: 0 auto;
          }
        }
        section h3,
        .remove h3{
          display: block;
          color: var(--main-color);
          transform: translateY(-81px);
          position: absolute;
          text-align: center;
          font-size: 35px;
          width: 85%;
        }
        

        @media (max-width: 768px) {
          section h3,
          .remove h3{
            transform: translateY(-81px);
            position: absolute;
            text-align: center;
          }
          section h3 {
            left: 60px;
        }
        .remove h3 {
            left: 40px;
            line-height: 82px;
        }
        }

        section .sign h4:first-of-type,
        section .sign h4:last-of-type,
        .remove .sign h4:first-of-type,
        .remove .sign h4:last-of-type,{
         
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
            section .sign h4:last-of-type,
            .remove .sign h4:first-of-type,
            .remove .sign h4:last-of-type {
                left: 50%;
                transform: translateX(-50%);
                border-radius: 0 0 5px 5px
            }
        }

        section .sign input,
        .remove.sign input {
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
          section .sign input,
          .remove.sign input {
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
            overflow: auto;
          }
          .fully {
              width: 92%;
              margin-top: -10px !important;
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

        section .sign input:last-child:focus-visible {
            outline: 0;
            border: 0;
            border: 1px solid #333;
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

        /* Start Error*/
          



        [id="ContentPlaceHolder1_lbl_order_name"],
        [id="ContentPlaceHolder1_lbl_order_price"] {
            position: absolute;
                font-weight: bold;
                font-size: 9px;
                background-color: var(--main-color);
                color: white;
                padding: 5px 8px;
                top: 10px;
                left: 0px;
               display: block;
               width: 100%;
        }

        @media (min-width: 767px) {
             [id="ContentPlaceHolder1_lbl_order_name"],
             [id="ContentPlaceHolder1_lbl_order_price"] {
               
                display: inline-block;
                width: fit-content;
                font-size: 14px;
              
                border-radius: 0 10px 10px 0;  
               
        }
        }
        
        u {
            color: #f7b31c;
        }
            
        /* End Error*/

        
        /* End Sign */

        /* Start GridView */
        .gridview {
                border: 1px solid var(--main-color);
                position: absolute;
                top: 30%;
                left: 20px;
                text-align: center;
                height: 60%;
                width: 95%;
        }
        
         .gridview td {
             color: var(--main-color);
            
         }
         .gridview td:last-child {
             display: flex;
             padding: 10px;
             justify-content: space-evenly;
         }
         .gridview td input {
              border: none;
               outline: none;
              text-align: center;
            /* border-bottom: 1px solid var(--main-color); */
            color: var(--main-color);
            font-weight: bold;
            line-height: 1.3;
           
            
          }
         .gridview td input:active,
         .gridview td input:focus {
             border: none;
             outline: none;
             border-bottom: 1px solid var(--main-color);
         }
        .gridview td [id^="ContentPlaceHolder1_GridView1_LinkButton"] {
            color: white;
                background-image: linear-gradient(to left, var(--main-color) , #daae68);
            padding: 4px 8px;
            font-style: normal;
            border-radius: 5px;
            position: relative;
            top: 30px;
        }
        .gridview td a:first-of-type:not(.gridview table td a) {
           background-image: linear-gradient(to left, var(--main-color), var(--main-color));
           position: relative;
            top: 30px;
        }
        .gridview td a {
            color: white;
               
            opacity: 1;
        }
          .gridview td a:not(.gridview td [id^="ContentPlaceHolder1_GridView1_LinkButton"]) {
                opacity: .7;
        }
        .gridview td a:active,
        .gridview td a:hover {
                opacity: 0.79;
        }
        .gridview table td span, 
        .gridview table td a {
                color: white;
                display: inline-block;
                background-color: var(--main-color);
                padding: 3px 6px;
                border-radius: 50%;
                text-align: center;
                line-height: 28px;
                /* width: 48px; */
                margin: -3px 6px;
                width: 35px;
                height: 35px;
        }
        [colspan ="6"]{

        }

        .gridview th {
            font-style: normal;
            color: white;
            background-color: var(--main-color);
            padding: 10px;

        }
        .gridview th a {

            }
        .gridview th a:hover {

            }
        
        @media(min-width: 767px) {
            .gridview {
                position: absolute;
                top: 19%;

            }
        }
        /* End Grid View */


        /* Start DropDownList */
         option {
           text-align: left;
           color: var(--main-color);
           font-size: 15px;
           
        }
        select {
                display: block;
                width: 283px;
                height: 50px;
                position: relative;
                margin: 0 auto;
                /* left: 30%; */
                /* right: 0; */
                /* right: -10px; */
                /* bottom: 10px; */
                /* margin-right: 47px; */
                border: none;
                border-radius: 3px;
                border-bottom: 1px solid var(--main-color);
                text-align: center;
                color: rgba( 0 0 0 / 69%);
                font-size: 18px;
                opacity: 1;
                
        }
      option:first-child {
            text-align: center;
            font-weight: bold;
            color: var(--main-color);
        }
        
       
        
        option:hover,
        option:active,
        option:visited,
        option:checked ,
        option::selection {
            background-color: var(--main-color);
            color: white;
            text-align: center;
            font-size: 18px;
                opacity: 1;
                color: white;

        }
        @media (min-width: 767px) {
             select {
                   display: inline-block;
                width: 208px;
                height: 50px;
                position: relative;
                right: 13px;
                bottom: 10px;
                margin-right: 7px;
                border: none;
                border-radius: 3px;
                border-bottom: 1px solid var(--main-color);
                text-align: center;
                color: rgba( 0 0 0 / 69%);
                
            }

        }
       
        select:active,
        select:focus,
        select:checked,
        select:visited {
            outline: none;
            border: none;
                border-radius: 3px;
                border-bottom: 1px solid var(--main-color);

                text-align: center;
                font-size: 18px;
                opacity: 1;
                color: black;
        }

        option:hover {
        }
        

        #lbl_file {
            display: block;
            margin-top: 7px;
            width: 283px;
            height: 33px;
            margin-right: 30px;
            border-bottom: 1px solid var(--main-color);
            border-radius: 3px;
            text-align: center;
            font-size: 15px;
            color: #666;
            margin: 7px auto 0;
            color: black;
    
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        }

        .lbl_active {
                color: black;
                font-size: 17px;
                font-style: normal;
        }

        @media(min-width: 767px) {
             #lbl_file {
            display: inline-block;
            margin-top: 7px;
            width: 208px;
            height: 33px;
            margin-right: 24px;
            border-bottom: 1px solid var(--main-color);
            border-radius: 3px;
            text-align: center;
            font-size: 15px;
            color: #666;
        }
        }

        /* End DropDownList */

        .txt_ddl {
            color: red;
        }
        .done {
                position: absolute;
                bottom: 20px;
                background-color: #4caf50;
                color: white;
                font-size: 22px;
                padding: 10px 22px;
                border-radius: 0 8px 8px 0;
                left: 0;
                opacity: 0;
                transition: 1s;
        }
        .open_done {
            opacity: 1;
        }



   </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Start Create Order -->

        <section>
            <div class="sign">
                
               <asp:Label runat="server" ID="lbl_order_price" Visible="false">Price : Isn't Number So It Will Be 0 <a href="#here"><u>You Can Cahnge It Late</u></a> </asp:Label>
                <asp:Label runat="server" ID="lbl_order_name" Visible="false">Order Name Is Already Exist || You didn't select from Category</asp:Label>

                <h3>Create Drink</h3>

                <!-- Image-->
                <%--<asp:TextBox runat="server" ID="order_img"  autocomplete="off" placeholder="Image Link" autofocus="autofocus" />--%>
                <asp:FileUpload ID="file_upload" runat="server" style="display:none" />
                 <label id="lbl_file" for="ContentPlaceHolder1_file_upload">Upload Image</label>
                <asp:TextBox ID="txt_file" CssClass="txt_file" runat="server" Text="Testing" style="display:none"></asp:TextBox>

                <!-- Order Name -->
                <asp:TextBox runat="server" autocomplete="off" ID="order_name1" placeholder="Order Name"/>
               
                <!-- Order Category-->
                <%--<asp:TextBox runat="server" autocomplete="off"   ID="order_category" placeholder="Category"/>--%>
                <asp:DropDownList ID="ddl" runat="server">
                     <asp:ListItem Selected="True" CssClass="list-header">Category</asp:ListItem>
                    <asp:ListItem CssClass="list">Hot</asp:ListItem>
                    <asp:ListItem CssClass="list">Cold</asp:ListItem>
                    <asp:ListItem CssClass="list">Snacks</asp:ListItem>
                </asp:DropDownList>
                

                <!-- Order Price -->
                <asp:TextBox runat="server"  autocomplete="off"  ID="order_price" placeholder="Price" />
                
                
                <!-- Order Details -->
                <asp:TextBox runat="server" ID="order_details"  placeholder="Details" autocomplete="off" CssClass="fully"  />
                
               
                <asp:Label runat="server" ID="lbl_done" CssClass="done" >Done 👍</asp:Label>
                <asp:Button runat="server" ID="submit" Text="Submit" OnClick="submit_Click" />
            </div>
        </section>

    <!-- End Create Order -->

    <!-- Start Remove Order-->
        <div class="remove" id="here">
            <div class="sign">
                <h3>Modify Drink</h3>
                <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="order_name" DataSourceID="SqlDataSource1" PageSize="4" GridLines="None" CssClass="gridview">
                    <Columns>
                        <asp:TemplateField HeaderText="Image" SortExpression="order_img">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" class="txt_ddl" runat="server" Text='<%# Bind("order_img") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                              <img src='image1/<%# Eval("order_img") %>' style="width:50%; height: 96px; margin-top:6px"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="order_name" HeaderText="Name" ReadOnly="True" SortExpression="order_name" />
                        <asp:BoundField DataField="order_price" HeaderText="Price" SortExpression="order_price" />
                        <asp:TemplateField HeaderText="Category" SortExpression="order_category">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" CssClass="txt_ddl" runat="server" Text='<%# Bind("order_category") %>'></asp:TextBox>
                               
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("order_category") %>'></asp:Label>
                                
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="order_details" HeaderText="Details" SortExpression="order_details" />
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" style="top:0"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cacncel"  style="top:0" ></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Modify"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Remove"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [orders] WHERE [order_name] = @order_name" InsertCommand="INSERT INTO [orders] ([order_img], [order_category], [order_price], [order_details], [order_name]) VALUES (@order_img, @order_category, @order_price, @order_details, @order_name)" SelectCommand="SELECT * FROM [orders]" UpdateCommand="UPDATE [orders] SET [order_img] = @order_img, [order_category] = @order_category, [order_price] = @order_price, [order_details] = @order_details WHERE [order_name] = @order_name">
                    <DeleteParameters>
                        <asp:Parameter Name="order_name" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="order_img" Type="String" />
                        <asp:Parameter Name="order_category" Type="String" />
                        <asp:Parameter Name="order_price" Type="Double" />
                        <asp:Parameter Name="order_details" Type="String" />
                        <asp:Parameter Name="order_name" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="order_img" Type="String" />
                        <asp:Parameter Name="order_category" Type="String" />
                        <asp:Parameter Name="order_price" Type="Double" />
                        <asp:Parameter Name="order_details" Type="String" />
                        <asp:Parameter Name="order_name" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    <!-- End Remove Order-->
  <script>

      //Change File Lable To Name Lable

      let up_file = document.querySelector("#ContentPlaceHolder1_file_upload"),
          lb_file = document.querySelector("#lbl_file"),
          tx_file = document.querySelector(".txt_file");

      up_file.onchange = _ => {
          if (up_file.files[0] != undefined) {
              //lb_file.classList.add("lbl_active")
              lb_file.style.color = "black";
              lb_file.style.fontSize = "17px";
              lb_file.style.fontStyle = "normal";


              lb_file.textContent = up_file.files[0].name;
              tx_file.value = lb_file.textContent;
          } else {
              lb_file.style.color = "#777";
              lb_file.style.fontSize = "15px";
              lb_file.style.fontStyle = "italic"
              lb_file.textContent = "Upload Image";
              tx_file.value = "";
          }
      }


         let txt = document.querySelector(".txt_ddl"),
              mySelect = document.querySelector(".txt_ddl select"),
              opt_hot = document.querySelectorAll(".txt_ddl select option")[1],
             opt_cold = document.querySelectorAll(".txt_ddl select option")[2],
            opt_stuff = document.querySelectorAll(".txt_ddl select option")[3];


      function find(events) {
          console.log(events);
      } 

  </script>

</asp:Content>
