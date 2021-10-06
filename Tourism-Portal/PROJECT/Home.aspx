<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PROJECT.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <title>TourismPortal</title>
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
   
    <style>
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

        .dropbtn {
              background-color: #4CAF50;
              color: white;
              padding: 16px;
              font-size: 16px;
              border: none;
        }

        .dropdown {
              position: relative;
              display: inline-block;
        }

        .dropdown-content {
              display: none;
              position: absolute;
              background-color: #f1f1f1;
              min-width: 160px;
              box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
              z-index: 1;
        }

        .dropdown-content a {
              color: black;
              padding: 12px 16px;
              text-decoration: none;
              display: block;
        }

        .dropdown-content a:hover {background-color: #ddd;}

        .dropdown:hover .dropdown-content {display: block;}

        .dropdown:hover .dropbtn {background-color: #3e8e41;}


          
       
    </style>

</head>
<body class="background">
    <form id="form1" runat="server">
        <div class="topnav" style="width: 100%">
           <a class="active" href="Home.aspx">Home</a>
            <a href="Login.aspx">Login</a>
            <a href="india.aspx">About India </a>    
        <a>   <asp:TextBox id="sew_searchBox" runat="server"   placeholder="Search..."  BorderStyle="Groove"  border-radius="30px"  Font-Overline="True" Font-Size="25px" Width="253px"></asp:TextBox>
           &nbsp; &nbsp;</a><a><asp:Button ID="Button1" runat="server" OnClick="Button1_Click"   style = "Font-Size:25px ; " Height="40px"  />
            </a>
         </div>
        <div class="dropdown">
              <button class="dropbtn">Choose Your Destination:</button>
              <div class="dropdown-content">
                <a href="goa.apsx">goa</a>
                <a href="Taj Mahal.aspx">Taj Mahal</a>
                <a href="Statue Of Unity.aspx">Statue Of Unity</a>
                <a href="jaipur.aspx">Jaipur</a>
                <a href="kerela.aspx">Kerela</a>
                <a href="Khajuraho.aspx">Khajuraho</a>
                <a href="Leh Ladakh.aspx">Leh Ladakh</a>
                <a href="Sasan Gir.aspx">sasan Gir</a>
                <a href="North east India.aspx">North East India</a>

                 
              </div>
        </div>
        
        <div class="slideshow-container">

            <div class="mySlides fade">

                <img src="img/lion.jpg" style="width: 100%; height: 600px" />

            </div>

            <div class="mySlides fade">

                <img src="img/home.jpg" style="width: 100%; height: 600px" />

            </div>

            <div class="mySlides fade">

                <img src="img/home2.jpg" style="width: 100%; height: 600px" />

            </div>

        </div>
        <br />

        <div style="text-align: center">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
            <br />
        </div>
        <script>
            var slideIndex = 0;
            showSlides();

            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) { slideIndex = 1 }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                setTimeout(showSlides, 5000); // Change image every 5 seconds
            }
        </script>
        <h1>Welcome to the Beauty of India</h1>
        <div>
            <h4>India as a country is known for its unique culture, heritage, temple style, variety of rivers and wildlife. The country is surrounded by the mighty Himalayas, deep Arabian Sea, Bay of Bengal and the Indian Ocean. The Indians civilization and culture inherit the tradition of Atithi Devo Bhava (The Guest is like God) from the time immemorial. India also boasts for substantially diverse physical, political and multi-lingual society and offers a lot to explore through its voluminous vivid recreation and adventure activities. Because of its diverse attractions and geographic location, India attracts a large number of tourists from all around the globe besides a large number of domestic tourists. India is therefore considered as an important tourist hotspot offering an array of experiences to the tourists.

The intensifying influence of tourism as an economic powerhouse and its potential as a tool for regional development are indisputable. It is growing progressively and contributing immensely to the inclusive economic development of the nation at one end and employment generation for the stakeholders on the other end. On the basis of its tourism resources and attractions, tourism in India can broadly be classified into cultural and heritage tourism, eco and sustainable tourism, religious/pilgrimage tourism, wildlife and nature-based tourism, medical tourism, leisure and beach tourism, MICE and event tourism, creative tourism, etc.
            </h4>
        </div>
        <h2>Top Destinations</h2>
        <div class="iocon">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="295px" ImageUrl="~/img/1386038.jpg" Style="margin-top: 0px; border: 5px solid #003366;" Width="432px" OnClick="ImageButton1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="295px" ImageUrl="~/img/mp.jpg" Style="border: 5px solid #003366;" Width="432px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" Height="295px" ImageUrl="~/img/jaipur.jpg" Style="border: 5px solid #003366;" Width="432px" />
            <br />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton4" runat="server" Height="295px" ImageUrl="~/img/goa.jpeg" Style="border: 5px solid #003366;" Width="432px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton5" runat="server" Height="295px" ImageUrl="~/img/agrapalace.jpg" Style="border: 5px solid #003366;" Width="432px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton6" runat="server" Height="295px" ImageUrl="~/img/kerala1.jpg" Style="border: 5px solid #003366;" Width="432px" />
            <br />
            <br />
            <br />
            <br />
        </div>
        <div class="footer">
            <a href="https://www.facebook.com" class="fa fa-facebook"></a>
            <a href="https://twitter.com/" class="fa fa-twitter"></a>
            <a href="https://www.youtube.com/" class="fa fa-youtube"></a>
            <a href="https://www.instagram.com/" class="fa fa-instagram"></a>
            <br />
            <h3 style="background-color: #003366">Email:indiantourism@gov.in </h3>
            <h3 style="background-color: #003366">©2021 IndianTourism</h3>
        </div>
    </form>
</body>
</html>
