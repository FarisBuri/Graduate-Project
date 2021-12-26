<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="IPA_Coffee.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

/* Start Header*/

/* Start Main Page */
header .container .links > li:not(:last-child) {
  position: relative;
}

/* Start Hover On Element  */
header .container .links > li:first-child a:hover::before  {
    left: -100%;
}
/* End Hover On Element  */
header .container .links > li:first-of-type::before {
  content: "";
  position: absolute;
  bottom: -25px;
  left: 0;
  width: 100%;
  height: 3px;
  background-color: var(--main-color);
}
header .container .links > .home {
  position: relative;
}
header .container .links > li > .home::before {
  content: "";
  position: absolute; 
  bottom: -22px;
  left: 50%;
  transform: translateX(-50%);
  border: 7px solid transparent;
  border-bottom-color: var(--main-color);
}
header .container .links > li > .home::after {
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




/* Start Landing */

.landing {
  padding-top: 15px;
  margin-bottom: 15px;
  width: 100%;
  height: 80vh;
  background-image: url("image1/land1.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  transition: 2s;
}
.landing::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background-color: rgba(0, 0, 0, 0.322);
  z-index: 1;
}
.landing .text {
  position: absolute;
  bottom: 40px;
  left: 0;
  height: 170px;
  width: 40%;
  border-radius: 0 6px 6px 0;
  z-index: 2;
  background: white;
}
@media (max-width: 991px) {
  .landing .text {
    width: 60%;
  }
}
@media (max-width: 500px) {
  .landing .text {
    width: 100%;
  }
}
.landing .text h2 {
  font-weight: bold;
  color: var(--main-color);
  font-size: 25px;
  padding: 10px;
}
.landing .text p {
  color: #777;
  /* text-align: center; */
  padding: 10px;
  line-height: 1.5;
  text-transform: capitalize;
}

/* End Landing */


/* Start Type Coffee */

.type-coffee {
  padding-top: 60px;
  background-color: white;
}
.type-coffee > .container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 30px;
  padding-bottom: 80px;
}
.type-coffee > .container > .box {
  overflow: hidden;
  background-color: white;
  box-shadow: 0 2px 15px #eee;
  border-radius: 10px;
}
.type-coffee  > .container > .box > .image {
  position: relative;
  overflow: hidden;
  transition: 0.5s;
}
.type-coffee  > .container > .box:hover  .image::before {
  transition: 1s;
  border-width: 170px 500px 170px 0px;
}
.type-coffee  > .container > .box > .image::before {
  content: "";
  position: absolute;
  right: 0;
  bottom: 0;
  z-index: 1;
  border: solid;
  border-color: transparent transparent white transparent;
  border-width: 0px 0px 170px 500px;
  transition: 1s;
}
.type-coffee > .container > .box .image::after {
  content: "";
  position: absolute;
  right: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
  /* z-index: -1; */
  background-color: #ff000066;
}
.type-coffee  .container .cold .image::after {
  background-color: #00bcd466;
}
.type-coffee .container .else .image::after {
  background-color: #ff980066;
}

