<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MsgPersoneelSave.aspx.cs" Inherits="WebApplication6.UI.New_UI.MsgPersoneelSave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Het personeel is opgeslagen.<br /> 
        Klik op OK om doorgestuurd te worden naar het personeel.<br />
        <br /> <asp:Button ID="Btn_OK" runat="server" OnClick="Btn_OK_Click" Text="OK" />
    </div>
    </form>
</body>
</html>
