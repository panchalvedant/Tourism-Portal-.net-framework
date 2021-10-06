<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PROJECT.Login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login System</title>
    <link rel="stylesheet" href="css/LoginStyle.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>
    <div class="container">
        <form action="#" runat="server">
            <h1 class="form_text">
                Welcome
            </h1>
            <div class="form_image">
                <img src="img/L2.jpg" alt="userphoto" />
            </div>

            <div class="form_group">
                <i class="fas fa-envelope"></i>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Username" CssClass="inputbox"></asp:TextBox>
            </div>
            <div class="form_group">
                <i class="fas fa-lock"></i>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" CssClass="inputbox"></asp:TextBox>
            </div>
            <div class="font_bottom">
                <div class="check">
                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkbox" />
                    <label>Remember me</label>
                </div>

                <a href="#" class="forgot">
                    Forgot Password
                </a>
                <br />
                <a href="Registration.aspx" class="register">
                    New User Registration
                </a>
            </div>

            <div class="button">
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="btn" />
                <br />
            </div>

            <asp:Label ID="Label1" runat="server" Text="" CssClass="labeltext"></asp:Label>
        </form>
    </div>
</body>
</html>
