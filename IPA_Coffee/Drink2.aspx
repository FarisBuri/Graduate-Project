<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Drink2.aspx.cs" Inherits="IPA_Coffee.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
         /*Start Admin Header */
            .none1 {
            display: block;
        }

        .block {
            display: none;
        }
         /* End Admin Header */

        /* Start Header*/

    header .container .links1 ul li [href="Drink2.aspx"]:hover::after {
        display:none
/* border-bottom: 4px solid var(--main-color); */
}

/* STart Media Links*/

header .container .links ul li [href="Drink2.aspx"]:after {
content: "";
position: absolute;
right: 15px;
border: 10px solid transparent;
border-right-color: var(--main-color);
}

header .container .links ul li [href="Drink2.aspx"]:before {
content: "";
position: absolute;
right: 15px;
transform: translateY(3px);
border: 7px solid transparent;
border-right-color: #f6f6f6;
z-index: 2;
}
/* End Media Links*/

header .container .links1 ul li [href="Drink2.aspx"]::before{
content: "";
position: absolute;
width: 100%;
height: 2px;
left: 0;
bottom: -42px;
background-color: var(--main-color);
}
header .container .links1 ul .drink2 {
position: relative;
left: -8%;
top: 21px;
/* top: 99%; */
/* bottom: -3%; */
transform: translateX(-50%);
border: 6px solid transparent;
border-bottom-color: var(--main-color);
}

header .container .links1 ul span::after{
content: "";
position: absolute;
left: -10%;
bottom: -15%;
transform: translateX(-50%);
border: 5px solid transparent;
border-bottom-color: white;
}
    /* End Header*/

        /* Start Nav */

nav {
margin: 15px 0;
/* padding: 50px 0; */
}

nav .container {
background-color: white;
display: flex;
justify-content: space-between;
padding: 10px 5px;
}

nav .container .selects {
width: 15%;
border: 1px solid var(--main-color);
color: var(--main-color);
}

@media (max-width: 767px) {
nav .container .selects {
display: none;
}
nav .container .search select {
display: none;
}
}

nav .container select:active {
outline: none;
}
nav .container select:focus {
outline: none;
}

nav .container select optgroup {
color: var(--main-color);
font-weight: 700;
}

nav .container h2 {
color: var(--main-color);
font-weight: normal;
}

nav .container .search {
}

nav .container .search input {
/* border-radius: 8px; */
color: var(--main-color);
padding: 4px;
outline: none;
border: none;
border: 1px solid var(--main-color);
font-size: 15px;
text-align: center;
}
nav .container .search input::placeholder {
color: var(--main-color);
}
nav .container .search input:active,
nav .container .search input:hover,
nav .container .search input:focus {
outline: none;
text-align: center;
}

nav .container .search #input-search {
/* position: absolute; */
/* right: 20%; */
color: var(--main-color);
font-size: 20px;
}

nav .container .search input {
}
nav .container .search select {
margin-left: 20px;
width: 140px;
border: 1px solid var(--main-color);
color: var(--main-color);
}

/* End Nav */



/* Start Drinks */

.serve-box {
padding: 15px;
}

.serve-box .container {
display: grid;
grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
row-gap: 15px;
column-gap: 15px;
overflow: hidden;
}

.serve-box .container .box {
position: relative;
overflow: hidden;
}


/* STart Modify */

.serve-box .container .box .price {
  font-size: 18px;
  position: absolute;
  right: 28px;
  font-weight: bold;
  top: -100%;
  z-index: 3;
  border-radius: 0 0 10px 10px;
  background-color: white;
  padding: 20px 15px;
  color: var(--main-color);
  transition: 1s;
}

.serve-box .container .box:hover .price {
  transition: 0.3s;
  top: 0;
}

/* End Modify */

.serve-box .container .box img {
width: 100%;
height: 400px;
transition: 1s;
}

.serve-box .container .box .caption {
background-color: white;
position: absolute;
bottom: -100%;
left: 0;
transition: 1s;
width: 100%;
padding: 5px;
color: var(--main-color);
}

.serve-box .container .box:hover img {
transform: rotate(1deg) scale(1.1);
transition: 0.3s;
}
.serve-box .container .box:hover .caption {
transition: 0.3s;
bottom: 0;
}

.serve-box .container .box .caption h3 {
}
.serve-box .container .box .caption p {
font-size: 12px;
margin: 10px 0;
}
.serve-box .container .box .caption input {
width: 100%;
background-color: rgb(218, 22, 22);
color: white;
border: none;
padding: 5px;
}

.serve-box .container .box .caption input:focus,
.serve-box .container .box .caption input:active {
border: none;
outline: none;
color: #f6f6f6;
background-color: rgb(218 22 22 / 80%);
}

/* End Drinks */
/* Start Drinks */

.serve-box {
padding: 15px;
}

.serve-box .container {
display: grid;
grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
row-gap: 15px;
column-gap: 15px;
overflow: hidden;
}

.serve-box .container .box {
position: relative;
overflow: hidden;
}

.serve-box .container .box img {
    width: 100%;
    height: 400px;
    transition: 1s;
    /*line-height: 20;
    text-indent: 127px;*/
}


.serve-box .container .box .caption {
background-color: white;
position: absolute;
bottom: -100%;
left: 0;
transition: 1s;
width: 100%;
padding: 5px;
color: var(--main-color);
}

