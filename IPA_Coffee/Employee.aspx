<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="IPA_Coffee.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>


        /* Start Emp Page */
        
            .hide_admin {
                display: none;
            }
            
            .hide_emp {
                display: block;
            }

            .show {
                display: none;
            }

        /* Start Emp Page */
        
      
/* Start Header*/

/* Start Main Page */
header .container .links > li:not(:last-child) {
  position: relative;
}

/* Start Hover On Element  */
header .container .links li:nth-of-type(6) a:hover::before  {
    left: -100%;
}
/* End Hover On Element  */
header .container .links > li:nth-child(6)::before {
  content: "";
  position: absolute;
  bottom: -25px;
  left: 0;
  width: 100%;
  height: 3px;
  background-color: var(--main-color);
}
header .container .links > .emp_page {
  position: relative;
}
header .container .links > li > .emp_page::before {
  content: "";
  position: absolute;
  bottom: -22px;
  left: 50%;
  transform: translateX(-50%);
  border: 7px solid transparent;
  border-bottom-color: var(--main-color);
}
header .container .links > li > .emp_page::after {
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



   /* Start Employee Accept Orders */
.serve-box1 {
  padding: 60px 0;
   background-image: url("image1/bgC2.jpg"); 
  background-repeat: no-repeat;
  background-size: cover;
  height: 100vh;
  height: fit-content;
  background-color: white;
}

.serve-box1 .container {
  padding: 0 0 20px;
background-color: #ffffff9e;
}

.serve-box1 .container h3 {
  text-align: center;
  padding: 20px;
  color: var(--main-color);
  margin-bottom: 20px;
  background-color: white;
  font-size: 24px;
  font-weight: bold;
      box-shadow: 0 2px 15px #d4d4d4;
}

.all-box,
[id="ContentPlaceHolder1_DataList1"] > tbody {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  row-gap: 15px;
  column-gap: 20px;
}

.serve-box1 .container .box {
  margin: 0 auto;
 /* width: 100%;*/
}
.serve-box1 .container .box table {
  border: 1px solid var(--main-color);
  color: var(--main-color);
  border-spacing: 0;
  width: 100%;
}
.serve-box1 .container .box th {
  padding: 20px;
  background-color: var(--main-color);
  color: white;
}
.serve-box1 .container .box td {
  background-color: white;
  padding: 20px;
  text-align: center;
}

.serve-box1 .container .box td textarea {
  width: 100%;
  height: 80px;
  resize: none;
  padding: 10px 20px;
  color: var(--main-color);
  resize: none;
  line-height: 1.5;
  word-spacing: 2px;
}
.serve-box1 .container .box td textarea:before {
  content: "Details: ";
}

.serve-box1 .container .box td [type="submit"] {
  padding: 7px 14px;
  color: white;
  background-color: var(--main-color);
  border: none;
  border-radius: 10px;
  width: 100px;
  font-weight: bold;
  border-radius: 10px;
}

.serve-box1 .container .box td .accept {
  background-image: linear-gradient(to left, var(--main-color), #daae68);
  
}
.serve-box1 .container .box td .remove {
  opacity: 1;
  background-color: #e91e63;
}
.serve-box1 .container .box td .remove:hover {
  background-color: #ff0057
}
.serve-box1 .container .box td .remove:active {
  opacity: .5;
}

.serve-box1 .container .box td .accept:active {
    opacity: .7;
}

.serve-box1 .container .box td .done {
        width: 100%;
            padding: 10px 14px;
    background-color: #28a745;
}


.serve-box1 .container .box td .done:active {
    opacity: .5;
}

.serve-box1 .container .box td .done:hover {
    background-color: #1fd448;
}

div:empty,
tr:empty,
textarea:empty ,
td:empty, {
  display: none;

}

.center {
display: flex;
    justify-content: space-around;
    background: white;
    padding: 20px;
}

tr {
    margin: 0 auto;
}

.room_number {
        font-weight: bold;
    
    font-size: 20px;
}

.open_table,
.open_txtarea {
    display: none;

}

/* Open button Done */

.close_done {
    display: none;
}


/* End Employee Accept Orders */

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Start Employee Accept Orders  -->

   

    <div class="serve-box1">
        <div class="container">
            <h3> Accept  Orders </h3>
            <div class="all-box">

      <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
             <!-- Box -->
            <div class="box">
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Quantity</th>
                    </tr>

                    <tr>
                       <td colspan="2">
                            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" CssClass="open_table" style="border:none; " >
                            <ItemTemplate>
                                <asp:Label style="display:inline-block; width: 50%; float:left" runat="server" ID="lbl_1"><%# Eval("drink") %></asp:Label>
                                <asp:Label style="display:inline-block; width: 50%; float:right; padding-left:50px" runat="server" ID="Label1"><%# Eval("quantity") %></asp:Label>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="select drink , quantity from ord_lines where ord_lines.id = @id">
                             <SelectParameters>
                                <asp:ControlParameter  ControlID="btn_accept" Name="id" PropertyName="CommandArgument" Type="Int32" />
                         </SelectParameters>

                        </asp:SqlDataSource>
                       </td>

                    </tr>

                    
                    <tr>
                        <td colspan="2">
                            <asp:Label runat="server" ID="lbl_txtarea" CssClass="open_txtarea" >
                                <textarea id="" cols="30" rows="10" class="txt_area " readonly="readonly"><%# Eval("details") %></textarea>
                            </asp:Label>

                        </td>
                    </tr>


                    <tr>
                        <td style="font-weight: bold; background-color: var(--main-color); color:white;
                        ">Room Number:</td>
                        <td class="room_number" ><%# Eval("room") %></td>
                    </tr>
                    
                    <tr>
                        <td colspan="2">Total: <%# Eval("total") %> SR</td>
                    </tr>

                    <tr runat="server" id="tr_3">
                          <td><asp:Button runat="server" ID="btn_accept" CommandName="accept" CommandArgument='<%# Eval("id") %>' OnCommand="btn_accept_Command" CssClass="accept" Text="Accept" /></td>                      
                        <td><asp:Button runat="server" ID="btn_Dimiss" CommandName="dimiss" CommandArgument='<%# Eval("id") %>' OnCommand="btn_accept_Command"  CssClass="remove" Text="Dimmiss"/></td>
                    </tr>
                   

                    <tr>
                    
                        <td colspan="2">
                            <asp:Button  runat="server" ID="btn_done" CommandName="done" CommandArgument='<%# Eval("id") %>' OnCommand="btn_accept_Command" CssClass="done close_done" Text="Done" />
                        </td>
                    </tr>
                    
                    
                   

                </table>
            </div>
            

        </ItemTemplate>
     </asp:DataList>


     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [details], [room], [total], [id] FROM [ord] WHERE ([status] Not Like 'Not Accept Your Order :(') and  ([status] Not Like 'Your Order Is Done :)') order by id desc">
         <SelectParameters>
             <asp:Parameter DefaultValue="dimiss" Name="status" Type="String" />
         </SelectParameters>
                </asp:SqlDataSource>
                       

            

            </div>
        </div>
    </div>
    
    <!-- End Employee  Accept Orders-->


    <script>
        
        //let btn_accept_1 = document.querySelectorAll("[type='submit']").forEach(event => {
        //    event.onclick = _ => {
        //        console.log("Hello")
        //    }
        //})


        // Text Area 

        let txt_area = document.querySelectorAll("textarea");
        txt_area.forEach(event => {
            if (event.value == "") {
                event.remove();
            }
        });


        // Accept Order 
        let openT = document.querySelectorAll('[id ^= "ContentPlaceHolder1_DataList1_DataList2"]'),
            btn_accept = document.querySelectorAll("[id ^= 'ContentPlaceHolder1_DataList1_btn_accept']"),
            btn_dimiss = document.querySelectorAll("[id ^= 'ContentPlaceHolder1_DataList1_btn_Dimiss']"),
            btn_done = document.querySelectorAll("[id ^= 'ContentPlaceHolder1_DataList1_btn_done']"),
            open_txtarea = document.querySelectorAll('[id ^= "ContentPlaceHolder1_DataList1_lbl_txtarea"]');

        
      

        btn_accept.forEach(event => {
            event.onclick = e => {
                e.preventDefault();
                console.log();
                var temp = event.parentElement.parentElement;
             
                //event.remove();
                //btn_dimiss[event.id.split("")[event.id.split("").length - 1]].remove();
                btn_done[event.id.slice(-1)].classList.remove("close_done");
               
                openT.forEach(events => {
                    if (event.id.slice(-1) == events.id.slice(-1)) {

                        events.classList.remove("open_table");
                    }

                })

                open_txtarea.forEach(show => {
                        
                    if (event.id.slice(-1)== show.id.slice(-1)) {

                        show.classList.remove("open_txtarea");
                        show.classList.add("Fiv");
                    }

                })
                
               
                temp.remove();
                
            }
        })

        
        
    </script>
</asp:Content>
