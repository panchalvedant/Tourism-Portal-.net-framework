<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jaipur.aspx.cs" Inherits="PROJECT.jaipur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <title>Jaipur</title>
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
             <asp:Image ID="Image1" runat="server" Style=" Height:600px; Width:100%" ImageUrl="~/img/jaipur1.jpg"  />
        </div>
       <div>
           <h1>THE PINK CITY</h1>
           <p>Planned by Vidyadhar Bhattacharya, Jaipur holds the distinction of being the first planned city of India. Renowned globally for its coloured gems, the capital city of Rajasthan combines the allure of its ancient history with all the advantages of a metropolis. The bustling modern city is one of the three corners of the golden triangle that includes Delhi, Agra and Jaipur.</p>
           <p>The story goes that in 1876, the Prince of Wales visited India on a tour. Since the colour pink was symbolic of hospitality, Maharaja Ram Singh of Jaipur painted the entire city pink. The pink that colours the city makes for a marvellous spectacle to behold. Jaipur rises up majestically against the backdrop of the forts Nahargarh, Jaigarh and Garh Ganesh Temple.</p>
           <p>Jaipur traces back its origins to 1727 when it was established by Jai Singh II, the Raja of Amber. He shifted his capital from Amber to the new city because of the rapidly-growing population and an increasing water scarcity. Noted architect Vidyadhar Bhattacharya used the established principles of Vastu Shastra to build the city.</p>
       </div>
        <div>
            <h1>
                Tourism
            </h1>
            <p>Jaipur is a major tourist destination in India forming a part of the Golden Triangle. In the 2008 Conde Nast Traveller Readers Choice Survey, Jaipur was ranked the 7th best place to visit in Asia. According to TripAdvisor's 2015 Traveller's Choice Awards for Destination, Jaipur ranked 1st among the Indian destinations for the year. The Presidential Suite at the Raj Palace Hotel, billed at US$45,000 per night, was listed in second place on CNN's World's 15 most expensive hotel suites in 2012.</p>
            <p>Jaipur Exhibition & Convention Centre (JECC) is Rajasthan's biggest convention and exhibition centre. It is famous for organising events such as Vastara, Jaipur Jewellery Show, Stonemart 2015 and Resurgent Rajasthan Partnership Summit 2015.</p>
        </div>
        <div class="iocon">
            <h1 >Images</h1>
            <asp:Image ID="Image2" runat="server" Height="295px" Width="432px" ImageUrl="~/img/jaipur2.jpg" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" Height="295px" Width="432px" ImageUrl="~/img/jaipur3.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" Height="295px" Width="432px" ImageUrl="~/img/jaipur4.jpg" />

        </div>
       <div>
           <h3>Map</h3>
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d227749.00041794876!2d75.65012880570993!3d26.885141340438224!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396c4adf4c57e281%3A0xce1c63a0cf22e09!2sJaipur%2C%20Rajasthan!5e0!3m2!1sen!2sin!4v1632377539406!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
       </div>
        <div class="UNION">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;
            <h1>Tourism Places in Jaipur</h1>
            <asp:Table ID="Table3" runat="server" style="margin-bottom: 23px; margin-left: 45px; Width:100% ; Height:94px;"  CellPadding="0" CellSpacing="0">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">AMBER PALACE</asp:TableCell>
                    <asp:TableCell runat="server">CITY PALACE</asp:TableCell>
                    <asp:TableCell runat="server">JANTAR MANTAR</asp:TableCell>
                    <asp:TableCell runat="server">HAWA MAHAL</asp:TableCell>
                     <asp:TableCell runat="server">ALBERT HALL MUSEUM (CENTRAL MUSEUM)</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">NAHARGARH FORT</asp:TableCell>
                    <asp:TableCell runat="server">JAIGARH FORT</asp:TableCell>
                    <asp:TableCell runat="server">BIRLA TEMPLE</asp:TableCell>
                    <asp:TableCell runat="server">JAL MAHALL</asp:TableCell>
                     <asp:TableCell runat="server">GAITORE (MEMORIALS OF KINGS)</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">SISODIA RANI PALACE AND GARDEN</asp:TableCell>
                    <asp:TableCell runat="server">VIDYADHAR GARDEN</asp:TableCell>
                    <asp:TableCell runat="server">CENTRAL PARK</asp:TableCell>
                    <asp:TableCell runat="server">ANOKHI MUSEUM OF HAND PRINTING</asp:TableCell>
                     <asp:TableCell runat="server">etc...</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
        <div>
            <h4>Hotels in Jaipur</h4>
            <a href="https://www.booking.com/city/in/jaipur.html?aid=306395;label=in-jaipur-SkucJRd4y1QftnpK4Q3LegS392742919892:pl:ta:p1560:p2:ac:ap:neg:fi:tikwd-536285831:lp1007759:li:dec:dm:ppccp=UmFuZG9tSVYkc2RlIyh9YZVcNNsENnH02-pWD53qm9c;ws=&gclid=Cj0KCQjwqKuKBhCxARIsACf4XuEeDacKpfAGW1L2yvgI4mSdukIvmJZplfKxsfZz2OcmkSzxmq8xi9UaAtbPEALw_wcB" >Click Here</a>
            <h4>For More Information</h4>
            <a href="http://www.tourism.rajasthan.gov.in/jaipur.html" >Click here</a>
            <br />
        </div>
        <div class="footer">
         <h3 style="background-color:#003366">Email:indiantourism@gov.in </h3> 
          <h3 style="background-color:#003366"> ©2021 IndianTourism</h3>
        </div>
    </form>
</body>
</html>
