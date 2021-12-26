<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Sign_in.aspx.cs" Inherits="IPA_Coffee.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        
        
        /* Start Sign */

        section {
          padding-top: var(--padding);
          padding-bottom: var(--padding);
        }
        @media (min-width: 767px) {
          section {
            padding: 30px 0 0 15px;
            background-image: url("image1/European-Specialty-Coffee-Market-by-Pointbleu-Design-Blog.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
            height: 100vh;
          }
        }

        section .sign {
          padding: 39px;
          background-color: white;

          border-radius: 10px;
          padding-top: 125px;
          position: relative;
        }

        @media (min-width: 767px) {
          section .sign {
            padding: 39px;
            background-color: white;
            width: 574px;
            height: 490px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            /* flex-basis: 100px; */
            border-radius: 10px;
            padding-top: 125px;
            position: relative;
          }
        }
        section h3 {
          display: block;
          color: var(--main-color);
          transform: translateY(-81px);
          position: absolute;
          text-align: center;
          font-size: 45px;
          width: 85%;
        }

        @media (max-width: 768px) {
          section h3 {
            transform: translateY(-81px);
            position: absolute;
            text-align: center;
          }
        }

        section .sign h4:first-of-type,
        section .sign h4:last-of-type {
         
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
            section .sign h4:last-of-type {
                left: 50%;
                transform: translateX(-50%);
                border-radius: 0 0 5px 5px
            }
        }

        section .sign input {
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
          section .sign input {
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
        section .sign input:last-child:active{
            outline: none;
            border: 0;
            border: 1px solid #333;
        }

        
        /* End Sign */


        /* Start  Requeriment*/

         .rq {
           color: white;
            background-color: var(--main-color);
            position: absolute;
            font-size: 12px;
            right: 0px;
            padding: 7px;
            border-radius: 10px 0 0 10px;
            width: fit-content;
            transition: 1s;
         }

         .rq1 {
             top : 22%
         }
         .rq2 {
             top: 32%
         }
         
         .rq3 {
             top: 42%
         }

         .rq4 {
             top: 52%
         }

         .rq5 {
             top: 62%
         }

         .rq6{
             top: 72%;
         }
         .cm {
             top: 61%;
             left: 0;
             border-radius: 0 10px 10px 0;
             width: 144px;
             line-height: 1.6;
         }
         .rg {
             top: 41%;
             width: 144px;
             line-height: 1.6;
         }

        @media(min-width: 767px) {

            .rq {
            }

            .rq1 {
                left: 0;
                top: 20px;
                border-radius: 0 10px 10px 0;
            }

            .rq2 {
                left: 0;
                top: 60px;
                border-radius: 0 10px 10px 0;
            }

            .rq3 {
                left: 0;
                top: 100px;
                border-radius: 0 10px 10px 0;
            }

            .rq4 {
                right: 0;
                top: 100px;
            }

            .rq5 {
                right: 0;
                top: 60px;
            }

            .rq6 {
                right: 0;
                top: 20px;
            }

            .cm {
                top: 87%;
            }
            .rg {
                top: 87%;
                right: 0;
            }
        }

         /* End Requriment */
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
    <!-- Start Sign in -->

        <section>
            <div class="sign">
                <asp:Label ID="email_found" runat="server" Visible="false"><h4>Email / User Name Is Exist</h4></asp:Label>
                
                 <asp:Label ID="user_name_found" runat="server" Visible="false"><h4>User Name Is Exist</h4></asp:Label>
               <h3>Sign Up</h3>

                <!-- First Name -->
                <asp:TextBox runat="server" ID="first_name"  autocomplete="no" placeholder="First Name" autofocus="autofocus" />

                <asp:RequiredFieldValidator runat="server" ID="rq_first_name" ControlToValidate="first_name" ErrorMessage="First Name Requreid" CssClass="rq rq1" />
                
                <!-- Last Name -->
                <asp:TextBox runat="server" autocomplete="no"  ID="last_name" placeholder="Last Name"/>
                <asp:RequiredFieldValidator runat="server" ID="rq_last_name" ControlToValidate="last_name" ErrorMessage="Last Name Requreid"  CssClass="rq rq2" />
                
                <!-- Email -->
                <asp:TextBox runat="server" autocomplete="no"   ID="email" placeholder="Email"/>
                <asp:RequiredFieldValidator runat="server" ID="rq_email" ControlToValidate="email" ErrorMessage="Email Requreid"  CssClass="rq rq3" />
                <asp:RegularExpressionValidator ID="rg" runat="server" ControlToValidate="email" ErrorMessage="Invalid Email Address." CssClass="rq rg" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                <!-- Password -->
                <asp:TextBox runat="server" TextMode="Password" autocomplete="no"  ID="password" placeholder="Password"/>
                <asp:RequiredFieldValidator runat="server" ID="rq_password" ControlToValidate="password"  ErrorMessage="Password Requreid"  CssClass="rq rq4" />
                
                <!-- re-Password -->
                <asp:TextBox runat="server" autocomplete="no" TextMode="Password"  ID="re_password" placeholder="Re-Password"/>
                <asp:RequiredFieldValidator runat="server" ID="rq_re_password" ControlToValidate="re_password" ErrorMessage="Re Password Requreid"  CssClass="rq rq5" />
                <asp:CompareValidator ID="cm" runat="server" ErrorMessage="Re-Password Not Match Password" ControlToCompare="password" ControlToValidate="re_password" CssClass="rq cm" ></asp:CompareValidator>
                
                <!-- User Name-->
                <asp:TextBox runat="server" ID="user_name" placeholder="Username" autocomplete="no" />
                <asp:RequiredFieldValidator runat="server" ID="rq_user_name" ControlToValidate="user_name" ErrorMessage="User Name Requreid"  CssClass="rq rq6" />
                
                <!-- Room -->
                <!-- <select name="" id="">
                    
                    <option value="">10</option>
                    <option value="">10</option>
                </select> -->
                <br />
                <asp:Button runat="server" ID="submit" Text="Submit" OnClick="submit_Click" />
            </div>
        </section>

    <!-- End Sign in -->

    
    
    <script>
        
        let user = document.querySelector('[id="ContentPlaceHolder1_user_name"]'),
            password = document.querySelector('[placeholder="Password"]'),
            //re-password = document.querySelector('[placeholder="Re-Password"]'),
            email = document.querySelector('[placeholder="Email"]'),
            firstName = document.querySelector('[id="ContentPlaceHolder1_first_name"]'),
            lastName = document.querySelector('[id="ContentPlaceHolder1_last_name"]'),
            sign_out = document.querySelectorAll('[id="sign_out"]'),
            sumbit = document.querySelector("br + [type='submit']"),
            overley = document.createElement("div"),
            warning = document.createElement("div"),
            x = document.createElement("i"),
            p = document.createElement("p"),
            span = document.createElement("span");

          

        sumbit.onclick = e => {
            console.log("hola");

            if (user.value.length < 5 || user.value.length > 20 || password.value.length < 5 || password.value.length > 20 || firstName.value.length < 2 || firtName.value.length > 20 || email.value.length > 20 || lastName.value.length < 2 || lastName.value.length > 20 ) {
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

                    if (user.value.length < 5 || user.value.length > 20) { p.innerHTML = "<i style='color: red; font-size: 22px'>Username:</i> <br/><br/> Must be between 5 - 15"; }
                    else if (password.value.length < 5 || password.value.length > 20) { p.innerHTML = "<i style='color: red; font-size: 22px'>Password:</i> <br/><br/> Must be between 5 - 15"; }
                    else if (firstName.value.length < 2 || firtName.value.length > 20) { p.innerHTML = "<i style='color: red; font-size: 22px'>First Name:</i> <br/><br/> Must be between 5 - 15"; }
                    else if (lastName.value.length < 2 || lastName.value.length > 20) { p.innerHTML = "<i style='color: red; font-size: 22px'>Last Name:</i> <br/><br/> Must be between 5 - 15"; }
                    else if (email.value.length < 5 || email.value.length > 20) { p.innerHTML = "<i style='color: red; font-size: 22px'>Email:</i> <br/><br/> Must be between 5 - 15"; }
                   
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
