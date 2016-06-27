<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MsgFilmSave.aspx.cs" Inherits="ASPX_UI.MsgFilmAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        De film is opgeslagen.<br /> 
        Klik op OK om doorgestuurd te worden naar de films.<br />
        <br /> <asp:Button ID="Btn_OK" runat="server" OnClick="Btn_OK_Click" Text="OK" />
    </div>
    </form>
</body>
</html>
