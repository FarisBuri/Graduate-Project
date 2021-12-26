<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Drink.aspx.cs"  Inherits="IPA_Coffee.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

/* Start Header*/

/* Start Main Page */
header .container .links > li:not(:last-child) {
  position: relative;
}

/* Start Hover On Element  */
header .container .links > li:nth-of-type(2) a:hover::before  {
    left: -100%;
}
/* End Hover On Element  */
header .container .links > li:nth-child(2)::before {
  content: "";
  position: absolute;
  bottom: -25px;
  left: 0;
  width: 100%;
  height: 3px;
  background-color: var(--main-color);
}
header .container .links > .drink {
  position: relative;
}
header .container .links > li > .drink::before {
  content: "";
  position: absolute;
  bottom: -22px;
  left: 50%;
  transform: translateX(-50%);
  border: 7px solid transparent;
  border-bottom-color: var(--main-color);
}
header .container .links > li > .drink::after {
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
            
        /* Start Nav */

nav {
padding: 15px 0;
background-color : #fff;

/* padding: 50px 0; */
}

nav .container {
background-color: white;
display: flex;
justify-content: space-between;
align-items: center;
padding: 15px 5px;
border-top: 2px solid #ececec;
    box-shadow: 0 2px 15px rgb(0 0 0 / 10%);
}


nav .container select,
nav .container .search input,
.select {
    border-radius: 6px;
    width: 150px;
    text-align: center;
    padding: 5px;
    color: var(--main-color);
    border: 2px solid var(--main-color);
    font-weight: bold;
}

@media (max-width: 767px) {
nav .container .select {
display: none;
}
nav .container .select {
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
/*color: var(--main-color);
padding: 4px;
outline: none;
border: none;
border: 1px solid var(--main-color);
font-size: 15px;
text-align: center;*/
padding: 6px;
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
color: var(--main-color);
}

/* End Nav */



/* Start Drinks */

.serve-box {
padding: 15px;
background-color: #fff;
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
border-radius: 10px;
}

.serve-box .container .box:hover {
box-shadow: 0px 1px 11px #795548;
    transform: translateY(-10px);
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
    /* padding: 17px 15px; */
    color: var(--main-color);
    transition: 1s;
    height: 56px;
    width: 50px;
    margin: 0 auto;
    display: flex;
    align-items: center;
    justify-content: center;
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
transform: rotate(3deg) scale(1.1);
transition: 0.3s;
}
.serve-box .container .box:hover .caption {
transition: 0.3s;
bottom: 0;
}

.serve-box .container .box .caption h3 {
    text-transform: capitalize;
}
.serve-box .container .box .caption p {
font-size: 12px;
margin: 10px 0;
}

.serve-box .container .box .caption select {
  border: none;
    /* width: 100%; */
    width: 30%;
    text-align: right;
    position: absolute;
    right: 0;
    bottom: 40px;
}
.serve-box .container .box .caption select:focus,
.serve-box .container .box .caption select:active {
  outline: none;
  border: none;
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
    background-image: linear-gradient(to right , red 50% , white 50%);
    background-size: 200% 100%;
    background-position: bottom right;
    color: red;
    
    border: 1px solid red;
    padding: 5px;
    border-radius: 10px;
    padding: 6px;
    font-weight: bold;
    transition: 1s;
}

.serve-box .container .box:hover .caption input {
    background-position: bottom left;
    color: white;
}
.serve-box .container .box .caption input:active {
    border: 2px solid red;
    box-shadow: 10px 10px 15px #ccc;
}
.serve-box .container .box .caption input:focus {
outline: none;
}

/* End Drinks */

.lbl {
    position: relative;
    top: 9px;
   
}

/* Start Bit */

tbody {
    display: grid;
    grid-template-columns: repeat(auto-fit , minmax(300px , 1fr));
     gap: 17px;
     text-align: center;
    
}

tr {


}
td {
}
.box {
    
}

/*End Bit*/
.btn_icon {
        position: absolute;
    right: 15px;
    top: 50%;
    transform: translateY(-50%);
    color: #fff;
    font-size: 20px;
}

/* How Much In Cart */

.parentNum {
    position: absolute;
    right: 20px;
    /* transform: translateX(-50%); */
    background-color: var(--main-color);
    color: white;
        bottom: -19px;
    display: none;
    justify-content: center;
    align-items: center;
    gap: 10px;
    padding: 0px 18px 0px 15px;
    border-radius: 0 0 5px 5px;
    cursor: pointer;
}
.parentNum i {
        position: absolute;
    right: 3px;
    bottom: 3px;
    font-size: 9px;
    color: #ffffff;
}
.parentNum h3 {

    font-style: normal;
    font-size: 15px;
}
.parentNum span {
    font-weight: bold;
    font-style: normal;
    writing-mode: horizontal-tb;
    font-size: 15px;

}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--    <asp:Label ID="user_name" CssClass="lbl" runat="server"></asp:Label>
    
    <asp:Label ID="first_name" CssClass="lbl" runat="server"></asp:Label>
    
    <asp:Label ID="last_name" CssClass="lbl" runat="server" ></asp:Label>--%>

<!-- Start Nav -->
    <nav>
        <div class="container" style="position: relative;">
          

            <asp:DropDownList runat="server" ID="ddl_TypeCoffee" OnSelectedIndexChanged="TypeCoffee_SelectedIndexChanged" AutoPostBack="true" >
                <asp:ListItem Value="all" Selected="True">All Drinks</asp:ListItem>
                <asp:ListItem Value="cold">Cold</asp:ListItem>
                <asp:ListItem Value="hot">Hot</asp:ListItem>
                <asp:ListItem Value="snacks">Snacks</asp:ListItem>
            </asp:DropDownList>



           

            <h2>Categories</h2>

            <div class="search">
                <%--<input id="input_search" type="search" class="fa" placeholder="&#xf002 Search"/>--%>
                <div style="position:relative;    display: inline-block;">
                    <asp:TextBox runat="server" type="search" ID="txt_search" placeholder="Search" style="padding-right:3px;font-size: 15px;padding-left:28px;text-align:left" OnTextChanged="TypeCoffee_SelectedIndexChanged" TextMode="Search" AutoPostBack="true"/>
                    <i class="fas fa-search" style="position:absolute; top:50%; transform: translateY(-50%);left: 5%;color:var(--main-color)"></i>
                </div>
                <%--<select name="" id="">
                    <option>Newest</option>
                    <option>Heigh to Low</option>
                    <option>Low to High</option>
                </select>--%>
                <asp:DropDownList runat="server" ID="ddl_OrderBy" CssClass="select" OnSelectedIndexChanged="TypeCoffee_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Value="newest">Newest</asp:ListItem>
                    <asp:ListItem Value="asc">Low To High</asp:ListItem>
                    <asp:ListItem Value="desc">High To Low</asp:ListItem>

                </asp:DropDownList>
            </div>
         <%-- Start How Much In Cart --%>
        <div class="parentNum" onclick="location.assign('Cart.aspx');">
            <h3>Cart :</h3>
            <asp:Label runat="server" CssClass="cartNum" ID="lbl_num">0</asp:Label>
            <i class="fas fa-shopping-cart"></i>
        </div>
    <%-- End How Muhc In Cart --%>
        </div>

    </nav>
<!-- End Nav -->

   

<!-- Start Drinks -->

    <div class="serve-box">
        <div class="container">

            
                     <asp:DataList ID="DataList1" runat="server" ShowFooter="False" ShowHeader="False" OnItemCommand="DataList1_ItemCommand" tabindex="-1">
                         <ItemTemplate>
                              <div class="box">
                                 <img src='image1/<%# Eval("order_img") %>' alt="" tabindex="-1" />

                                 <asp:Label runat="server" ID="lbl_price" CssClass="price sr" tabindex="-1"><%# Eval("order_price") %>  </asp:Label>
                         
                               <div class="caption">
                                     <h3><%# Eval("order_name") %></h3>
                                     <p>More Details</p>
                                   <asp:DropDownList ID="DropDownList1" runat="server" tabindex="-1">
                                       <asp:ListItem>1</asp:ListItem>
                                       <asp:ListItem>2</asp:ListItem>
                                       <asp:ListItem>3</asp:ListItem>
                                       <asp:ListItem>4</asp:ListItem>
                                   </asp:DropDownList>
                                    
                                    <div style="position: relative">
                                        <asp:Button runat="server" ID="submit" Text="Add To Cart"  CommandArgument='<%# Eval("order_name") %>' CommandName="Add" OnCommand="submit_Command" tabindex="-1"/>
                                        <i class="fas fa-shopping-cart btn_icon"></i>

                                    </div>
                               </div>
                             </div>
                         
                       
                         </ItemTemplate>
                     </asp:DataList>
                    
                  
                    


               



          </div>
        </div>

    <script>

        let cartNum = document.querySelector(".cartNum");

        function shortCase(value) {
            cartNum.parentElement.style.display = value;
        }

        cartNum.textContent != '0' ? shortCase("flex") : shortCase("none");
         

    </script>

<!-- End Drinks -->
</asp:Content>
