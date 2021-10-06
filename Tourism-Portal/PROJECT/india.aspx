<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="india.aspx.cs" Inherits="PROJECT.india" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/india.css" type="text/css" />
    <title>Yeh Mera India ! </title>
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
            


        <div id="Image2">
            <div id="aboutIndia" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-seriffont-weight bolder; font-style: normal; text-decoration: blink;">
                About India&nbsp;&nbsp; &nbsp;
            </div>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/india.jpg" />
        </div>

        <div class="aboutText">
            <p>India is one of the oldest civilizations in the world with a kaleidoscopic variety and rich cultural heritage. It has achieved all-round socio-economic progress during the last 65 years of its Independence. India has become self-sufficient in agricultural production and is now one of the top industrialized countries in the world and one of the few nations to have gone into outer space to conquer nature for the benefit of the people. It covers an area of 32, 87,263 sq. km, extending from the snow-covered Himalayan heights to the tropical rain forests of the south. As the 7th largest country in the world, India stands apart from the rest of Asia, marked off as it is by mountains and the sea, which give the country a distinct geographical entity. Bounded by the Great Himalayas in the north, it stretches southwards and at the Tropic of Cancer, tapers off into the Indian Ocean between the Bay of Bengal on the east and the Arabian Sea on the west. As you travel, India offers a range of vast tourism choices, diverse in land and nature, people, tribes, cuisine, faiths, dance forms, music, arts, crafts, adventure, sport, spirituality, history; even these vary as you journey from one state to another. As a country, India has achieved all-round socio-economic progress in the last 70 years of independence. The change is clearly visible in the Tier I and Tier II cities. However, the fascinating aspect lies in the stark difference as you travel through the new and old parts of its cities. From world-class airports and hotels, luxurious shopping malls, restaurants, pubs and cafes to overcrowded streets and alleyways, in the same cities, filled with thousands of little shops offering every possible modern and ethnic product and native street food is a fascinating experience.</p>
        </div>
        <div class="facts">
            &nbsp;
            <label class="factI">FACTS ABOUT INDIA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            &nbsp;<br />
            <br />
            <ul>
                <li>When many cultures were only nomadic forest dwellers over 5000 years ago, Indians established Harappan culture in Sindhu Valley (Indus Valley Civilization) The name &nbsp; 'India' is derived from the River Indus, the valleys around which were the home of the early settlers.
              
                </li>
                <li>The Aryan worshippers referred to the river Indus as the Sindhu.
                </li>
                <li>Chess was invented in India.
                </li>
                <li>Algebra, Trigonometry and Calculus are studies, which originated in India.
                </li>
                <li>The 'Place Value System' and the 'Decimal System' were developed in India in 100 B.C.

                </li>
                <li>India is the largest democracy in the world, the 7th largest Country in the world, and one of the most ancient civilizations.<br />
                </li>
                <li>Ayurveda is the earliest school of medicine known to mankind. 
              
                </li>
                <li>The Father of Medicine, Charaka, consolidated Ayurveda 2500 years ago.
                   
                </li>
                <li>The oldest European church and synagogue in India are in the city of Cochin. They were built in 1503 and 1568 respectively.
                </li>
                <li>Varanasi, also known as Benaras, was called "the Ancient City" when Lord Buddha visited it in 500 B.C., and is the oldest, continuously inhabited city in the world today.
            
             
                </li>

                <li>Yoga has its origins in India and has existed for over 5,000 years.

                </li>
            </ul>
        </div>

        <div class="climate">

            <label class="climate1">
                &nbsp;&nbsp;
            <br />
                &nbsp;&nbsp; INDIAN CLIMATE</label>
            <br />
            <br />

            <asp:Table ID="Table1" runat="server" CellPadding="0" CellSpacing="0">

                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">
                        <ul class="none">

                            <li>
                                <asp:Label runat="server" Text="SUMMER" ForeColor="#8D92AF" ID="Label1"></asp:Label>
                            </li>

                            <li>
                                <asp:Image ID="Image3" runat="server" Height="463px" ImageUrl="~/img/summer.jpg" Width="827px" Style="margin-top: 18px" />

                            </li>
                            <asp:Label ID="Label3" runat="server" Text="During the three months from April to June it is summer in most parts of India.Generally in the month of April, many parts of India experiences high temperature. The normal temperature recorded in this time in generally 30°C. But at some places in the plateau region the temperature rises to 40°C and in the Himalayan mountain region, it remains near about 20°C." Height="184px" Style="margin-top: 0px" Width="815px"></asp:Label>

                        </ul>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <ul class="none">

                            <li>
                                <asp:Label runat="server" Text="WINTER" ForeColor="#8D92AF" ID="Label2"></asp:Label></li>

                            <li>
                                <asp:Image ID="Image10" runat="server" Height="463px" ImageUrl="~/img/winter.jpg" Width="827px" Style="margin-top: 18px" />

                            </li>
                            <asp:Label ID="Label6" runat="server" Text="During the period from December to February there is winter season in India. During this time clouds and dry North-East Monsoon passes over different regions of India and temperature is decreased considerably. In Himalayan area the temperature is much lower (between 5°C and 10°C). But sometimes cyclone (coming from the West) causes storm and rainfall which is known as Western disturbance." Height="184px" Style="margin-top: 0px" Width="815px"></asp:Label>

                        </ul>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" Width="650px">
                    <asp:TableCell runat="server">
                        <ul class="none">

                            <li>
                                <asp:Label runat="server" Text="MONSUN" ForeColor="#424D50" ID="Label7"></asp:Label>
                            </li>

                            <li>
                                <asp:Image ID="Image4" runat="server" Height="446px" ImageUrl="~/img/rainy.jpg" Width="827px" Style="margin-top: 18px" />

                            </li>
                            <asp:Label ID="Label8" runat="server" Text="The rainy season in India begins generally from the second week of July and continues up to the second week of October. From the second week of June humid monsoon enters various parts of India and causes rainfall everywhere in the state." Height="184px" Style="margin-top: 0px" Width="821px"></asp:Label>

                        </ul>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <ul class="none">

                            <li>
                                <asp:Label runat="server" Text="SPRING" ForeColor="#CE97CF" ID="Label9"></asp:Label>

                            </li>
                            <li>
                                <asp:Image runat="server" ImageUrl="~/img/spring.jpg" Height="446px" Width="827px" ID="Image5" Style="margin-top: 18px"></asp:Image>

                            </li>
                            <li>
                                <asp:Label runat="server" Text="The advent of spring brings us the pleasant sound wind begins to blow. It refreshes our body and mind. The countryside appears to be adorned with green leaves and flowers. Birds sing and bees hum in the flower garden. Trees and creepers are covered with beautiful flowers. Bees hum all day long among them." ID="Label12" Height="184px" Style="margin-top: 0px" Width="815px"></asp:Label>

                            </li>

                        </ul>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>


        <div class="state">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" ForeColor="#CC6600" Height="52px" Width="340px">STATES OF INDIA</asp:Label>


            <asp:Table ID="Table2" runat="server" Style="margin-bottom: 23px; margin-left: 45px;" Width="1630px" Height="243px" CellPadding="0" CellSpacing="0">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Andhra Pradesh</asp:TableCell>
                    <asp:TableCell runat="server">Arunachal Pradesh</asp:TableCell>
                    <asp:TableCell runat="server">Assam</asp:TableCell>
                    <asp:TableCell runat="server">Bihar</asp:TableCell>
                    <asp:TableCell runat="server">Chhattisgarh</asp:TableCell>
                    <asp:TableCell runat="server">Goa</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Gujarat</asp:TableCell>
                    <asp:TableCell runat="server">Haryana</asp:TableCell>
                    <asp:TableCell runat="server">Himachal Pradesh</asp:TableCell>
                    <asp:TableCell runat="server">Jharkhand</asp:TableCell>
                    <asp:TableCell runat="server">Karnataka</asp:TableCell>
                    <asp:TableCell runat="server">Kerala</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Madhya Pradesh</asp:TableCell>
                    <asp:TableCell runat="server">Maharashtra</asp:TableCell>
                    <asp:TableCell runat="server">Manipur</asp:TableCell>
                    <asp:TableCell runat="server">Meghalaya</asp:TableCell>
                    <asp:TableCell runat="server">Mizoram</asp:TableCell>
                    <asp:TableCell runat="server">Nagaland</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Odisha</asp:TableCell>
                    <asp:TableCell runat="server">Punjab</asp:TableCell>
                    <asp:TableCell runat="server">Rajasthan</asp:TableCell>
                    <asp:TableCell runat="server">Sikkim</asp:TableCell>
                    <asp:TableCell runat="server">Tamil Nadu</asp:TableCell>
                    <asp:TableCell runat="server">Telangana</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Tripura</asp:TableCell>
                    <asp:TableCell runat="server">Uttar Pradesh</asp:TableCell>
                    <asp:TableCell runat="server">Uttarakhand</asp:TableCell>
                    <asp:TableCell runat="server">West Bengal</asp:TableCell>

                </asp:TableRow>
            </asp:Table>
            <br />
            <br />
            <br />


        </div>
        <div class="UNION">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" ForeColor="#CC6600" Height="43px" Width="340px">UNION TERRITORIES</asp:Label>


            <asp:Table ID="Table3" runat="server" Style="margin-bottom: 23px; margin-left: 45px;" Width="1630px" Height="94px" CellPadding="0" CellSpacing="0">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Andaman and Nicobar</asp:TableCell>
                    <asp:TableCell runat="server">Chandigarh</asp:TableCell>
                    <asp:TableCell runat="server">Dadra and Nagar Haveli</asp:TableCell>
                    <asp:TableCell runat="server">Daman and Diu</asp:TableCell>
                    <asp:TableCell runat="server">Delhi</asp:TableCell>
                    <asp:TableCell runat="server">Jammu and Kashmir</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Ladakh</asp:TableCell>
                    <asp:TableCell runat="server">Lakshadweep</asp:TableCell>
                    <asp:TableCell runat="server">Puducherry Pradesh</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <br />
            <br />


        </div>

    </form>

</body>
</html>
