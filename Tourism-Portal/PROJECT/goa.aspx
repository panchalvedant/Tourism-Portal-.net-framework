<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="goa.aspx.cs" Inherits="PROJECT.goa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <title>Goa</title>
     <link rel="Stylesheet" href="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/themes/redmond/jquery-ui.css" />
     <script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-1.8.0.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.22/jquery-ui.js"></script>
    
    <script> 
        $(function () {
            $("#sew_searchBox").autocomplete(
                {
                    source: function (request, response) {
                        var param = { destination: $('#sew_searchBox').val() };
                        $.ajax({
                            url: "india.aspx/GetEmp",
                            data: JSON.stringify(param),
                            type: "post",
                            contentType: "application/json;charset=utf-8",
                            dataFilter: function (data) { return data; },
                            success: function (data) {
                                response($.map(data.d, function (item) { return { value: item } }))
                            },
                        });
                    }, minLength: 1
                });
        }
            );
    </script>
     <style type="text/css">
        #Button1{
          border-style: none;
            border-color: inherit;
            border-width: medium;
            background: url('img/search.png') center;
            background-size: cover;
            height:50px;
            width:50px
          }
        .state {
            height: 356px;
            margin-top: 23px;
            width: 1692px;
            margin-left: 46px;
        }
        
        .UNION {
            height: 193px;
        }
    </style>
    <style>
        * {
            box-sizing: border-box;
        }

       

        .topnav {
            overflow: hidden;
            background-color: #e9e9e9;
            font-size:25px;
        }

            .topnav a {
                float: left;
                display: block;
                color: black;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                height: 61px;
        }

                .topnav a:hover {
                    background-color: #ddd;
                    color: black;
                }

                .topnav a.active {
                    background-color: #2196F3;
                    color: white;
                }

            

        @media screen and (max-width: 600px) {
            .topnav a {
                float: none;
                display: block;
                text-align: left;
              
                margin: 1px;
                padding: 14px;
            }

            
        }
       
    </style>




