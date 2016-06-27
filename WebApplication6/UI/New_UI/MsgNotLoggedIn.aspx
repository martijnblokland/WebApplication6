<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MsgNotLoggedIn.aspx.cs" Inherits="WebApplication6.UI.New_UI.MsgNotLoggedIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        U bent nog niet ingelogd.<br /> 
        Klik op OK om doorgestuurd te worden om in te loggen.<br />
        <br /> <asp:Button ID="Btn_OK" runat="server" OnClick="Btn_OK_Click" Text="OK" />
    </div>
    </form>
</body>
</html>