.type-coffee  > .container > .box  img {
  width: 100%;
  height: 300px;
  position: relative;
}
.type-coffee > .container > .box  h2 {
  color: black;
  font-weight: bold;
  font-size: 30px;
  margin: 0px auto 40px;
  width: fit-content;

  text-align: center;
  position: relative;
}
.type-coffee  .container  .box  h2::before {
  content: "";
  position: absolute;
  bottom: -15px;
  left: -10px;
  width: calc(100% + 20px);
  background-color: red;
  height: 3px;
}
.type-coffee .container .cold h2::before {
  background-color: #00bcd4;
}
.type-coffee .container .else h2::before {
  background-color: #ff9800;
}
.type-coffee  .container  .box > p {
  color: #777;
  padding: 0 20px;
  text-align: center;
  line-height: 1.8;
  height: 190px;
  /*margin-bottom: 40px;*/
}
.type-coffee  .container  .box  input {
  display: block;
  margin: 30px auto;
  background-color: transparent;
  border: 2px solid red;
  padding: 8px 20px;
  border-radius: 6px;
  color: red;
  font-weight: bold;
  transition: 1s;
  background-image: linear-gradient(to right, red 50%, white 50%);
  background-size: 200% 100%;
  background-position: bottom right;
}
.type-coffee .container .else input {
  border-color: #ff9800;
  color: #ff9800;
  background-image: linear-gradient(to right, #ff9800 50%, white 50%);
}
.type-coffee .container .cold input {
  border-color: #00bcd4;
  color: #00bcd4;
  background-image: linear-gradient(to right, #00bcd4 50%, white 50%);
}
.type-coffee .container .box:hover input {
  color: white;
  background-position: bottom left;
}

/* End Type Coffee */


/* Start How It work */

.work {
  padding: 60px 0;
  position: relative;
  background-color: #f8f8f8;
}
.work .container {
  display: flex;
  gap: 40px;
  justify-content: center;
  /* flex-wrap: wrap; */
}
.work .container > img {
  width: 50%;
  height: 100%;
  margin: auto 0;
  text-align: center;
}
@media (max-width: 991px) {
  .work .container {
    flex-wrap: wrap;
  }
  .work .container > img {
    margin-right: 0;
  }
}
.work .container .all-box {
  display: flex;
  flex-wrap: wrap;
  gap: 15px;
  width: 80%;
}
.work .container .box {
  overflow: hidden;
  background-color: #f6f6f6;
  box-shadow: 0 2px 15px #eee;
  border-radius: 10px;
  display: flex;
  height: fit-content;
  border: 2px solid white;
  position: relative;
  padding: 20px;
}
@media (max-width: 767px) {
  .work .container .box {
    flex-direction: column;
  }
  .work .container .box .image {
    height: 50%;
  }
}
.work .container .box::before {
  content: "";
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  width: 0;
  height: 0;
  transition: 0.5s;
  z-index: 2;
}
.work .container .box:hover:before {
  width: 100%;
  height: 100%;
  background-color: #ede9e9;
}
.work .container .box .image {
  /* height: 100%; */
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 30px;
  z-index: 3;
}
.work .container .box img {
  width: 65px;
  height: 65px;
}
.work .container .box .text {
  z-index: 3;
}
.work .container .box h3 {
  margin: 20px 0 10px;
  font-weight: bold;
}
.work .container .box p {
  color: #777;
  line-height: 1.8;
  text-transform: capitalize;
}

/* End How It work */


/* Start Contact us */

.contact {
  display: flex;
  background-color: white;
}
@media (max-width: 991px) {
  .contact .image {
    display: none;
  }
}
.contact .image img {
  height: 650px;
}
.contact .inputs {
  display: flex;
  flex-grow: 1;
  flex-direction: column;
  text-align: center;
  justify-content: center;
  column-gap: 40px;
  row-gap: 20px;
  text-align: center;
  margin: 0 auto;
  padding: 20px 100px;
}
.contact .inputs input:not([type="submit"]) {
  padding: 16px 47px;
  border: none;
  border-bottom: 1px solid #d4d4d4;
  background-color: #f8f8f8;
  caret-color: var(--main-color);
  width: 100%;
  font-weight: bold;
  letter-spacing: 1px;
  word-spacing: 3px;
  color: #776660;
}
.contact .inputs i {
         position: absolute;
    left: 15px;
    top: 50%;
    transform: translateY(-50%);
    font-size: 20px;
    color: var(--main-color);
 }
.contact .inputs .act {
  position: relative;
  overflow: hidden;
}
.contact .inputs .act::before {
  content: "";
  position: absolute;
  bottom: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background-color: var(--main-color);
  transition: 1s;
}

.contact .inputs .act:hover:before {
  left: 0;
}
.contact .inputs input:focus {
  outline: none;
}

.contact .inputs input:focus::placeholder {
  opacity: 0;
}

.contact .inputs ::placeholder {
  font-size: 14px;
  opacity: 1;
  transition: 1s;
  font-weight: normal;
}
.contact .inputs .txtareaIcon {
    top: 16%;
}
.contact .inputs textarea {
  padding: 16px 47px;
  border: none;
  width: 100%;
  background-color: #f8f8f8;
  border: none;
  border-bottom: 1px solid #d4d4d4;
  font-weight: bold;
  letter-spacing: 1px;
  word-spacing: 3px;
  color: #776660;
  resize: none;
  height: 150px;
  text-transform: capitalize;
}
.contact .inputs textarea:focus::placeholder {
  opacity: 0;
}
.contact .inputs textarea:focus {
  outline: none;
}
.contact .inputs [type="submit"] {
  background-color: transparent;
  border: 2px solid var(--main-color);
  border-radius: 6px;
  margin: 20px 60px 10px;
  padding: 10px 0;
  font-weight: bold;
  color: var(--main-color);
  background-image: linear-gradient(to right, var(--main-color) 50%, white 50%);
  background-size: 200% 100%;
  background-position: top right;
  transition: 1s;
}
.contact .inputs [type="submit"]:hover {
  background-position: top left;
  color: white;
}
.contact .inputs [type="submit"]:active {
  box-shadow: 10px 10px 15px #aaa;
}

/* End Contact us */

/* Start Our Awesome Status */

.our-awesome {
  padding-top: 40px;
  padding-bottom: 20px;
  background-color: #f8f8f8;
  padding: relative;
}
.our-awesome .container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
  gap: 30px;
  padding-bottom: 80px;
}
.our-awesome .container .box {
  overflow: hidden;
  background-color: white;
  box-shadow: 0 2px 15px #eee;
  border-radius: 0px;
  padding: 10px;
  height: 230px;
  position: relative;
}
.our-awesome .container .box:hover::before {
  top: 0;
}
.our-awesome .container .box:hover::after {
  bottom: 0;
}

.our-awesome .container .box::before {
  content: "";
  position: absolute;
  top: -100%;
  left: 0;
  height: 100%;
  width: 2px;
  background-color: var(--main-color);
  transition: 1s;
}
.our-awesome .container .box::after {
  content: "";
  position: absolute;
  bottom: -100%;
  right: 0;
  height: 100%;
  width: 2px;
  background-color: var(--main-color);
  transition: 1s;
}
.our-awesome .container .box i {
  color: #ffc107;
  font-size: 70px;
  display: block;
  /* margin: 0 auto; */
  text-align: center;
  margin-top: 10px;
}
.our-awesome .container .box h3 {
  font-weight: bold;
  font-size: 45px;
  margin: 20px auto;
  text-align: center;
}
.our-awesome .container .box span {
  display: block;
  color: var(--main-color);
  font-weight: bold;
  text-align: center;
}

/* End Our Awesome Status */

/* For Validation  */


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

 
/* Start Some Of My Memory */

.memory {
  padding: 60px 0;
}
.memory .container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 15px;
}
@media (max-width: 992px) {
  .memory .container {
    grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
  }
}
.memory .container div {
  border-radius: 10px;
  height: 200px;
  background-size: cover;
  transition: 2s;
  background-repeat: no-repeat;
}

