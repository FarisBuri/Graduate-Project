    <%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Sign_Up.aspx.cs" Inherits="IPA_Coffee.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

/* Start Header*/

/* Start Main Page */
header .container .links > li:not(:last-child) {
  position: relative;
}

/* Start Hover On Element  */
header .container .links > li:nth-of-type(7) a:hover::before  {
    left: -100%;    
}
/* End Hover On Element  */
header .container .links > li:nth-child(7)::before {
  content: "";
  position: absolute;
  bottom: -25px;
  left: 0;
  width: 100%;
  height: 3px; 
  background-color: var(--main-color);
}
header .container .links > .sign {
  position: relative;
}
header .container .links > li > .sign::before {
  content: "";
  position: absolute;
  bottom: -22px;
  left: 50%;
  transform: translateX(-50%);
  border: 7px solid transparent;
  border-bottom-color: var(--main-color);
}
header .container .links > li > .sign::after {
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
            
/* Start sign-up */
.sign-up {
  background-color: #f6f6f6;
  display: flex;
  justify-content: space-evenly;
  /* flex-direction: row; */
  padding: 0 20px;
  height: 100vh;
  position: relative;
  /* z-index: -1; */
}
.sign-up .container {
  /* padding: 20px; */
  display: flex;
  flex-direction: row;
  justify-content: center;
}
.sign-up .container .image {
  width: 40%;
  margin: auto 0 auto 0;
  position: relative;
}
/* .sign-up .container .image:before {
    content: "";
    width: 120px;
    height: calc(100% + 50px);
    border-left: 60px solid #af8b1f;
    transform: translateY(-25px);
    position: absolute;
    top: -25;
    left: -22px;
    z-index: -1;
} */

.sign-up .container .image .text-image {
  color: white;
  font-size: 20px;
  position: absolute;
  top: 86%;
  left: 60%;
  transform: translate(-50%, -50%);
  width: 100%;
}

.sign-up .container .image .text-image i {
  font-size: 50px;
  /* left: 40px */
  /* margin-left:90px; */
  margin-top: -60px;
  transform: translate(180%, -31%);
}

@media (max-width: 1199px) {
  .sign-up .container .image .text-image i {
    transform: translate(110%, -20%);
  }
}
/* @media (max-width: 5000px) {
    .sign-up .container .image .text-image i {
        transform: translate(180% , -31%);   
    }
} */

.sign-up .container .image .text-image p {
  font-size: 30px;
  padding: 10px;
  width: 80%;
  border: 1px solid white;
  border-radius: 10px;
  text-align: center;
  /* margin-top: 20px; */
}

@media (max-width: 767px) {
  .sign-up .container .image {
    display: none;
  }
  .sign-up {
    padding: 0;
    margin: 0;
  }
  .sign-up .container {
    width: 100%;
  }
  .sign-up .container .text .in-text {
    width: 100%;
  }
}

.sign-up .container .image img {
  max-width: 100%;
  height: 100vh;
  /* transform: translate(-40px , 2px) scaleX(1.5); */
}
.sign-up .container .image p {
}

.sign-up .container .image i {
}
.sign-up .container .text {
  /* transform: translate(20% , 10%); */
  /* margin: 20px auto; */
  background-color: #f6f6f6;
  display: flex;
  flex-direction: column;
  width: 100%;
  /* justify-content: ; */
  /* align-items: center; */
}
.sign-up .container .text .in-text {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 98%;
  margin: auto 0;
  background-color: #fff;
  border-radius: 0 10px 10px 0;
  position: relative;
  padding-top: 50px;
     
}
.sign-up .container .text h1 {
  /* margin-top: -30px; */
  transform: translateY(-30px);
  color: var(--main-color);
}

.sign-up .container .text i {
}

.sign-up .container .text .in-text i {
  font-size: 30px;
  color: var(--main-color);
}

.sign-up .container .text .in-text input {
  width: 50%;
  margin-bottom: 30px;
  border: none;
  border-radius: 5px;
  border-bottom: 1px solid black;
  font-weight: 300;
  padding: 10px;
  text-align: center;
}
.sign-up .container .text .in-text input:focus:not(:last-child) {
  border: none;
  outline: none;
  border-radius: 5px;
  border-bottom: 1px solid black;
  color: var(--main-color);
}
.sign-up .container .text .in-text .check input {
  border-bottom: none;
  border-radius: 0;
}
.sign-up .container .text .in-text .check input:active {
  border-bottom: none;
  border-radius: 0;

}
.sign-up .container .text .in-text .check input:focus {
  border-bottom: none;
  border-radius: 0;
  outline: none;
  text-align: center;
  
}

.sign-up .container .text .in-text .check {
  display: flex;
  flex-direction: row;
  justify-content: center;
  /* align-items: center; */
}

.sign-up .container .text .in-text .check [type="checkbox"] {
  -webkit-appearance: none;
  appearance: none;
  /* visibility: hidden; */
  /* display: none; */
}

.sign-up .container .text .in-text .check label {
  position: relative;
}

.sign-up .container .text .in-text .check label:before {
  content: "";
  width: 13px;
  height: 13px;
  background-color: #eee;
  border: 1px solid #ccc;
  display: inline-block;
  position: absolute;
  left: -25px;
}

.sign-up
  .container
  .text
  .in-text
  .check
  input[type="checkbox"]:checked
  + label:after {
  font-family: "Font Awesome\ 5 Free";
  content: "\f00c";
  /* font-size: 100px; */
  color: var(--main-color)
  font-size: 19px;
  font-weight: 800;
  position: absolute;
  top: -3px;
  left: -26px;
}

.sign-up .container .text .in-text .check label:hover {
  color: var(--third-color);
}

.sign-up .container .text .in-text .check input {
  width: 30px;
  margin-top: 2px;
}
.sign-up .container .text .in-text .check input:checked {
}
.sign-up .container .text .in-text a {
  transform: translate(14px, -20px);
  font-size: 13px;
  text-align: center;
  display: flex;
  justify-content: center;
  align-items: center;
  text-transform: lowercase;
  letter-spacing: normal;
  color: var(--main-color);
  text-decoration: none;
}
.sign-up .container .text .in-text a:hover {
  color: var(--third-color);
}

.sign-up .container .text .in-text input:active {
  border: none;
  outline: none;
  /* border-radius: 10px;  */
  color: #eee;
}

.sign-up .container .text input:last-child:not(i + input) {
  border: none;
  background-image: linear-gradient(to left, var(--main-color), #daae68);
  color: white;
  font-weight: bold;
  letter-spacing: 1px;
  border-radius: 10px;
  padding: 15px;
  
  margin-top: 10px;
}
.sign-up .container .text input:last-child:hover {
  opacity: 0.8;
}


.sign-up .container .text input:last-child:focus-visible {
    outline: 0;
    border: 0;
    border: 1px solid #333;
}


#create {
    font-size: 10px;
    
}

.collapse {
    background-color: var(--main-color);
    color: white;
    padding: 5px;
    border-radius: 0 0 10px 10px;
    position: absolute;
    top: 0;
    transform: translateX(-50%);
    font-size: 13px;
    width: 80%;
    text-align: center;
}

@media(min-width: 767px) {
    .collapse {
        width: 60%;
        padding: 10px;
        font-size: 15px;
    }
}

@keyframes hess {
    from {
        bottom: 100%;
    }
    to {
        bottom: 0;
    }
}

/* End sign-up */

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

 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <asp:UpdateProgress runat="server" AssociatedUpdatePanelID="UpdatePanel1">
             <ProgressTemplate>
                 <div id="overlay">
                     <div id="modalprogress">
                         <div id="theprogress">
                                    <div class="loading"></div>
                         </div>
                     </div>
                 </div>
             </ProgressTemplate>
         </asp:UpdateProgress>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                    
               
    <!-- Start Sing up -->

    <div class="sign-up">
        <div class="container">


            <div class="image">

                <img src="image1/Coffee.jpg" alt="">
                <div class="text-image">
                    <i class="fas fa-mug-hot"></i>
                    <p>IPA Coffee</p>
                </div>
            </div>


            <div class="text">
                <div class="in-text">
                    <!-- Title  -->
                    <h1>Sign In</h1>
                    <i></i>


                    <!-- Sign Up -->
                    <i class="fas fa-user-tie"></i>
                    <asp:TextBox runat="server" ID="user_name"  type="text" placeholder="Username" autofocus autocomplete="off"/>
                 <%--   <asp:TextBox runat="server" ID="hide_name"/>--%>
                    <asp:Label tabindex="-1" ID="user_name_found" runat="server" visible="false">
                        <h4 class="collapse">Username or Password Inccorect</h4>
                    </asp:Label>

                    <i class="fas fa-key"></i>
                    <asp:TextBox runat="server"  ID="password" TextMode="Password" placeholder="Password" />
                    <a tabindex="-1" id="create" href="Sign_in.aspx">Create An Account ?</a>

                    <!-- Checkbox -->
                    <div class="check" tabindex="-1">
                        <input tabindex="-1" type="checkbox" id="chk">
                        <label tabindex="-1" for="chk">save passowrd</label>
                    </div>

                    <a href="Forget_Password.aspx" tabindex="-1" target="_blank">forget password</a>
                  
                    <br>
                    <asp:Button runat="server" ID="btn" Text="Submit" OnClick="btn_Click" />
                </div>
            </div>


        </div>

    </div>

                 
                 </ContentTemplate>
          </asp:UpdatePanel>
    <!-- End Sing up -->

    <script>
        let check = document.querySelector('[type="checkbox"]'),
            user = document.querySelector('[id="ContentPlaceHolder1_user_name"]'),
            password = document.querySelector('[id="ContentPlaceHolder1_password"]'),
            sign_out = document.querySelectorAll('[id="sign_out"]'),
            sumbit = document.querySelector("br + [type='submit']")
            overley = document.createElement("div"),
            warning = document.createElement("div"),
            x = document.createElement("i"),
            p = document.createElement("p"),
            span = document.createElement("span"),
        
        /**
         * let myU, myP;

        sign_out.onclick() {
            localStorage.clear();
        }
        let user1 = localStorage.getItem("username");
        let pass1 = localStorage.getItem("password");


        if (user1 != null && pass1 != null) {
            user.value = user1;
            password.value = pass1;
            sumbit.click();
          //  location.assign("https://google.com");
        //    location.assign("Orders.aspx");
        sumbit.onclick = _ => {
          

            myU = user.value;
            myP = password.value;

            console.log(myU);
            console.log(myP);

            if (check.checked) {
                localStorage.setItem("username", myU);
                localStorage.setItem("password", myP);
            }
            
        };
        //localStorage.clear
        } _
         */
                


        // Start Validation 

                sumbit.onclick = e => {
                console.log("hola");

            if (user.value.length == 0 || user.value.length > 20) {
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


                p.innerHTML = "<i style='color: red; font-size: 22px'>Username:</i> <br/><br/> Must be between 5 - 15";
                warning.insertBefore(span, warning.firstElementChild);

                span.className = "close";
                span.textContent = "X";   

                span.onclick = _=> {
                    overley.remove();
                    warning.remove();
                }

                
                 
                 

              

            }
            else if (password.value.length == 0 || password.value.length > 15) {
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


                p.innerHTML = "<i style='color: red; font-size: 22px'>Password:</i> <br/><br/> Must be between 5 - 15";
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

    </script>
</asp:Content>