</head>
<body >
    <form id="form1" runat="server">
        
        <div class="topnav" style="width: 100%">
           <a class="active" href="Home.aspx">Home</a>
            <a href="Login.aspx">Login</a>
            <a href="india.aspx">About India </a>
            <a href="#contact">Contact</a>
            
     
	  	  
	  	  
        <a>   <asp:TextBox id="sew_searchBox" runat="server"   placeholder="Search..."  BorderStyle="Groove"  border-radius="30px"  Font-Overline="True" Font-Size="25px" Width="253px" OnTextChanged="sew_searchBox_TextChanged"></asp:TextBox>
           &nbsp; &nbsp;</a><a><asp:Button ID="Button1" runat="server" OnClick="Button1_Click"   style = "Font-Size:25px ; " Height="40px"  />
            </a>
         </div>
        <div>
             <asp:Image ID="Image1" runat="server" Style=" Height:600px; Width:100%" ImageUrl="~/img/goa1.jpeg"  />
        </div>
       <div>
           <h1>History</h1>
           <p>In the 3rd century BC, Goa was part of the Maurya Empire, ruled by the Buddhist emperor, Ashoka of Magadha. Buddhist monks laid the foundation of Buddhism in Goa. Between the 2nd century BC and the 6th century AD, Goa was ruled by the Bhojas of Goa.</p>
           <p>In 1510, the Portuguese defeated the ruling Bijapur sultan Yusuf Adil Shah with the help of a local ally, Timoji, a privateer. They set up a permanent settlement in Velha Goa. This was the beginning of Portuguese colonial rule in Goa that would last for four and a half centuries, until its annexation to India in 1961. The Goa Inquisition, a formal tribunal, was established in 1560, and was finally abolished in 1812.</p>
           <p>In 1843, the Portuguese moved the capital to the Cidade da Nova Goa, today known as Panaji, from Velha Goa. By the mid-18th century, Portuguese Goa had expanded to most of the present-day state limits. Simultaneously, the Portuguese lost other possessions in India until their borders stabilized and formed the Estado da Índia Portuguesa or State of Portuguese India.</p>
       </div>
        <div>
            <h1>
                Tourism
            </h1>
            <p>Tourism is generally focused on the coastal areas of Goa, with lower tourist activity inland. In 2010, there were more than 2 million tourists reported to have visited Goa, about 1.2  million of whom were from abroad. As of 2013, Goa was a destination of choice for Indian and foreign tourists, particularly Britons and Russians, with limited means who wanted to party. The state was hopeful that changes could be made which would attract a more upscale demographic.</p>
            <p>Goa stands 6th in the Top 10 Nightlife cities in the world in National Geographic Travel. Notable nightclubs in Goa include Chronicle, Mambos and Sinq.</p>
            <p>One of the biggest tourist attractions in Goa is water sports. Beaches like Baga and Calangute offer jet-skiing, parasailing, banana boat rides, water scooter rides, and more. Patnem beach in Palolem stood third in CNN Travel's Top 20 Beaches in Asia.</p>
        </div>
        <div class="iocon">
            <h1 >Images</h1>
            <asp:Image ID="Image2" runat="server" Height="295px" Width="432px" ImageUrl="~/img/goa2.jpg" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" Height="295px" Width="432px" ImageUrl="~/img/goa3.jpeg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" Height="295px" Width="432px" ImageUrl="~/img/goa4.jpeg" />

        </div>
       <div>
           <h3>Map</h3>
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d492485.5370135817!2d73.73142536419616!3d15.34703717803814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbfba106336b741%3A0xeaf887ff62f34092!2sGoa!5e0!3m2!1sen!2sin!4v1632377497552!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
       </div>
        <div class="UNION">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;
            <h1>Tourism Places in Goa</h1>
            <asp:Table ID="Table3" runat="server" style="margin-bottom: 23px; margin-left: 45px; Width:100% ; Height:94px;"  CellPadding="0" CellSpacing="0">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Beaches Off the Beaten Path</asp:TableCell>
                    <asp:TableCell runat="server">Tanshikar's Working Spice Farm</asp:TableCell>
                    <asp:TableCell runat="server">Portuguese-Indian Restaurants</asp:TableCell>
                    <asp:TableCell runat="server">Basilica de Bom Jesus</asp:TableCell>
                    <asp:TableCell runat="server">Dudhsagar Falls</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Anjuna Market</asp:TableCell>
                    <asp:TableCell runat="server">Church of Our Lady of the Immaculate Conception</asp:TableCell>
                    <asp:TableCell runat="server">Braganza House</asp:TableCell>
                    <asp:TableCell runat="server">Mahadev Temple</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
        <div>
            <h4>Hotels in Goa</h4>
            <a href="https://www.booking.com/region/in/goa.en.html?aid=324798;label=goa-MTl4kK1vHKZcSMOHhpttewS388387535727:pl:ta:p1:p2:ac:ap:neg:fi:tiaud-146342138710:kwd-46144001:lp1007759:li:dec:dm:ppccp=UmFuZG9tSVYkc2RlIyh9YcWHiCDB7igB8XpJKYgu4TM;ws=&gclid=Cj0KCQjwqKuKBhCxARIsACf4XuGFKcAkSfl7omKUJWLgJiIaOYVBFKlUTNc8AW0uDCjRiEeUGT8sq44aAgloEALw_wcB" >Click Here</a>
            <h4>For More Information</h4>
            <a href="https://www.goatourism.gov.in/" >Click here</a>
            <br />
        </div>
        <div class="footer">
         <h3 style="background-color:#003366">Email:indiantourism@gov.in </h3> 
          <h3 style="background-color:#003366"> ©2021 IndianTourism</h3>
        </div>
    </form>
</body>
</html>

