<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Leh Ladakh.aspx.cs" Inherits="PROJECT.Leh_Ladakh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <title>Leh Ladakh</title>
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
             <asp:Image ID="Image1" runat="server" Style=" Height:600px; Width:100%" ImageUrl="~/img/leh1.jpg"  />
        </div>
       <div>
           <h1>Leh Ladakh</h1>
           <p>Hemis, Alchi, Lamayuru, Shey and Thiksay are some of the most popular monasteries of Ladakh which attract both domestic as well as foreign tourist.Pangong lake(Half in China) and world highest motorable road Khardongla (18350 fts) is main attraction for domestic tourist, and monasteries and mountains are for foreign tourist.</p>
           <p>Undoubtedly, you will emerge a changed person after your Ladakh tour. The people of Ladakh are friendly and there’s a sense of spirituality in the air. You can sense it as soon as you enter Ladakh. The many Tibetan monasteries contribute to this. But the wide expanse of the sky, the land and the mountains make you realise how tiny and insignificant we are in the whole grand design of the universe. The land might be barren, but it comes alive with the people here whose love for their land and simple joys infuse the landscape with life.</p>
       </div>
        <div>
            <h1>
                Tourism
            </h1>
            <p>
                Tourism has won a wide recognition as an important industry in the district in view of its potential for creation of employment opportunities and generation of income on a large scale. This industry has a direct bearing on the socio-economic scene of the district. Tourism industry provides employment to a large number of people engaged in the related sectors like transport, Hotels and catering service, cottage industry etc. Tourism promotes economic activities in the remote areas.
            </p>
            <p>Since its opening for the tourist (1974), Leh has registered an increasing number of tourists attracted towards it, because of its landscape, culture, tradition environment etc. and still has much potential for adventure tourism.

Leh figures on the international tourist map and attracts a large inflow of tourists both from home and abroad. The economy of the region is therefore, based on tourism. That is why Leh is abounds in Hotels, guest houses and taxis. There are 250 hotels, guest house of different classes in Leh.</p>
            <p>Hemis, Alchi, Lamayuru, Shey and Thiksay are some of the most popular monasteries of Ladakh which attract both domestic as well as foreign tourist.Pangong lake(Half in China) and world highest motorable road Khardongla (18350 fts) is main attraction for domestic tourist, and monasteries and mountains are for foreign tourist.</p>
        </div>
        <div class="iocon">
            <h1 >Images</h1>
            <asp:Image ID="Image2" runat="server" Height="295px" Width="432px" ImageUrl="~/img/leh2.jpg" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" Height="295px" Width="432px" ImageUrl="~/img/leh3.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" Height="295px" Width="432px" ImageUrl="~/img/leh4.jpeg" />

        </div>
       <div>
           <h3>Map</h3>
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d52819.542424993546!2d77.53163286950948!3d34.16625665265621!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38fdeb21445fed85%3A0xd1bb09975086f710!2sLeh!5e0!3m2!1sen!2sin!4v1632388980715!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
       </div>
        <div class="UNION">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;
            <h1>Tourism Places in Leh Ladakh</h1>
            <asp:Table ID="Table3" runat="server" style="margin-bottom: 23px; margin-left: 45px; Width:100% ; Height:94px;"  CellPadding="0" CellSpacing="0">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Pangong Tso Lake</asp:TableCell>
                    <asp:TableCell runat="server">Shanti Stupa</asp:TableCell>
                    <asp:TableCell runat="server">Tso Moriri Lake</asp:TableCell>
                    <asp:TableCell runat="server"> Leh Palace</asp:TableCell>
                     <asp:TableCell runat="server">Khardung La Pass</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Magnetic Hill</asp:TableCell>
                    <asp:TableCell runat="server">Nubra Valley</asp:TableCell>
                    <asp:TableCell runat="server">Namgyal Tsemo Gompa</asp:TableCell>
                    <asp:TableCell runat="server">Spituk Monastery</asp:TableCell>
                     <asp:TableCell runat="server">Hall of Fame Museum</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
        <div>
            <h4>Hotels in Leh Ladakh</h4>
 <a href="https://www.booking.com/city/in/leh.en.html?aid=306395;label=leh-l1IbtIb2ShBLEuTX7i24UwS151853094183:pl:ta:p1:p2:ac:ap:neg:fi:tiaud-1110454565467:kwd-2701953470:lp1007759:li:dec:dm:ppccp=UmFuZG9tSVYkc2RlIyh9YZVcNNsENnH02-pWD53qm9c;ws=&gclid=CjwKCAjwy7CKBhBMEiwA0Eb7aoxDMFwqQ9OnqdfdMZzWDQ6oYRvVRFvi5vuabcRv2xhqucBmimgqKxoCZVkQAvD_BwE" >Click here</a>
            <h4>For More Information</h4>
 <a href="https://ladakh.nic.in/tourism/" >Click here</a>            <br />
        </div>
        <div class="footer">
         <h3 style="background-color:#003366">Email:indiantourism@gov.in </h3> 
          <h3 style="background-color:#003366"> ©2021 IndianTourism</h3>
        </div>
    </form>
</body>
</html>
