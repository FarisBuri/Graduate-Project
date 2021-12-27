<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="IPA_Coffee.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
/* Start Header*/

header .container .sub-links:last-of-type > li:nth-of-type(1) > span::before {
  content: "";
  position: absolute;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
  border: 9px solid transparent;
  border-right-color: var(--main-color);
}
header .container .sub-links:last-of-type > li:nth-of-type(1) > span::after {
  content: "";
  position: absolute;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
  border: 6px solid transparent;
  border-right-color: white;
}
    /* End Header*/


        /* Start Add To Cart */

        .cart {
            padding: 40px 0;
            background-image: url("image1/bgC1.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            min-height: 100vh;
        }

            .cart .container {
                width: 100%;
            }

        @media (min-width: 992px) {
            .cart .container {
                width: 90%;
            }
        }

        .cart-table {
          border-radius: 10px;
    /* min-height: 720px; */
    background-color: #ffffff90;
    position: relative;
    overflow: auto;
    padding: 0px 0 250px;
    height: fit-content;

        }

        @media(min-width:767px) {
            .cart-table {
                /*min-height: 594px;*/
            }
        }

        .cart-table h2 {
            text-align: center;
            padding: 20px;
            background-color: white;
            color: var(--main-color);
        }

            .cart-table h2 + div {
                padding: 20px;
                    padding-right: 125px;
            }

        .cart-table [id="ContentPlaceHolder1_GridView1" ] {
            margin: 0 auto;
        }
        .sr:before {
                right: -17px;
    bottom: 0px;
        }

        /* Start Pay */

        .info-pay {
               position: absolute;
            bottom: -117px;
            left: 20px;

            height: 133px;
            margin: -61px 0px 0px auto;
            border-radius: 5px 0 0 0;
            background-color: #fff;
            border-radius: 0 0 10px 10px;
        }

        @media (min-width: 900px) {
            .info-pay {
                position: absolute;
                right: 20px;
                bottom: 10px;
                width: 180px;
                height: 216px;
                /*margin: -61px 0px 0px auto;*/
                border-radius: 5px 0 0 0;
                background-color: #fff;
                border-radius: 0 0 10px 10px;
                font-size: 14px;
            }
        }

        @media (max-width: 700px) {
            .info-pay {
                    width: 287px;
                    height: 229px;
                    position: absolute;
                    bottom: -96px;
                    left: 20px;
            }
        }

        .info-pay h3 {
            color: white;
            background-color: var(--main-color);
            text-align: center;
            font-size: 18px;
            padding: 4px 0;
            margin-bottom: 20px;
        }

        [id="ContentPlaceHolder1_lbl_total"] {
            display: inline-block;
            text-align: center;
        }

        .info-pay [type="submit"] {
            position: absolute;
            right: -8%;
            transform: translateX(-50%);
            bottom: 6px;
            display: block;
            background-image: linear-gradient(to right, var(--main-color) 50%, white 50%);
            background-position: top left;
            background-size: 200% 100%;
            border: none;
            border: 2px solid var(--main-color);
            padding: 7px 0;
            width: 100px;
            margin-top: 10px;
            border-radius: 6px;
            font-weight: bold;
            transition: var(--main-transition);
            color: white;
        }
        .info-pay [type="submit"]:active {
          /*  color: var(--main-color);
           background-position: top right;*/
          box-shadow: 0 2px 15px var(--main-color);
            
        }
       

        .bill:not([type="submit"]) {
            display: inline-block;
            margin: 0 auto;
            text-align: center;
            margin: 14px 0 0 0;
            padding-left: 8px;
        }

        @media (min-width: 767px) {
            .bill:not([type="submit"]) {
                margin: 0px 0 0 0;
                    margin-bottom: 14px;

                font-size: 14px;
            }
        }
         .act:active {
        }

        hr {
        }
        .info-pay span {
              padding: 11px 0 0 12px;
              position: relative;
        }


        .info-pay [id ^="ContentPlaceHolder1_lbl"]:nth-last-of-type(even):after {
            content: "";
            display: block;
            width: 85%;
            height: 2px;
            position: absolute;
            left: 0;
            bottom: -10px;
            background-color: var(--main-color);

        }
         @media (max-width: 700px) {
            .width {
                width: 50%;
            }
        }

        /* End Pay */

        /* Start Grid */

        .gridview {
            border: 1px solid var(--main-color);
            position: absolute;
            /* top: 30%; */
            /* left: 20px; */
            text-align: center;
            height: 34%;
            /* width: 95%; */
            width: 70%;
            background-color: white;
        }

            .gridview td {
                color: var(--main-color);
                padding: 10px
            }

            .gridview th {
                font-style: normal;
                color: white;
                background-color: var(--main-color);
                padding: 15px;
            }

        .gridview {
            position: relative;
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
                /* width: 48px; */
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



    <!-- Start Add To Cart -->

    <div class="cart">
        <div class="container">
            <div class="cart-table">
                <h2 class="main-title main-title2">Shopping Bag</h2>
                <!-- Start Grid View -->
                <asp:GridView ID="GridView1" runat="server" CssClass="gridview" GridLines="None" AutoGenerateColumns="False" DataKeyNames="cart_name" DataSourceID="SqlDataSource1" OnDataBinding="GridView1_DataBinding" AllowPaging="True" PageSize="3">
                    <Columns>
                        <asp:TemplateField SortExpression="cart_img">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cart_img") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <img src="image1/<%# Eval("cart_img") %>" style="width: 140px; height: 96px; margin-top: 6px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="cart_name" HeaderText="Name" ReadOnly="True" SortExpression="cart_name" />
                        <asp:BoundField DataField="cart_category" HeaderText="Type" SortExpression="cart_category" />
                        <asp:TemplateField HeaderText="Price" SortExpression="cart_price">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("cart_price") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" CssClass="sr" Text='<%# Bind("cart_price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="quantity" HeaderText="Qunatity" SortExpression="quantity" />
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="X"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--<asp:BoundField DataField="cart_details" HeaderText="cart_details" SortExpression="cart_details" />--%>
                        <%--<asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />--%>
                        <asp:CommandField />
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [cart] WHERE [cart_name] = @cart_name" InsertCommand="INSERT INTO [cart] ([cart_img], [cart_category], [cart_price], [cart_details], [cart_name], [quantity], [userName]) VALUES (@cart_img, @cart_category, @cart_price, @cart_details, @cart_name, @quantity, @userName)" SelectCommand="SELECT * FROM [cart] WHERE ([userName] = @userName)" UpdateCommand="UPDATE [cart] SET [cart_img] = @cart_img, [cart_category] = @cart_category, [cart_price] = @cart_price, [cart_details] = @cart_details, [quantity] = @quantity, [userName] = @userName WHERE [cart_name] = @cart_name">
                    <DeleteParameters>
                        <asp:Parameter Name="cart_name" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cart_img" Type="String" />
                        <asp:Parameter Name="cart_category" Type="String" />
                        <asp:Parameter Name="cart_price" Type="Double" />
                        <asp:Parameter Name="quantity" Type="Double" />
                        <%--<asp:Parameter Name="cart_details" Type="String" />--%>
                        <asp:Parameter Name="cart_name" Type="String" />
                        <%--<asp:Parameter Name="userName" Type="String" />--%>
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="userName" SessionField="user" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="cart_img" Type="String" />
                        <asp:Parameter Name="cart_category" Type="String" />
                        <asp:Parameter Name="cart_price" Type="Double" />
                        <asp:Parameter Name="quantity" Type="Double" />
                        <%--<asp:Parameter Name="cart_details" Type="String" />--%>
                        <%--<asp:Parameter Name="userName" Type="String" />--%>
                        <asp:Parameter Name="cart_name" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                <div class="info-pay">
                    <h3>Bill</h3>
                    <asp:Label runat="server" ID="lbl_drived" Text="Delivery : " Visible="false" ></asp:Label>
                    <asp:Label runat="server" CssClass="bill width" ID="lbl_drived_1" Text="1.00 SR" Visible="false"></asp:Label>
                    <asp:Label runat="server" ID="lbl_price" Text="Price : " Visible="false"></asp:Label>
                    <asp:Label runat="server" CssClass="bill width" ID="lbl_price_1" Text="0.00 SR" Visible="false"></asp:Label>
                    
                    <asp:Label runat="server" CssClass="bill" ID="lbl_total2" Text="Total Price : "></asp:Label>
                    <asp:Label runat="server" CssClass="bill width" ID="lbl_total" Text="0 SR"></asp:Label>
                    
                    
                    <asp:Button runat="server" CssClass="bill act" ID="send" Text="Check Out" OnClick="send_Click"  />

                </div>
                <!-- End Grid View -->

            </div>
        </div>
    </div>
   

    <!-- End Add To Cart-->
</asp:Content>
