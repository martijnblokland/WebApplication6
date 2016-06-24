<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UI_Gebruikersaccounts.aspx.cs" Inherits="WebApplication6.UI.UI_Gebruikersaccounts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #placeholder {
            display: block;
            width: 1000px;
            height: inherit;
        }

        .IDLabel {
            float: left;
            width: 15%;
            height: 20px;
        }

        .GebruikerNaamLabel {
            float: left;
            width: 30%;
            height: 20px;
        }

        .WachtwoordLabel {
            float: left;
            width: 30%;
            height: 20px;
        }

        .AdminLabel {
            float: left;
            width: 15%;
            height: 20px;
        }

        .AdminCheckBox {
            float: left;
            width: 10%;
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div id="editor">
        <asp:TextBox ID="IDTextBox" runat="server" Width="80px">ID</asp:TextBox>
        <asp:TextBox ID="GebruikerNaamTextBox" runat="server" Width="160px">Nieuwe Gebruikernaam</asp:TextBox>
        <asp:TextBox ID="WachtwoordTextBox" runat="server" Width="160px">Nieuw Wachtwoord</asp:TextBox>
        <asp:CheckBox ID="AdminCheckBox" runat="server" Text="Administrator" />
        <asp:Button ID="btn_aanpassen" runat="server" Text="Aanpassingen Opslaan" OnClick="btn_aanpassen_Click" Width="160px" />
        <asp:Button ID="btn_verwijderen" runat="server" Text="Verwijderen" OnClick="btn_verwijderen_Click" Width="160px" />
    </div>
    <div id="placeholder" runat="server">
    </div>
    </form>
</body>
</html>
