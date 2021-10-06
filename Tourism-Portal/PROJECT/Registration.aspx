<% @ Page Language="C#"  AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="PROJECT.Registration" %>

<!DOCTYPE html>
    
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title> ONLINE TOURISM PORTAL</title>
    <link rel="stylesheet" href="css/Trasnparent.css" />
</head>
<body>
    <div class="Registration-box">
        <img src="img/download.png" />
        <h2>Registration Form</h2>
        <form id="form1" runat="server">
            <div class="form-content">
                <label>UserName:</label>
               <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter UserName" CssClass="inputbox" Height="20px" Width="317px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Username must conatin numeriac and alphabetic value Do not use special character." ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>

                <label>Name:</label>
               <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Name" CssClass="inputbox" Width="316px"></asp:TextBox>

                <label>Email:</label>
               <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Email" CssClass="inputbox" Width="319px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter valid Email" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>

                <label>Password:</label>
               <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Password" CssClass="inputbox" Width="318px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Password must contain One capital later One Small latter One Number and One Special Character" ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="[A-Za-z0-9]{10}"></asp:RegularExpressionValidator>

                <label>ConfirmPassword:</label>
               <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter ConfirmPassword" CssClass="inputbox" Width="321px"></asp:TextBox>

                <label>Address:</label>
               <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Address" CssClass="inputbox" Width="317px"></asp:TextBox>

                <label>Mobile Number:</label>
               <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter Mobile number" CssClass="inputbox" Width="316px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Enter Valid MobileNumber" ControlToValidate="TextBox7" ForeColor="Red"  ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                
               <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button2_click" />
                
               <asp:Label ID="Label1" runat="server" Text="" CssClass="labeltext"></asp:Label>
            </div>
        
    </form>

 </div>
    
</body>
</html>