.memory .container .img1 {    
  background-image: url("../image1/memory/15.jpg");
}
.memory .container .img2 {
    
  background-image: url("../image1/memory/2.jpg");
}
.memory .container .img3 {
    
  background-image: url("../image1/memory/3.jpg");
}

.memory .container .img4 {
    
  background-image: url("../image1/memory/big.jpg");
  grid-column: 4 / 2;
  grid-row: 2 / 5;
  height: 100%;
}
@media (max-width: 992px) {
  .memory .container .img4 {
    grid-column: 4 / 1;
    grid-row: 2 / 30;
  }
}
.memory .container .img5 {
    
  background-image: url("../image1/memory/4.jpg");
}
.memory .container .img6 {
    
  background-image: url("../image1/memory/12.jpg");
  grid-row: 1 / 3;
}
@media (max-width: 992px) {
  .memory .container .img6 {
    grid-row: 1 / 1;
  }
}
.memory .container .img7 {
    
  background-image: url("../image1/memory/11.jpg");
  display: none;
}
@media (max-width: 992px) {
  .memory .container .img7 {
    display: block;
  }
}
@media (max-width: 600px) {
  .memory .container [class^="img"] {
    grid-column: 1 / 4;
    height: 300px;
  }
  .memory .container .img1 {
    grid-row: 1 / 1;
  }
  .memory .container .img2 {
    grid-row: 2 / 2;
  }
  .memory .container .img3 {
    grid-row: 3 / 3;
  }
  .memory .container .img4 {
    grid-row: 4 / 4;
  }
  .memory .container .img5 {
    grid-row: 5 / 5;
  }
  .memory .container .img6 {
    grid-row: 6 / 6;
  }
  .memory .container .img7 {
    grid-row: 7 / 7;
  }
}
.memory .container [class^="img"]:hover {
  outline: 5px solid #ffc107;
  border-radius: 20px;
  transition: 0s;
}
/* End Some Of My Memory */


