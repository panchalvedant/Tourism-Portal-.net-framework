<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kerela.aspx.cs" Inherits="PROJECT.kerela" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <title>Kerala</title>
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
         </div>        <div>
             <asp:Image ID="Image1" runat="server" Style=" Height:600px; Width:100%" ImageUrl="~/img/kerela1.jpg"  />
        </div>
       <div>
           <h1>Kerela</h1>
           <p>Lush green tea plantations, serene winding backwaters and spice plantations are a few features that define Kerala as one of the most popular tourist destinations in India. Popular as ‘God’s Own Country’ Kerala is a haven for travellers who come here to unwind in the salubrious climes, away from the concrete jungle. In a state where the topography ranges from cool hills to balmy sea beaches, Kerala is a sight for sore eyes. Here is a list of places which are a ‘must-see’ for all those visiting this tropical paradise.</p>
       </div>
        <div>
            <h1>Tourism</h1>
            <p>Kerala, a state situated on the tropical Malabar Coast of southwestern India, is one of the most popular tourist destinations in the country. Named as one of the ten paradises of the world by National Geographic Traveler, Kerala is famous especially for its ecotourism initiatives and beautiful backwaters. Its unique culture and traditions, coupled with its varied demography, have made Kerala one of the most popular tourist destinations in the world. Growing at a rate of 13.31%, the tourism industry is a major contributor to the state's economy.</p>
            <p[>Kerala is a popular destination for both domestic as well as foreign tourists. Kerala is well known for its beaches, backwaters in Alappuzha and Kollam, mountain ranges and wildlife sanctuaries. Other popular attractions in the state include the beaches at Kovalam, Muzhappilangad, Bekal and Kappad; backwater tourism and lake resorts around Ashtamudi Lake, Kollam; hill stations and resorts at Munnar, Wayanad, Nelliampathi, Vagamon and Ponmudi; and national parks and wildlife sanctuaries at Wayanad, Periyar, Parambikulam, Silent Valley National Park and Eravikulam National Park. The "backwaters" region—an extensive network of interlocking rivers, lakes, and canals that centre on Vembanad Lake, also see heavy tourist traffic. Heritage sites, such as the Padmanabhapuram Palace, Hill Palace, and Mattancherry Palace, are also visited. To further promote tourism in Kerala, the Grand Kerala Shopping Festival was started by the Government of Kerala in 2007. Since then it has been held every year during the December–January period.</p>
        </div>
        <div class="iocon">
            <h1 >Images</h1>
            <asp:Image ID="Image2" runat="server" Height="295px" Width="432px" ImageUrl="~/img/kerela2.jpg" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" Height="295px" Width="432px" ImageUrl="~/img/kerela3.jpeg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" Height="295px" Width="432px" ImageUrl="~/img/kerela4.jpg" />

        </div>
       <div>
           <h3>Map</h3>
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4016735.262130578!2d73.87826917130786!3d10.53268512311141!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b0812ffd49cf55b%3A0x64bd90fbed387c99!2sKerala!5e0!3m2!1sen!2sin!4v1632377467745!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
       </div>
        <div class="UNION">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;
            <h1>Tourism Places in Kerela</h1>
            <asp:Table ID="Table3" runat="server" style="margin-bottom: 23px; margin-left: 45px; Width:100% ; Height:94px;"  CellPadding="0" CellSpacing="0">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Alleppey</asp:TableCell>
                    <asp:TableCell runat="server">Kochi</asp:TableCell>
                    <asp:TableCell runat="server">Thekkady</asp:TableCell>
                    <asp:TableCell runat="server">Munnar</asp:TableCell>
                    <asp:TableCell runat="server">Thrissur</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Kovalam</asp:TableCell>
                    <asp:TableCell runat="server">Wayanad</asp:TableCell>
                    <asp:TableCell runat="server">Thiruvananthapuram</asp:TableCell>
                    <asp:TableCell runat="server">Kozhikode</asp:TableCell>
                    <asp:TableCell runat="server">Kannur</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
        <div>
            <h4>Hotels in Kerela</h4>
<a href="https://www.booking.com/region/in/kerala.en.html?aid=324798;label=kerala-U6LrTii02bXku1EL8brEGAS388400046196:pl:ta:p11500:p2:ac:ap:neg:fi:tikwd-186651796:lp1007759:li:dec:dm:ppccp=UmFuZG9tSVYkc2RlIyh9YcWHiCDB7igB8XpJKYgu4TM;ws=&gclid=CjwKCAjwy7CKBhBMEiwA0Eb7ann_WBf_PagXJVzJlEmh0hVUANd8eGpKWU_RUL6utX_guQCWQh295hoCHyIQAvD_BwE" >Click here</a>        
            <h4>For More Information</h4>
<a href="https://www.keralatourism.org/" >Click here</a>         
            <br />
        </div>
        <div class="footer">
         <h3 style="background-color:#003366">Email:indiantourism@gov.in </h3> 
          <h3 style="background-color:#003366"> ©2021 IndianTourism</h3>
        </div>
    </form>
</body>
</html>
