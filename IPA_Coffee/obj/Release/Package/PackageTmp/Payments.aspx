<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="IPA_Coffee.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
/* Start Payment */

.payment {
  padding: 50px 0;
  background-image: url("image1/coffeeshop4.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  height: fit-content;
      padding: 40px 0 130px 0;
}

.payment .container {
  padding: 0;
  background-color: #ffffffab;
  height: 1188px;
  position: relative;
  border-radius: 10px;
  overflow: hidden;

}

.payment .container h3 {
  text-align: center;
  padding: 20px;
  /*color: var(--main-color);*/
  margin-bottom: 20px;
  background-color: white;
  font-size: 24px;
  font-weight: bold;
  border-radius: 10px 10px 0 0;
}

.payment .container .payment-box .payment-visa {
}
.payment .container .payment-box .payment-visa .visa-image {
  height: 100%;
  width: 100%;
  padding: 10px;
  background-color: #eee;
}
.payment .container .payment-box .payment-visa .visa-image img {
  display: block;
  margin: 20px auto;
  width: 90%;
  height: 200px;
}
.payment .container .payment-box .payment-visa .visa-image .total {
  text-align: center;
  margin: 10px 0;
}
.payment .container .payment-box .payment-visa .visa-image input,
.payment .container .payment-box .payment-cash  .inp {
  display: inline-block;
  width: fit-content;
}
.payment .container .payment-box .payment-visa .visa-image label,
.payment .container .payment-box .payment-cash label {
  display: inline-block;
  color: black;
  font-weight: bold;
}

.payment .container .payment-box .payment-visa .payment-input {
  position: relative;
  width: 400px;
  margin: 15px auto;
}
.payment .container .payment-box .payment-visa label {
  color: #777;
  margin-bottom: 5px;

  display: block;
}
.payment .container .payment-box .payment-visa input {
  display: block;
  padding: 8px;
  padding-right: 40px;
  width: 100%;
  outline: none;
  border: 1px solid black;
}
.payment .container .payment-box .payment-visa input:active,
.payment .container .payment-box .payment-visa input:focus {
    border: 1px solid black;
    outline: none
}
.payment .container .payment-box .payment-visa i {
  position: absolute;
  top: calc(25px + 5px);
  right: 10px;
  font-size: 20px;
}

.payment .container .payment-box .payment-visa .less {
  display: flex;
  justify-content: space-between;
  width: 400px;
  margin: 15px auto;
}

.payment .container .payment-box .payment-visa .less .payment-input {
  width: 48%;
}

/* Cash */

.payment .container .payment-box .payment-cash {
}
.payment .container .payment-box .payment-cash .payment-img {
  height: 100%;
  background-color: #eee;
  padding: 10px;
  text-align: center;
}

.payment .container .payment-box .payment-cash .payment-img .cash-image {
  width: 90%;
  height: 200px;
  margin: 20px auto;
  background-color: white;
  display: flex;
  align-items: center;
  justify-content: center;
}

.payment .container .payment-box .payment-cash .payment-img h2 {
  color: #54d254;
  font-size: 60px;
}
.payment .container .payment-box .payment-cash .payment-img i {
  font-size: 45px;
  margin-left: 20px;
  color: green;
}

@media (min-width: 992px) {

    .payment .container {
        height: 683px;
    }

    .payment .container .payment-box {
        display: flex;
        justify-content: space-evenly;
    }
    .payment .container .payment-box .payment-visa .visa-image, 
    .payment .container .payment-box .payment-cash .payment-img {
        height:326px;
        width: 500px;
    }
     .payment .container .payment-box .payment-cash {
         margin-left: 10px;
     }
}

/* End Payment */


/* Start Bill */
/* Start Bill */


        /* Start Pay */

        .info-pay {
               position: absolute;
            bottom: 20px;
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
                bottom: 40px;
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

       .payment .container .payment-box .payment-cash .info-pay h3 {
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
            
            /*background-position: top right;
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

         /* JS */

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

        /* End Pay */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Start Payment -->
    
    <div class="payment">
        <div class="container">
            <h3 class="main-title main-title2">Payment</h3>
             <div class="payment-box">
                <div class="payment-visa">
                    
                        <div class="visa-image">
                            <img src="image1/card-visa.png">
                            <div class="total">
                              <%--  <input type="radio" name="payment" id="one">
                                <label for="one">Pay 190 SR With Credit Card</label>--%>
                                <asp:RadioButton  CssClass="inp" runat="server" ID="rad_visa" name="payment" AutoPostBack="true" GroupName="payment" />
                            </div>
                        </div>
                        <div class="payment-input">
                            <label for="">Cardholder's Name</label>
                            <input type="text"  readonly>
                            <i class="far fa-user"></i>
                        </div>
                        <div class="payment-input">
                            <label for="">Card Number</label>
                            <input type="text" readonly>
                            <i class="far fa-address-card"></i>
                        </div>
                        <div class="less">
                            <div class="payment-input">
                                <label for="">Valid thru</label>
                                <input type="text" placeholder="MM / YY" readonly/>
                                <i class="far fa-calendar"></i>
                                
                            </div> 
                            <div class="payment-input">
                                <label for="">CVV / CVC*</label>
                                <input type="text" readonly>
                                <i class="fas fa-lock"></i>
                            </div>
                        </div>
                    </div>
                    <div class="payment-cash">
                        <div class="payment-img">
                            <div class="cash-image">
                                <h2>CASH</h2>
                                <i class="fas fa-money-bill-wave"></i>
                            </div>
                          <%--  <input type="radio" name="payment" id="two" checked>
                            <label for="two">Pay 190 SR With CASH</label>--%>
                            <asp:RadioButton CssClass="inp" runat="server" ID="rad_cash" name="payment" Checked="true" AutoPostBack="true" GroupName="payment" />
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
       </div>


    <!-- End Payment -->

    <script>
        let overley = document.createElement("div"),
            warning = document.createElement("div"),
            x = document.createElement("i"),
            p = document.createElement("p"),
            span = document.createElement("span"),
            rad_visa = document.querySelectorAll('[type="radio"]')[0],
            rad_Cash = document.querySelectorAll('[type="radio"]')[1];

        if (rad_visa.checked) {
            
            console.log("Yup");
            
            rad_visa.checked = false;
            rad_Cash.checked = true;

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


            p.innerHTML = "VISA and Mster Card Are: <br/><br/> Under Maintenance";
            warning.insertBefore(span, warning.firstElementChild);

            span.className = "close";
            span.textContent = "X";         

            rad_visa.remove();
            

            
            
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

    </script>
</asp:Content>
