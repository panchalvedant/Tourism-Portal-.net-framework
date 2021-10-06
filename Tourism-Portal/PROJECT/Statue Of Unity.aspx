<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Statue Of Unity.aspx.cs" Inherits="PROJECT.Statue_Of_Unity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <title>Statue of Unity</title>
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
             <asp:Image ID="Image1" runat="server" Style=" Height:600px; Width:100%" ImageUrl="~/img/sou1.jpg"  />
        </div>
       <div>
           <h1>Statue of Unity</h1>
<p>The Statue of Unity is a colossal statue of Indian statesman and independence activist Vallabhbhai Patel (1875–1950), who was the first deputy prime minister and home minister of independent India and an adherent of Mahatma Gandhi during the nonviolent Indian Independence movement. Patel was highly respected for his leadership in uniting 562 princely states of India with a major part of the former British Raj to form the single Union of India. The statue is located in the state of Gujarat, India. It is the world's tallest statue with a height of 182 metres (597 feet).[3] It is located on the Narmada River in the Kevadiya colony, facing the Sardar Sarovar Dam 100 kilometres (62 mi) southeast of the city of Vadodara and 150 kilometres (93 mi) from Surat. Kevadia railway station is located at a distance of just 5 kilometres from Statue of Unity.</p>  
           <p>Over 128,000 tourists visited the statue in the 11 days after its opening to the public on 1 November 2018.The daily average tourist footfall at Statue of Unity during November 2019 reached 15,036, outpacing the Statue of Liberty </p>
           <p>A consortium comprising Turner Construction, Michael Graves and Associates and the Meinhardt Group supervised the project. The project took 57 months to complete – 15 months for planning, 40 months for construction and 2 months for handing over by the consortium</p>
       </div>
       
        <div class="iocon">
            <h1 >Images</h1>
            <asp:Image ID="Image2" runat="server" Height="295px" Width="432px" ImageUrl="~/img/sou2.jpeg" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" Height="295px" Width="432px" ImageUrl="~/img/sou3.jpeg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" Height="295px" Width="432px" ImageUrl="~/img/sou4.jpg" />

        </div>
       <div>
           <h3>Map</h3>
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3703.5057772035116!2d73.71687875048924!3d21.838018385494763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39601d55e43af21f%3A0xb8e23c01a1f6eb18!2sStatue%20of%20Unity!5e0!3m2!1sen!2sin!4v1632388949934!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
       </div>
        <div class="UNION">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;
            <h1>Tourism Places in Statue of Unity</h1>
            <asp:Table ID="Table3" runat="server" style="margin-bottom: 23px; margin-left: 45px; Width:100% ; Height:94px;"  CellPadding="0" CellSpacing="0">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"> Valley of Flowers</asp:TableCell>
                    <asp:TableCell runat="server">Riverfront Cycling</asp:TableCell>
                    <asp:TableCell runat="server">Sardar Patel Zoological Park and Jungle Safari</asp:TableCell>
                    <asp:TableCell runat="server">Geodesic Aviary Domes</asp:TableCell>
                     <asp:TableCell runat="server">Pet Zone at Statue of Unity</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">	Unity Glow Garden</asp:TableCell>
                    <asp:TableCell runat="server">Dino Trail at Statue of Unity</asp:TableCell>
                    <asp:TableCell runat="server">Sardar Sarovar Dam</asp:TableCell>
                    <asp:TableCell runat="server">Children Nutrition Park</asp:TableCell>
                     <asp:TableCell runat="server">Arogya Van or Herbal Garden</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
        <div>
            <h4>Hotels in Statue of Unity</h4>
 <a href="https://www.makemytrip.com/hotels/rajpipla-hotels-near-statue_of_unity.html" >Click here</a>           
            <h4>For More Information and Tickets</h4>
 <a href="https://statueofunity.in/" >Click here</a>           
            <br />
        </div>
        <div class="footer">
         <h3 style="background-color:#003366">Email:indiantourism@gov.in </h3> 
          <h3 style="background-color:#003366"> ©2021 IndianTourism</h3>
        </div>
    </form>
</body>
</html>

