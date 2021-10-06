<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Khajuraho.aspx.cs" Inherits="PROJECT.Khajuraho" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <title>Khajuraho</title>
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
             <asp:Image ID="Image1" runat="server" Style=" Height:600px; Width:100%" ImageUrl="~/img/khajuraho1.jpg"  />
        </div>
       <div>
           <h1>History</h1>
           <p>Most Khajuraho temples were built between 885 AD and 1050 AD by the Chandela dynasty.Historical records note that the Khajuraho temple site had 85 temples by the 12th century, spread over 20 square kilometers. Of these, only about 25 temples have survived, spread over six square kilometers.</p>
           <p>The Khajuraho group of monuments was built during the rule of the Chandela dynasty. The building activity started almost immediately after the rise of their power, throughout their kingdom to be later known as Bundelkhand</p>
           <p>Most temples were built during the reigns of the Hindu kings Yashovarman and Dhanga. Yashovarman's legacy is best exhibited by the Lakshmana Temple. Vishvanatha temple best highlights King Dhanga's reign. The largest and currently most famous surviving temple is Kandariya Mahadeva built in the reign of King Vidyadhara. The temple inscriptions suggest many of the currently surviving temples were complete between 970 and 1030 AD, with further temples completed during the following decades.</p>
       </div>
        <div>
            <h1>
                Description
            </h1>
            <p>The temple site is within Vindhya mountain range in central India. An ancient local legend held that Hindu deity Shiva and other gods enjoyed visiting the dramatic hill formation in Kalinjar area. The center of this region is Khajuraho, set midst local hills and rivers. The temple complex reflects the ancient Hindu tradition of building temples where gods love to pray.</p>
            <p>All temples, except one (Chaturbhuja) face the sunrise – another symbolic feature that is predominant in Hindu temples. The relative layout of temples integrate masculine and feminine deities and symbols highlight the interdependence. The artworks symbolically highlight the four goals of life considered necessary and proper in Hinduism – dharma, kama, artha and moksha.</p>
            <p>Of the surviving temples, six are dedicated to Shiva, eight to Vishnu and his affinities, one to Ganesha, one to Sun god, three to Jain Tirthankars. For some ruins, there is insufficient evidence to assign the temple to specific deities with confidence.</p>
        </div>
        <div class="iocon">
            <h1 >Images</h1>
            <asp:Image ID="Image2" runat="server" Height="295px" Width="432px" ImageUrl="~/img/Khajuraho2.jpg" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" Height="295px" Width="432px" ImageUrl="~/img/khajuraho3.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" Height="295px" Width="432px" ImageUrl="~/img/khajuraho4.jpg" />

        </div>
       <div>
           <h3>Map</h3>
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d57935.8658692674!2d79.87672028881103!3d24.829960301325322!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3982e5f63138c3c5%3A0xaa20ea639a4572c!2sKhajuraho%2C%20Madhya%20Pradesh%20471606!5e0!3m2!1sen!2sin!4v1632336023766!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
       </div>
        <div class="UNION">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;
            <h1>Temples in Khajuraho Monuments</h1>
            <asp:Table ID="Table3" runat="server" style="margin-bottom: 23px; margin-left: 45px; Width:100% ; Height:94px;"  CellPadding="0" CellSpacing="0">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Chausath Yogini</asp:TableCell>
                    <asp:TableCell runat="server">Lalguan Mahadev</asp:TableCell>
                    <asp:TableCell runat="server">Brahma Temple</asp:TableCell>
                    <asp:TableCell runat="server">Lakshmana</asp:TableCell>
                    <asp:TableCell runat="server">Varaha</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                     <asp:TableCell runat="server">Parshvanatha</asp:TableCell>
                    <asp:TableCell runat="server">Ghantai</asp:TableCell>
                    <asp:TableCell runat="server">Mahishasuramardini</asp:TableCell>
                    <asp:TableCell runat="server">Vishvanatha</asp:TableCell>
                    <asp:TableCell runat="server">Matangeshwar</asp:TableCell>
                      </asp:TableRow>
            
            <asp:TableRow runat="server">
                     <asp:TableCell runat="server">Vishnu-Garuda</asp:TableCell>
                    <asp:TableCell runat="server">Beejamandal Temple ruins</asp:TableCell>
                    <asp:TableCell runat="server">Ganesha</asp:TableCell>
                    <asp:TableCell runat="server">Jagadambi</asp:TableCell>
                    <asp:TableCell runat="server">Chitragupta</asp:TableCell>
                      </asp:TableRow>
            
            <asp:TableRow runat="server">
                     <asp:TableCell runat="server">Adinath Temple</asp:TableCell>
                    <asp:TableCell runat="server">Shantinatha temple</asp:TableCell>
                    <asp:TableCell runat="server">Kandariya Mahadeva (the largest temple)</asp:TableCell>
                    <asp:TableCell runat="server">Vamana</asp:TableCell>
                    <asp:TableCell runat="server">	Javeri</asp:TableCell>
                      </asp:TableRow>
            
            <asp:TableRow runat="server">
                     <asp:TableCell runat="server">Chaturbhuja</asp:TableCell>
                    <asp:TableCell runat="server">Duladeo (Duladeva)</asp:TableCell>
                      </asp:TableRow>
            </asp:Table>
            </div>
        <div>
            <h4>Hotels Near Khajuraho</h4>
            <a href="https://www.booking.com/placestostay/city/in/khajuraho.en-gb.html?aid=377400;label=khajuraho-Ov2uIF0qkbV1wPIpLwLqcwS541035723781%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-11445137715%3Alp9061748%3Ali%3Adec%3Adm;sid=da81b6857df16de133baf44672ee48e1" >Click Here</a>
            <h4>For More Information</h4>
            <a href="https://whc.unesco.org/en/list/240/">Click here</a>
            <br />
        </div>
        <div class="footer">
         <h3 style="background-color:#003366">Email:indiantourism@gov.in </h3> 
          <h3 style="background-color:#003366"> ©2021 IndianTourism</h3>
        </div>
    </form>
</body>
</html>