/* Start Contact Us */

.message {
  padding: var(--padding) 0;
    background-color: #f6f6f6;
}
.message .container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(375px, 1fr));
  gap: 30px;
}
@media (max-width: 767px) {
  .message .container {
    margin-top: 95px;
    gap: 85px;
  }
}
.message .container .box {
  /* box-shadow: rgb(238 238 238) 0px 2px 15px; */
  background-color: #f6f6f6;
  position: relative;
  border-radius: 10px;
  border: 3px solid #ffffff;
  padding: 10px 20px;
  height: fit-content;
  z-index: 3;
}
.message .container .box::before {
  content: "";
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  height: 0%;
  width: 0%;
  z-index: -1;
  background-color: #ede9e9;
  transition: 0.7s;
}
.message .container .box:hover::before {
  width: 100%;
  height: 100%;
}
.message .container .box .image {
  border-radius: 50%;
  width: 125px;
  height: 125px;
}
@media (max-width: 767px) {
  .message .container .box .image {
    position: absolute;
    left: 50%;
    top: -69px;
    transform: translateX(-50%);
  }
}
.message .container .box .image img {
  border-radius: 50%;
  width: 125px;
  border: 3px solid #ccc;
  height: 125px;
}
.message .container .box .paragraph {
  display: flex;
}
.message .container .box .paragraph p {
  color: #777;
  line-height: 1.6;
  /*flex-grow: 1;*/
  padding: 10px 0;
}
.message .container .box .white-space {
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.message .container .box .paragraph button {
  border: none;
  color: #2196f3;
  font-size: 15px;
  cursor: pointer;
  min-width: 108px;
  background-color: transparent;
}
.message .container .box .center {
  display: flex;
  align-items: center;
}
.message .container .box .name {
  text-align: right;
  font-weight: bold;
  font-style: normal;
  margin: 10px 0 10px 30px;
  font-size: 20px;
  text-align: center
}
@media (max-width: 767px) {
  .message .container .box .name {
    margin: 66px auto 0;
  }
}
.date {
  text-align: center;
  margin: 8px 0;
  display: block;
  color: #ff9800;
  font-size: 13px;
}
.message .container .box .parentMail {
  display: flex;
  align-items: center;
  justify-content: flex-end;
}
.message .container .box .mail {
  display: block;
  color: red;
  font-weight: bold;
  text-align: right;
  padding: 15px 0;
  font-style: normal;
  font-size: 14px;
}
.stars {
    text-align: center;
    color: #ffc107;
    padding: 10px;
    font-size: 21px;
}

/* End Contact Us */

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- Start Landing  -->
    
    <div class="landing">
        <div class="text">
            <h2>IPA Coffee: </h2>
            <p>welcome to everyone who visit IPA coffee thank you so much this site is my first project that i build. i hope it's fun experience to you ^_^</p>
        </div>
    </div>
    
    <!-- End Landing  -->

    
    <!-- Start Type Coffee  -->

    <div class="type-coffee" id="coffee">
        <h2 class="main-title">Coffee Types</h2>
        <div class="container">

            <!-- Box -->
            <div class="box cold">
                <div class="image">
                    <img src="image1/type1.jpg" alt="">
                </div>
                <h2 >COLD</h2>
                <p>Cold brew coffee contains compounds that may reduce your risk of heart disease, including caffeine, phenolic compounds, magnesium, trigonelline, quinides, and lignans.</p>
                <input type="button" value="More" onclick="location.assign('Drink.aspx');">
            </div>
            <!-- Box -->
            <div class="box hot">
                <div class="image">
                    <img src="image1/type2.jpg" alt="">
                </div>
                <h2>HOT</h2>
                <p>Hot coffee was found to have higher levels of antioxidants than cold brew, which makes it slightly more healthy. This is important because antioxidants are responsible for the health benefits you get from coffee.</p>
                <input type="button" value="More" onclick="location.assign('Drink.aspx');">
            </div>
            <!-- Box -->
            <div class="box else">
                <div class="image">
                    <img src="image1/type3.bmp" alt="">
                </div>
                <h2>Snacks</h2>
                <p>Other Things Like Sandwiched , Carson and other things that you can order </p>
                <input type="button" value="More" onclick="location.assign('Drink.aspx');">
            </div>

         
    </div>

    <!-- End  Type Coffee  -->

        
    <!-- How It's Work -->

    <div class="work" id="service">
        <h2 class="main-title">Services</h2>
        <div class="container">
            <img src="image1/work3.png" alt="">

          <div class="all-box">
              
              <!-- Box -->
              <div class="box">
                  <div class="image">
                      <img src="image1/easy.png" alt="">
                    </div>
                    <div class="text">
                        <h3>Easliy To Use</h3>
                        <p>this site is fast and you can order and accept your order in less than 5 minutes and delivery to you </p>
                    </div>
                </div>
                <!-- Box -->
                <div class="box">
                    <div class="image">
                    <img src="image1/fixed.png" alt="">
                </div>
                <div class="text">
                    <h3>Fixed Issue</h3>
                     <p>24 / 7 we working solve Issue and problems and add features that you want:  tell us by contact us </p>
                </div>
            </div>

            <!-- Box -->
            <div class="box">
                <div class="image">
                    <img src="image1/work5.png" alt="">
                </div>
                <div class="text">
                    <h3>Security</h3>
                     <p>we care about your information so don't worry. we gonna save it and protect it</p>
                </div>
            </div>

          </div>
        </div>
    </div>

    <!-- End It's Work -->

           <!-- Start Contact us -->

    <div class="contact" id="contact">
        <div class="image">
            <img src="image1/contact.jpg" alt="">
        </div>
        <div class="inputs">
            <h2 class="main-title" style="margin-bottom: 20px">Contact Us</h2>
            <div class="act">
                <i class="fas fa-signature"></i>
                <input type="text" placeholder="Your Name: "/>
            </div>
            <div class="act">
                <i class="fas fa-envelope"></i>
                <input type="text" placeholder="Email: ">
            </div>
            <div class="act">
               <i class="fas fa-phone-alt"></i>
                <asp:TextBox runat="server" ID="txt_phone" placeholder="Phone:"  />
            </div>
           <div class="act" >
            <i class="fas fa-file-signature txtareaIcon"></i>
            <asp:TextBox runat="server" ID="txtarea" TextMode="MultiLine" placeholder="Tell Us About Your Needs" />
           </div>
            <asp:Button runat="server" ID="btnContact" Text="Submit" OnClick="btnContact_Click"
                />
        </div>
    </div>

    <!-- End Contact us -->


    <!-- Start Our Awesome status  -->
    <div class="our-awesome" id="awesome">
            <h2 class="main-title">Our Awesome Status</h2>
            <div class="container">
               
                <!-- Box -->
                <div class="box">
                    <i class="fas fa-users"></i>
                    <h3>75</h3>
                    <span>Clients</span>
                </div>
               
                <!-- Box -->
                <div class="box">
                    <i class="fas fa-coffee"></i>
                    <h3>535</h3>
                    <span>Coffee Drink</span>
                </div>
               
                <!-- Box -->
                <div class="box">
                    <i class="fas fa-mail-bulk"></i>
                    <h3>192</h3>
                    <span>Mails Sent</span>
                </div>
               
                <!-- Box -->
                <div class="box">
                    <i class="fas fa-university"></i>
                    <h3>3</h3>
                    <span>Cities</span>
                </div>
            </div>
        </div>
    <!-- End Our Awesome status  -->

        
 <!-- Start Some Of My Memory -->

 <div class="memory" id="memory">
    <h2 class="main-title">Some Of My Memory</h2>
    <div class="container">
       <div class="img1">
           <!-- <img src="images/avatar2.bmp" alt="" class="pic1"/> -->
       </div>
       <div class="img2">
           <!-- <img src="images/avatar2.bmp" alt="" class="pic2"/> -->
       </div>
       <div class="img3">
           <!-- <img src="images/avatar2.bmp" alt="" class="pic3"/> -->
       </div>
       <div class="img4">
           <!-- <img src="images/avatar2.bmp" alt="" class="pic4"/> -->
       </div>
       <div class="img5">
           <!-- <img src="images/avatar2.bmp" alt="" class="pic5"/> -->
       </div>
       <div class="img6">
           <!-- <img src="images/avatar2.bmp" alt="" class="pic6"/> -->
       </div>
       <div class="img7">
           <!-- <img src="images/avatar2.bmp" alt="" class="pic7"/> -->
       </div>
      
     
    </div>
</div>

 <!-- End  some Of My Memory -->


         <!-- Start Contact us -->

    <div class="message" id="Testimonials">
            <h2 class="main-title">Testimonials</h2>
            <div class="container">

                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                      
                         <!-- Box -->
                <div class="box">
                    
                    <div class="center">
                        <div class="image">
                            <img src="image1/<%# Eval("image") %>" alt="">
                        </div>
                         <!-- Name -->
                         <div class="name">
                            
                            <label for="">Mr.<%# Eval("Fname") %></label>
                            <label for=""><%# Eval("Lname")%></label>
                            <label class="date"><%# Eval("msgTime")%></label>
                        </div>
                    </div>
                    <!-- Text -->
                  <div class="paragraph">
                    <p class="white-space"><%# Eval("message")%></p><button class="moreDetails">More Details</button>
                  </div>
                  <div class="stars">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>

                  </div>
                   
                </div>

                    </ItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Fname], [Lname], [email], [image], [msgTime], [message] FROM [contact] where Best = 'true' order by phone desc"></asp:SqlDataSource>
         </div>
       </div>

    <!-- End Contact us -->


    <script>

        // Start Landing

        let land = document.querySelector(".landing"),
            move = 4;
        pictuers = ["land1.jpg", "land2.jpg", "land3.jpg", "land4.jpg"];

            function movePicture() {
                if (move == pictuers.length) {
                    move = 0;
                }
                land.style.backgroundImage = 'url("image1/' + pictuers[move] + '")';
                // // // console.log(move);
                // console.log(move);
                ++move;
            }

        //setInterval(movePicture, 4000);
        

