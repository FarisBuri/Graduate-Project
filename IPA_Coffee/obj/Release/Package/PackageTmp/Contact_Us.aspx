<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact_Us.aspx.cs" Inherits="IPA_Coffee.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
            
/* Start Admin Page */
        
            .hide_admin {
                display: block;
            }
            .hide_emp {
                display: none;
            }

            .show {
                display: none;
            }


/* Start Admin Page */
        

/* Start Header*/

/* Start Main Page */
header .container .links > li:not(:last-child) {
  position: relative;
}

/* Start Hover On Element  */
header .container .links li:nth-of-type(3) a:hover::before  {
    left: -100%;
}
/* End Hover On Element  */
header .container .links > li:nth-child(3)::before {
  content: "";
  position: absolute;
  bottom: -25px;
  left: 0;
  width: 100%;
  height: 3px;
  background-color: var(--main-color);
}
header .container .links > .contact {
  position: relative;
}
header .container .links > li > .contact::before {
  content: "";
  position: absolute;
  bottom: -22px;
  left: 50%;
  transform: translateX(-50%);
  border: 7px solid #fff;
  border-bottom-color: var(--main-color);
  border-left-color: transparent;
  border-right-color: transparent;

}
header .container .links > li > .contact::after {
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

/* End Contact Us */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- Start Contact us -->

    <div class="message">
            <h2 class="main-title">Client Messages</h2>
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
                  <div>
                      <a class="mail" target="_blank" href="mailto:<%# Eval("email")%>">Answer</a>
                  </div>
                   
                </div>

                    </ItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Fname], [Lname], [email], [image], [msgTime], [message] FROM [contact] order by msgTime desc"></asp:SqlDataSource>
             <%--   <!-- Box -->
                <div class="box">
                    
                    <div class="center">
                        <div class="image">
                            <img src="images/avatar2.bmp" alt="">
                        </div>
                         <!-- Name -->
                         <div class="name">
                            
                            <label for="">Mr.Ali</label>
                            <label for="">Ahmed</label>
                            <label class="date">2021/12/30</label>
                        </div>
                    </div>
                    <!-- Text -->
                  <div class="paragraph">
                    <p class="white-space">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum voluptatum ad corporis facere obcaecati minima molestias maxime officia nemo aliquam.</p><button class="moreDetails">More Details</button>
                  </div>
                  <div>
                      <a class="mail" target="_blank" href="mailto:indxa3n@gmail.com">Answer</a>
                  </div>
                   
                </div>--%>
                
                
                
                
            </div>
        </div>

    <!-- End Contact us -->

    <script>

        // Start More Details

        let more = document.querySelectorAll(".moreDetails"),
            p = document.querySelectorAll(".message .container .box .paragraph p ");

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
