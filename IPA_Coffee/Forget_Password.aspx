<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Forget_Password.aspx.cs" Inherits="IPA_Coffee.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
/* Start Forget Passowrd */

.forget {
  padding: 80px 0;
  /* background-color: #ccc; */
  background-image: url("image1/forget1.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  height: 74vh;
}
.forget .container {
  background-color: #ffffff69;

  padding: 0 0 40px 0;
  border-radius: 10px;
}

.forget .container h2 {
  text-align: center;
  padding: 20px;
  /* padding-bottom: 40px; */
  color: var(--main-color);
  margin-bottom: 20px;
  background-color: white;
  margin-bottom: 40px;
  
}
.forget input:not(:last-of-type) {
  display: block;
  margin: 0 auto 20px;
  padding: 20px 15px;
  text-align: center;
  line-height: 1.3;
  border: none;
  width: 60%;
  border-radius: 10px;
  color: var(--main-color);
  font-weight: bold;
  font-size: 19px;
  letter-spacing: 1px;
  
}

.forget input:not(:last-of-type):focus {
  border: none;
  outline: none;
}

.forget input:last-of-type {
  display: block;
  margin: 0 auto;
  padding: 10px 22px;
  background-image: linear-gradient(to left, var(--main-color), #daae68);
  border: none;
  color: white;
  width: 200px;
  border-radius: 10px;
      margin-bottom: 32px;

}


.forget input:last-of-type:active {
    border: none;
    outline: none;
    background-image: linear-gradient(to right, var(--main-color), #daae68);
}

.end {
    display: block;
    /* color: Red; */
    background-color: var(--main-color);
    color: white;
    padding: 8px 16px;
    border-radius: 0 5px 5px 0;
    width: fit-content;
   
}

.end:empty {
    display: none;
    
}



/* End  Forget Passowrd */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- Start Forget Password -->

    <div class="forget">
        <div class="container">
            <h2>Forget Password</h2>
            <asp:TextBox runat="server" ID="txt_email" placeholder="Enter Your Email" Text="@gmail.com" autofocus/>
            <%--<input type="text" value="Ali@gmail.com">--%>
            <%--<input type="submit" value="Send Email">--%>
            <asp:Button runat="server" ID="send" Text="Send Email" OnClick="send_Click"/>
            <asp:Label ID="lbl_end" runat="server" CssClass="end"  ></asp:Label>
        </div>
    </div>
    

    <!-- End Forget Password -->

    <script>

        let span = document.querySelector(".end");


        if (span.classList.contains("end")) {
            if (span.textContent.includes("Your") && span.textContent.includes("Pasword") && span.textContent.includes("has")) {

                setTimeout(() => {

                    alert("Our Email: ipacoffee1@gmail.com ");

                }, 1000)
                
                
            } 
        };

        
    </script>
</asp:Content>
