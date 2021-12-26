<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Check_Out.aspx.cs" Inherits="IPA_Coffee.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        
/* Start Check Out */

.check {
  padding: 50px 0;
  background-image: url("image1/coffeeshop4.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  height: fit-content;
}

.check .container {
  padding: 0;
  background-color: #ffffffab;
  height: 900px;
  position: relative;
  border-radius: 10px;
}

.check .container .check-out {
}

.check .container .check-out h3 {
  text-align: center;
  padding: 20px;
  margin-bottom: 20px;
  /*color: var(--main-color);
  background-color: white;*/
  font-size: 24px;
  font-weight: bold;
  border-radius: 10px 10px 0 0;
}

.check .container .check-out .show {
display: grid;
    grid-template-columns: repeat(3,minmax(10%,1fr));
}

.check .container .check-out .show .check-label label {
  display: block;
  margin: 40px 0;
  padding: 12px 0;
  font-size: 18px;
  text-align:center;
}
.check .container .check-out .show .check-label .txt_area {
  width: 186%;
  height: 22%;
  resize: none;
  padding: 10px 20px;
  font-size: 19px;
  line-height: 1.8;
  word-spacing: 1px;
  color: var(--main-color);
  margin-left: 15%;
  margin-top: 60px;
}

.check .container .check-out .show .check-label .txt_area:focus {
    outline: none;
}

.check .container .check-out .show .check-input input {
  display: block;
  margin: 40px 0;
  padding: 10px 24px;
  text-align: center;
  border-radius: 10px;
  border: none;
  line-height: 1;
  font-size: 18px;
  color: var(--main-color);
  width: 100%;
  text-align: center;
}

.check .container .check-out .show .check-input input:focus {
  outline: none;
}

.check .container .check-out .show .grid-view {
}

/* Start Bill */


        /* Start Pay */

        .info-pay {
               position: absolute;
            bottom: 80px;
            left: 20px;

            height: 133px;
            margin: -61px 0px 0px auto;
            border-radius: 5px 0 0 0;
            background-color: #fff;
            border-radius: 10px 10px;
        }

        @media (min-width: 900px) {
            .info-pay {
                position: absolute;
                right: 20px;
                bottom: 20px;
                width: 180px;
                height: 216px;
                /*margin: -61px 0px 0px auto;*/
                border-radius: 5px 0 0 0;
                background-color: #fff;
                border-radius: 10px;
                font-size: 14px;
            }
        }

        @media (max-width: 700px) {
            .info-pay {
                    width: 287px;
                   height: 229px;
                    position: absolute;
                    bottom: 18px;
                    left: 20px;
            }
        }

       .check .container .check-out .show .info-pay h3 {
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
           background-position: top left;
        }
        .info-pay [type="submit"]:active {
          /*  background-position: top right;
            color: var(--main-color);*/
          
          box-shadow: 0 2px 15px var(--main-color);
            
        }

         .info-pay [type="submit"]:focus {
             border: 1px solid #333;
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
 

/* End Bill */

        /* Start Grid */

        .gridview {
            border: 1px solid var(--main-color);
            text-align: center;
            height: 34%;
            background-color: white;
            margin: 40px auto;
            /*width: 70%;*/
           
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
                width: 35px;
                height: 35px;
            }

            .gridview table td span {
                opacity: .6
            }

              /* Start Grid */
/* End Check Out */


/* Start Warning */

.close {
         position: absolute;
    height: 40px;
    width: 40px;
    background-color: var(--main-color);
    border-radius: 50%;
    right: -15px;
    top: -15px;
    color: white;
    font-weight: bold;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
    font-style: normal;
    padding-left: 2px;
    cursor: pointer;

}

/* End Warning */

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start Check Out -->

    <div class="check">
        <div class="container">
            <div class="check-out">
                <h3 class="main-title2">Check Out</h3>
                <div class="show">
                    <div class="check-label">
                        <label for="">First Name :</label>
                        <label for="">Last Name :</label>
                        <label for="">Email :</label>
                        <label for="">Room Number :</label>
                        <asp:TextBox runat="server" ID="txt_textarea" AutoPostBack="false" CssClass="txt_area" TextMode="MultiLine"  placeholder="Details:                   Example: Tea: No Sugar 
                            Or
                            Greeting: Like >  Hi. Thank You ^_^ "  />
                    </div>
                    <div class="check-input">
                        <asp:TextBox runat="server"  ID="txt_first_name"  name="first_name" ReadOnly="true"/>
                        <asp:TextBox runat="server" ID="txt_last_name" name="last_name" ReadOnly="true" />
                        <asp:TextBox runat="server" ID="txt_email" name="email" ReadOnly="true" />
                        <asp:TextBox runat="server" ID="txt_number" placeholder="Room Number" min="0" max="500"  autofocus TextMode="Number"  maxlength="3"/>
                    </div>
                    
                    <div class="grid-view">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" AllowPaging="True" PageSize="2" CssClass="gridview" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:TemplateField HeaderText="Pictures" SortExpression="cart_img">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cart_img") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <img src="image1/<%# Eval("cart_img") %>"  style="width: 140px; height: 96px; margin-top: 6px"/>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="cart_name" HeaderText="Your Orders" SortExpression="cart_name" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [cart_img], [cart_name] FROM [cart] WHERE ([userName] = @userName)">
                            <SelectParameters>
                                <asp:SessionParameter Name="userName" SessionField="user" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>   
                    
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

                </div>
            </div>
        </div>
<script>

    let txt_number = document.querySelector('[type="number"]'),
        btn = document.querySelector(".info-pay [type='submit']"),
        overley = document.createElement("div"),
        warning = document.createElement("div"),
        x = document.createElement("i"),
        p = document.createElement("p"),
        span = document.createElement("span");

    

    btn.onclick = e => {
        if (txt_number.value == '' || txt_number == null || txt_number == undefined || txt_number.value > 500 || txt_number.value <= 0 || txt_number.value.length > 3) {
            e.preventDefault();
            
            document.body.appendChild(overley);
            document.body.appendChild(warning);

            overley.style = "background-color: #00000038; z-index: 1000; position: fixed; top:0; left: 0; height: 100%; width: 100%";
            warning.style = "background-color: white; z-index: 1001;  position: fixed; top: 50%; left: 50%; height: 300px; width: 300px; transform: translate(-50%, -50%); border-radius: 10px";

            warning.appendChild(x);
            x.className = "far fa-times-circle";
            x.style = "font-size: 95px; position: absolute; left: 50%; top: 50%; transform: translate(-50%, -109%); color: red"

            warning.appendChild(p);
            //p.textContent = "Room Number Is Empty";
            p.style = "color: var(--main-color); font-weight: bold;  position: absolute; bottom: 26%; display: block; width: 100%; text-align: center";

            if (txt_number.value > 500 || txt_number.value < 0 || txt_number.value.length > 3 || txt_number.value == 0) {
                p.innerHTML = "Room Number Must Be: <br/><br/> Between 1 - 500";
            }
            else if (txt_number.value == '' || txt_number == null || txt_number == undefined) {
                p.innerHTML = "Room Number Is: <br/><br/> Empty";
            } else if (typeof Number.parseInt(txt_number.value) == "number") {
                p.innerHTML = "Room Number Must Be: <br/><br/> Number";
            } else {
                p.innerHTML = "Room Number Input Is: <br/> <br/> Mistake";
            }

            warning.insertBefore(span, warning.firstElementChild);

            span.className = "close";
            span.textContent = "X";            
            
        }

        span.onclick = _ => {
            span.parentElement.remove();
            overley.remove();
        }

        document.addEventListener("click", (e) => {
            console.log(e.target);

            if (e.target != btn && (e.target != warning)) {
                overley.remove();
                warning.remove();
            }

        });
    }
</script>
</asp:Content>