// End Landing

        // Start Validation 
        let phone = document.querySelector('[id="ContentPlaceHolder1_txt_phone"]');
        sumbit = document.querySelector("[id='ContentPlaceHolder1_btnContact']"),
            overley = document.createElement("div"),
            warning = document.createElement("div"),
            x = document.createElement("i"),
            p = document.createElement("p"),
            span = document.createElement("span");

        sumbit.onclick = (e) => {
            
           
            if (phone.value.length != 10 || typeof (Number.parseInt(phone.value)) != "number" || !phone.value.startsWith("05")) {
                e.preventDefault();
                e.preventDefault();

                document.body.appendChild(overley);
                document.body.appendChild(warning);

                overley.style = "background-color: #00000038; z-index: 1000; position: fixed; top:0; left: 0; height: 100%; width: 100%";
                warning.style = "background-color: white; z-index: 1001;  position: fixed; top: 50%; left: 50%; height: 300px; width: 300px; transform: translate(-50%, -50%); border-radius: 10px;";

                warning.appendChild(x);
                x.className = "far fa-times-circle";
                x.style = "font-size: 95px; position: absolute; left: 50%; top: 50%; transform: translate(-50%, -109%); color: red"

                warning.appendChild(p);
                //p.textContent = "Room Number Is Empty";
                p.style = "color: var(--main-color); font-weight: bold;  position: absolute; bottom: 26%; display: block; width: 100%; text-align: center";


                p.innerHTML = "<i style='color: red; font-size: 22px'>Phone:</i> <br/><br/> Must be 10 Character Also Only Numbers Start With 05";
                warning.insertBefore(span, warning.firstElementChild);

                span.className = "close";
                span.textContent = "X";

                span.onclick = _ => {
                    overley.remove();
                    warning.remove();
                }
            }


        }

        warning.onclick = e => {
            e.stopPropagation();
        }

        document.addEventListener("click", e => {

            if (e.target != sumbit && e.target != warning) {
                overley.remove();
                warning.remove();
            }

        });


        // End Validation 



        // Start Memory
        let pic1 = document.querySelector(".img1"),
            pic2 = document.querySelector(".img2"),
            pic3 = document.querySelector(".img3"),
            picBig = document.querySelector(".img4"),
            pic5 = document.querySelector(".img5"),
            pic6 = document.querySelector(".img6"),
            pic7 = document.querySelector(".img7"),
            start = 0,
            count = 0,
            bigImages = ["big.jpg", "big1.jpeg", "big2.jpeg", "big3.jpeg", "big4.jpeg", "big5.jpeg"],
            smallImages = ["2.jpg", "3.jpg", "4.jpg", "a1.jpeg", "5.jpg", '6.jpg', "7.jpg", "a2.jpeg", "10.jpg", "11.jpg", "a3.jpeg", "12.jpg", "13.jpg", "15.jpg", "16.jpg", "17.jpg", "18.jpg", "a4.jpeg","19.jpg"];

        function runPictures(pic0) {
            if (start >= smallImages.length) {
                start = 0;
            }
            pic0.style.backgroundImage = 'url("../image1/memory/'+ smallImages[start]+'")';
            ++start;
        }
        setInterval(() => {
             runPictures(pic1);
             runPictures(pic6);
             runPictures(pic5);
             runPictures(pic2);
             runPictures(pic7);
            runPictures(pic3);
        }, 5000);

        function runPicturesBig() {
            if (count >= bigImages.length) {
                count = 0;
            }
            picBig.style.backgroundImage = 'url("../image1/memory/'+ bigImages[count]+'")';
            ++count;
           
        }
        setInterval(runPicturesBig, 10000);

// End Memory

        // Start More Details

        let more = document.querySelectorAll(".moreDetails"),
            p1 = document.querySelectorAll(".message .container .box .paragraph p ");

        more.forEach((event) => {
            event.onclick = (e) => {
                e.preventDefault();
                event.style = "display: none";
                event.parentElement.firstElementChild.classList.remove("white-space");
            };
        });

// End More Details
    </script>
</asp:Content>
