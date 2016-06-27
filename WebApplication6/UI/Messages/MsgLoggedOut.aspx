<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MsgLoggedOut.aspx.cs" Inherits="WebApplication6.UI.New_UI.LoggedOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        U bent succesvol uitgelogd.<br />
        Klik op OK om doorgestuurd te worden naar de homepagina.<br />
        <br /> <asp:Button ID="Btn_OK" runat="server" OnClick="Btn_OK_Click" Text="OK" />
    </div>
    </form>
</body>
</html>
