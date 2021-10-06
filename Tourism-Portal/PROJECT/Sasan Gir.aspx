<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sasan Gir.aspx.cs" Inherits="PROJECT.Sasan_Gir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/home.css" type="text/css" />
    <title>Sasan Gir</title>
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
             <asp:Image ID="Image1" runat="server" Style=" Height:600px; Width:100%" ImageUrl="~/img/sasan1.jpg"  />
        </div>
       <div>
           <h1>Sasan Gir</h1>
            <p>Gir National Park and Wildlife Sanctuary, also known as Sasan Gir, is a forest, national park, and wildlife sanctuary near Talala Gir in Gujarat, India. It is located 43 km (27 mi) north-east of Somnath, 65 km (40 mi) south-east of Junagadh and 60 km (37 mi) south-west of Amreli. It was established in 1965 in the erstwhile Nawab of Junagarh's private hunting area, with a total area of 1,412 km2 (545 sq mi), of which 258 km2 (100 sq mi) is fully protected as national park and 1,153 km2 (445 sq mi) as wildlife sanctuary.</p>
           <p>
               The Asiatic lion's habitat is dry scrub land and open deciduous forest. The lion population increased from 411 individuals in 2010 to 523 in 2015, and all of them live in or around Gir National Park.
           </p>
           <p>
               Gir National Park and Sanctuary does not have a designated area for tourists. However, to reduce the tourism hazard to the wildlife and to promote nature education, an Interpretation Zone has been created at Devalia within the sanctuary. 
           </p>
           <p>

           </p>
       </div>
        <div class="iocon">
            <h1 >Images</h1>
            <asp:Image ID="Image2" runat="server" Height="295px" Width="432px" ImageUrl="~/img/sasan2.jpg" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" Height="295px" Width="432px" ImageUrl="~/img/sasan3.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" Height="295px" Width="432px" ImageUrl="~/img/sasan4.jpg" />

        </div>
       <div>
           <h3>Map</h3>
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3720.575585765726!2d70.59482955047756!3d21.169281985853345!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be2b737f7d6a257%3A0xc25d1393aad1de08!2sSasan%20Gir%2C%20Gujarat%20362135!5e0!3m2!1sen!2sin!4v1632389000493!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
       </div>
        <div class="UNION">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;
            <h1>Tourism Places in Sasan Gir</h1>
            <asp:Table ID="Table3" runat="server" style="margin-bottom: 23px; margin-left: 45px; Width:100% ; Height:94px;"  CellPadding="0" CellSpacing="0">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Gir National Park</asp:TableCell>
                    <asp:TableCell runat="server">Kamleshwar Dam</asp:TableCell>
                    <asp:TableCell runat="server">Durbar Hall Museum</asp:TableCell>
                    <asp:TableCell runat="server">Uparkot Fort</asp:TableCell>
                     
                </asp:TableRow>
                 <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Nalsarovar Lake</asp:TableCell>   
                </asp:TableRow>
            </asp:Table>
            </div>
        <div>
            <h4>Hotels in Sasan Gir</h4>
 <a href="https://www.booking.com/city/in/sasa.en.html?aid=306395;label=sasa-dBYFAwTidOcbvtPjvh_nQgS383339580446:pl:ta:p120:p2:ac:ap:neg:fi:tiaud-1110454565467:kwd-1698795609:lp1007759:li:dec:dm:ppccp=UmFuZG9tSVYkc2RlIyh9YZVcNNsENnH02-pWD53qm9c;ws=&gclid=CjwKCAjwy7CKBhBMEiwA0Eb7amgAr5VgMqwLUEwjaKaW8ayAlphFrynQzgDzz42aQpMv9Vhu3PUYdRoCpV4QAvD_BwE" >Click here</a>    
            <h4>For More Information</h4>
            <a href="https://www.girnationalpark.in/" >Click here</a>
            <br />
        </div>
        <div class="footer">
         <h3 style="background-color:#003366">Email:indiantourism@gov.in </h3> 
          <h3 style="background-color:#003366"> ©2021 IndianTourism</h3>
        </div>
    </form>
</body>
</html>

