
<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="IPA_Coffee.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    
       /* Start Header*/

header .container .sub-links:last-of-type > li:nth-of-type(2) > span::before {
  content: "";
  position: absolute;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
  border: 9px solid transparent;
  border-right-color: var(--main-color);
}
header .container .sub-links:last-of-type > li:nth-of-type(2) > span::after {
  content: "";
  position: absolute;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
  border: 6px solid transparent;
  border-right-color: white;
}
    /* End Header*/


     /*Start Order */

.order {
  padding: 50px 0;
  background-image: url("image1/bgc2.jpg");
  background-repeat: no-repeat;
  background-size: cover;
    height: 116vh;
}

.order .container {
  padding: 0;
  background-color: #ffffffab;
  height: 660px;
  position: relative;
  border-radius: 10px;
}


.order .container  h3 {
  text-align: center;
  padding: 20px;
  color: var(--main-color);
  margin-bottom: 20px;
  background-color: white;
  font-size: 24px;
  font-weight: bold;
  border-radius: 10px 10px 0 0;
}


/* End Order */

        /* Start Grid */

        .gridview {
            border: 1px solid var(--main-color);
            position: absolute;
            text-align: center;
            height: 34%;
            width: 100%;
            background-color: white;
        }

        .gridview tr:nth-of-type(2){
            border-bottom: 5px solid var(--main-color);
        }

        @media (min-width: 767px) {
            .gridview {
                left: 5%;
                width: 90%;
            }
        }

            .gridview td {
                color: var(--main-color);
                padding: 40px
            }



            .gridview th {
                font-style: normal;
                color: white;
                background-color: var(--main-color);
                padding: 15px;
            }

        .gridview {
            /*display: none;*/
        }

            .gridview td [id^="ContentPlaceHolder1_GridView1_LinkButton1"] {
                font-size: 21px;
                font-style: normal;
                font-weight: bold;
                color: red;
                background-color: white;
                padding: 17px;
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
                margin: -3px 6px;
                width: 35px;
                height: 35px;
            }

            .gridview table td span {
                opacity: .6
            }

        /* End Grid */
       

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="order">
        <div class="container">
            <h2 class="main-title main-title2">Orders</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="None" AllowPaging="false"  PageSize="5" CssClass="gridview">
                <Columns>
                    <asp:BoundField DataField="room" HeaderText="Room" SortExpression="room" />
                    <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" />
                    <asp:BoundField DataField="id" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                </Columns>
            </asp:GridView>
            

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT top 5 [room], [total], [id], [status] FROM [ord] WHERE ([userName] = @userName) order by id desc">
                <SelectParameters>
                    <asp:SessionParameter Name="userName" SessionField="user" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            

         </div>
       </div>
</asp:Content>
