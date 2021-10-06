<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="North east India.aspx.cs" Inherits="PROJECT.North_east_India" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <title>East India</title>
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
             <asp:Image ID="Image1" runat="server" Style=" Height:600px; Width:100%" ImageUrl="~/img/eastIndia4.jpg"  />
        </div>
       <div>
           <h1>Seven Sisters</h1>
           <p>Northeast India  is the easternmost region of India representing both a geographic and political administrative division of the country. It comprises eight states – Arunachal Pradesh, Assam, Manipur, Meghalaya, Mizoram, Nagaland, Tripura and Sikkim.</p>
           
       </div>
        <div>
            <h1>
                Tourism
            </h1>
            <p>Hilly terrains or the snow-capped mountains, national parks or lush green pastures, wildlife or birds, glistening lakes or roaring waterfalls; North East India has got it all! This part of India offers a huge diversity not only in terms of cultures, but also the landforms. With beautiful hilly terrains, breathtaking snow-capped mountains, lush green pastures, sparkling lakes, grumbling waterfalls and abundant wildlife, north eastern part of India is pure bliss.</p>
            <p>Comprising of the seven sisters; Arunachal Pradesh, Sikkim, Assam, Mizoram, Nagaland, Tripura, Meghalaya, and Manipur, this area is a cluster of some of the wonders of India. Assam is the most developed area of Northeast India and is a relatively accessible state in this isolated region.</p>
            <p>Sikkim is a home to the 3rd highest mountain peak of the world, the Kanchenjunga that offers subtle views of the mountain ranges. There’s feisty women weavers and potters that make Imphal stand out from the rest of the region. Coming to other areas like Shillong, Tripura, and Gangtok; they boast of a rich culture with deep-rooted traditions and customs that showcase the cultural and aesthetic beauty of the region. In addition to that, the natural beauty of the region needs to be experienced at least once to fully comprehend.</p>
        </div>
        <div class="iocon">
            <h1 >Images</h1>
            <asp:Image ID="Image2" runat="server" Height="295px" Width="432px" ImageUrl="~/img/eastIndia1.jpeg" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" Height="295px" Width="432px" ImageUrl="~/img/eastIndia3.jpeg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" Height="295px" Width="432px" ImageUrl="~/img/east india2.jpg" />

        </div>
       <div>
           <h3>Map</h3>
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15633547.389408236!2d78.78567921006356!3d16.935942229741034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30af37d8438dcfa1%3A0xd6323b6cd9419ad8!2sEast%20India!5e0!3m2!1sen!2sin!4v1632377421511!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
       </div>
        <div class="UNION">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;
            <h1>Tourism Places in North east India</h1>
            <asp:Table ID="Table3" runat="server" style="margin-bottom: 23px; margin-left: 45px; Width:100% ; Height:94px;"  CellPadding="0" CellSpacing="0">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Kaziranga National Park</asp:TableCell>
                    <asp:TableCell runat="server">Tawang Monastery</asp:TableCell>
                    <asp:TableCell runat="server">Nathu La Pass</asp:TableCell>
                    <asp:TableCell runat="server">Cherrapunji</asp:TableCell>
                     <asp:TableCell runat="server">Assam Tea Gardens</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">	Shillong</asp:TableCell>
                    <asp:TableCell runat="server">	Manas National Park</asp:TableCell>
                    <asp:TableCell runat="server">Mon</asp:TableCell>
                    <asp:TableCell runat="server">Pellingy</asp:TableCell>
                     <asp:TableCell runat="server">Sikkim</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
        <div>
            <h4>Hotels in North east India</h4>
            <a href="https://www.tripadvisor.in/ShowUserReviews-g503692-d9607549-r389965570-Vivanta_Guwahati-Guwahati_Kamrup_Metropolitan_District_Assam.html" >Click here</a>
            <h4>For More Information</h4>
            <a href="http://necouncil.gov.in/north-east-india/tourism-attractions" >Click here</a>
            <br />
        </div>
        <div class="footer">
         <h3 style="background-color:#003366">Email:indiantourism@gov.in </h3> 
          <h3 style="background-color:#003366"> ©2021 IndianTourism</h3>
        </div>
    </form>
</body>
</html>
