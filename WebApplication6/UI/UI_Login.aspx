<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UI_Login.aspx.cs" Inherits="WebApplication6.UI.UI_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    </div>
        <p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        <p style="height: 42px">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <asp:Label ID="Label2" runat="server" Text="Naam :"></asp:Label>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Functie :"></asp:Label>
        </p>
    </form>
</body>
</html>
