<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Taj Mahal.aspx.cs" Inherits="PROJECT.Taj_Mahal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <title>Taj Mahal</title>
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
             <asp:Image ID="Image1" runat="server" Style=" Height:600px; Width:100%" ImageUrl="~/img/Taj_Mahal_Sunset_Edit1.jpg"  />
        </div>
       <div>
           <h1>History</h1>
           <p>The Taj Mahal  is an ivory-white marble mausoleum on the southern bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan (reigned from 1628 to 1658) to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself.</p>
           <p>Construction of the mausoleum was essentially completed in 1643, but work continued on other phases of the project for another 10 years. The Taj Mahal complex is believed to have been completed in its entirety in 1653 at a cost estimated at the time to be around 32 million rupees.</p>
           <p>The Taj Mahal was commissioned by Shah Jahan in 1631, to be built in the memory of his wife Mumtaz Mahal, who died on 17 June that year, while giving birth to their 14th child, Gauhara Begum.Construction started in 1632 and the mausoleum was completed in 1648, while the surrounding buildings and garden were finished five years later.The imperial court documenting Shah Jahan's grief after the death of Mumtaz Mahal illustrates the love story held as the inspiration for the Taj Mahal</p>
       </div>
        <div>
            <h1>
                Tourism
            </h1>
            <p>The Taj Mahal attracts a large number of tourists. UNESCO documented more than 2 million visitors in 2001, which had increased to about 7–8 million in 2014. A two-tier pricing system is in place, with a significantly lower entrance fee for Indian citizens and a more expensive one for foreigners. In 2018, the fee for Indian citizens was 50 INR, for foreign tourists 1,100 INR. Most tourists visit in the cooler months of October, November and February. Polluting traffic is not allowed near the complex and tourists must either walk from parking areas or catch an electric bus. The Khawasspuras (northern courtyards) are currently being restored for use as a new visitor centre. In 2019, in order to address overtourism, the site instituted fines for visitors who stayed longer than three hours.</p>
            <p>Foreign dignitaries often visit the Taj Mahal on trips to India. Notable figures who have travelled to the site include Dwight Eisenhower, Jacqueline Kennedy, Jimmy Carter, George H.W. Bush, George Harrison, Mark Zuckerberg, Vladimir Putin, Princess Diana, Donald Trump, and Justin Trudeau.</p>
        </div>
        <div class="iocon">
            <h1 >Images</h1>
            <asp:Image ID="Image2" runat="server" Height="295px" Width="432px" ImageUrl="~/img/Taj_Mahal_Mosque_Interior_Hall.jpg" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" Height="295px" Width="432px" ImageUrl="~/img/taj1.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" Height="295px" Width="432px" ImageUrl="~/img/taj2.jpg" />

        </div>
       <div>
           <h3>Map</h3>
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d113581.87253403035!2d77.97220740094993!3d27.174108306913727!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39747121d702ff6d%3A0xdd2ae4803f767dde!2sTaj%20Mahal!5e0!3m2!1sen!2sin!4v1632333892363!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
       </div>
        <div class="UNION">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;
            <h1>Tourism Places Near Taj Mahal</h1>
            <asp:Table ID="Table3" runat="server" style="margin-bottom: 23px; margin-left: 45px; Width:100% ; Height:94px;"  CellPadding="0" CellSpacing="0">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Agra Fort</asp:TableCell>
                    <asp:TableCell runat="server">Agra's Other Tombs</asp:TableCell>
                    <asp:TableCell runat="server">Mehtab Bagh</asp:TableCell>
                    <asp:TableCell runat="server">The Bazaars of the Old City</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                     <asp:TableCell runat="server">Agra Bear Rescue Center</asp:TableCell>
                    <asp:TableCell runat="server">Fatehpur Sikri</asp:TableCell>
                    <asp:TableCell runat="server">Mankameshwar Temple</asp:TableCell>
                      </asp:TableRow>
            </asp:Table>
            </div>
        <div>
            <h4>Hotels Near Tajmahal</h4>
            <a href="https://www.booking.com/landmark/in/taj-mahal.en.html?aid=314920;label=taj-mahal-f8TjeGiBh_bGPHdeq5sOuwS275053809537:pl:ta:p1:p2:ac:ap:neg:fi:tikwd-4235694487:lp9061748:li:dec:dm:ppccp=UmFuZG9tSVYkc2RlIyh9YZnKoGAh3tLoA_MNQwn0RI8;ws=&gclid=Cj0KCQjwqKuKBhCxARIsACf4XuGerpxneBMm9JnpMgxdYamFiPFKFfY8p2VmzboJgH3RcNHJ8pYnuRYaAtHBEALw_wcB" >Click Here</a>
            <h4>For More Information</h4>
            <a href="https://www.tourism-of-india.com/taj-mahal-agra.html" >Click here</a>
            <br />
        </div>
        <div class="footer">
         <h3 style="background-color:#003366">Email:indiantourism@gov.in </h3> 
          <h3 style="background-color:#003366"> ©2021 IndianTourism</h3>
        </div>
    </form>
</body>
</html>
