﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="PROJECT.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
            
            <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Record Found !" ShowHeaderWhenEmpty="true" ></asp:GridView>

        </div>
    </form>
</body>
</html>