.serve-box .container .box:hover img {
transform: rotate(1deg) scale(1.1);
transition: 0.3s;
font-style: italic;
}
.serve-box .container .box:hover .caption {
transition: 0.3s;
bottom: 0;
}

.serve-box .container .box .caption h3 {
}
.serve-box .container .box .caption p {
font-size: 12px;
margin: 10px 0;
}
.serve-box .container .box .caption input {
width: 100%;
background-color: rgb(218, 22, 22);
color: white;
border: none;
padding: 5px;
}

.serve-box .container .box .caption input:focus,
.serve-box .container .box .caption input:active {
border: none;
outline: none;
color: #f6f6f6;
background-color: rgb(218 22 22 / 80%);
}

/* End Drinks */

.lbl {
    position: relative;
    top: 9px;
   
}

/* Start Bit */

tbody {
    display: flex;
    flex-wrap: wrap;
   
    
}

tr {
    flex-basis: 350px;
    flex-grow:1;

}
td {
}
.box {
    margin: 0 8px 15px;
}

/*End Bit*/
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="user_name" CssClass="lbl" runat="server"></asp:Label>
    
    <asp:Label ID="first_name" CssClass="lbl" runat="server"></asp:Label>
    
    <asp:Label ID="last_name" CssClass="lbl" runat="server" ></asp:Label>

<!-- Start Nav -->
    <nav>
        <div class="container">
            <select name="" id="" class="selects">
                <optgroup label="Hot Coffee">
                    <option value="">Hot Moca</option>
                        
                </optgroup>
                <optgroup label="Cold Coffee">
                    <option value="">Ice White Moca</option>
                </optgroup>
                <optgroup label="Another Stuff">
                    <option value="">Carson</option>
                </optgroup>
            </select>



           

            <h2>Categories</h2>

            <div class="search">
                <input id="input_search" type="search" class="fa" placeholder="&#xf002 Search">
                   
                <select name="" id="">
                    <option>Newest</option>
                    <option>Heigh to Low</option>
                    <option>Low to High</option>
                </select>
            </div>
        </div>
    </nav>
<!-- End Nav -->

<!-- Start Drinks -->

    <div class="serve-box">
        <div class="container">

            
                     <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" ShowFooter="False" ShowHeader="False">
                         <ItemTemplate>
                              <div class="box">
                                 <img src='image1/<%# Eval("order_img") %>' alt="" />
                                 <div class="price"><%# Eval("order_price") %></div>
                         
                               <div class="caption">
                                     <h3><%# Eval("order_name") %></h3>
                                     <p>More Details</p>
                                    <input type="submit" value="Add To Cart">
                               </div>
                             </div>
                         
                       
                         </ItemTemplate>
                     </asp:DataList>
                    
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [order_img], [order_name], [order_price] FROM [orders]"></asp:SqlDataSource>
                    


               

                <%-- <div class="box">
                        <div class="price">12</div>
                        <img src="images/heart-coffee---shutterstock_512503885_web.jpg" alt="">
                        <div class="caption">
                            <h3>Coffee</h3>
                            <p>More Details</p>
                            <input type="submit" value="Add To Cart">
                        </div>
                    </div>
                    <div class="box">
                        <div class="price">12</div>
                        <img src="images/cappuccino-with-cocoa-powder-in-a-coffee-shop-696828002-5a8cdd4030371300379a59fd.jpg" alt="">
                        <div class="caption">
                            <h3>Coffee</h3>
                            <p>More Details</p>
                            <input type="submit" value="Add To Cart">
                        </div>
                    </div>
                    <div class="box">
                        <div class="price">12</div>
                        <img src="images/coffee-ceramic-cup-on-marbled-table-reduced_1024x1024.jpg" alt="">
                        <div class="caption">
                            <h3>Coffee</h3>
                            <p>More Details</p>
                            <input type="submit" value="Add To Cart">
                        </div>
                    </div>

                    <!-- Part Two Box -->

                    <div class="box">
                        <div class="price">12</div>
                        <img src="images/Iced-Mocha-.jpg" alt="">
                    
                        <div class="caption">
                            <h3>Coffee</h3>
                            <p>More Details</p>
                            <input type="submit" value="Add To Cart">
                        </div>
                    </div>

                    <div class="box">
                        <div class="price">12</div>
                        <img src="images/latte.jpg" alt="">
                        <div class="caption">
                            <h3>Coffee</h3>
                            <p>More Details</p>
                            <input type="submit" value="Add To Cart">
                        </div>
                    </div>

                    <div class="box">
                        <div class="price">12</div>
                        <img src="images/cups-of-coffee.jpg" alt="">
                        <div class="caption">
                            <h3>Coffee</h3>
                            <p>More Details</p>
                            <input type="submit" value="Add To Cart">
                        </div>
                    </div>--%>


          </div>
        </div>

<!-- End Drinks -->

    <%--<script>
        let first = document.querySelector("img"),
            rest = document.querySelectorAll("img");
        
        setInterval(function () {

            if (innerWidth > "767") {

                for (let i = 4; i < rest.length; i++) {
                    rest[i].style.width = first.width + "px";
                }
            } else {
                for (let i = 4; i < rest.length; i++) {
                    rest[i].style.width = "100%";
                }
            }
            

        }, 1000)
        
    </script>--%>
</asp:Content>
