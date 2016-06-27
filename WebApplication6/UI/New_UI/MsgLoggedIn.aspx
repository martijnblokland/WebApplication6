<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MsgLoggedIn.aspx.cs" Inherits="WebApplication6.UI.New_UI.LoggedIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        U bent reeds ingelogd.<br /> 
        Klik op OK om doorgestuurd te worden naar uw dashboard.<br />
        <br /> <asp:Button ID="Btn_OK" runat="server" OnClick="Btn_OK_Click" Text="OK" />
    </div>
    </form>
</body>
</html>
