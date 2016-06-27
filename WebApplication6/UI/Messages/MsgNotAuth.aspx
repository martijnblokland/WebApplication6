<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MsgNotAuth.aspx.cs" Inherits="WebApplication6.UI.New_UI.Auth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        U hebt niet de juiste rechten om deze pagina te bekijken. <br /> 
        Klik op OK om doorgestuurd te worden naar uw dashboard.<br />
        <br /><asp:Button ID="Btn_OK" runat="server" OnClick="Btn_OK_Click" Text="OK" />
    </div>
    </form>
</body>
</html>
