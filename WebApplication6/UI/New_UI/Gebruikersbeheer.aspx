<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gebruikersbeheer.aspx.cs" Inherits="WebApplication6.UI.New_UI.GebruikerVerwijderen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        nav {
            float: left;
            width: 100%;
            height: 50px;
            margin: 10px;
        }
        #Btn_uitloggen {
            float: right;
            margin: 20px;
            margin-top: -15px;
        }
        
        #editor {
            margin: 10px;
        }
        #placeholder {
            display: block;
            width: 1000px;
            height: inherit;
            margin: 10px;
        }

        .IDLabel {
            float: left;
            width: 5%;
            height: 20px;
        }

        .GebruikerNaamLabel {
            float: left;
            width: 20%;
            height: 20px;
        }

        .WachtwoordLabel {
            float: left;
            width: 20%;
            height: 20px;
        }

        .AdminLabel {
            float: left;
            width: 55%;
            height: 20px;
        }

        </style>
</head>
<body>
<form id="form2" runat="server">
    <nav>
        <a href="Dashboard.aspx">Dashboard</a> <a href="FilmBrowser.aspx">Films</a> <a href="PersoneelBrowser.aspx">Personeel</a> 
        <br />
    <div id="nav2">
        U bent nu op de pagina: Gebruikersbeheer
    </div>
    </nav>
    <asp:Button ID="Btn_uitloggen" runat="server" Text="Uitloggen" OnClick="Btn_uitloggen_Click"/>
    <div id="editor">
        ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nieuwe gebruikersnaam:&nbsp; Nieuw wachtwoord:<br />
        <asp:TextBox ID="IDTextBox" runat="server" Width="80px"></asp:TextBox>
        <asp:TextBox ID="GebruikerNaamTextBox" runat="server" Width="160px"></asp:TextBox>
        <asp:TextBox ID="WachtwoordTextBox" runat="server" Width="160px"></asp:TextBox>
        <asp:CheckBox ID="AdminCheckBox" runat="server" Text="Administrator" />
        &nbsp;<asp:Button ID="Btn_aanpassen" runat="server" Text="Aanpassingen Opslaan" OnClick="Btn_aanpassen_Click" Width="160px" />
        <asp:Button ID="Btn_verwijderen" runat="server" Text="Verwijderen" OnClick="Btn_verwijderen_Click" Width="160px" />
        <asp:Button ID="Btn_gebruiker_registreren" runat="server" OnClick="Btn_gebruiker_registreren_Click" Text="Gebruiker Registreren" />
    </div>
    <div id="placeholder" runat="server">
        
        <strong>ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gebruikersnaam&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Wachtwoord&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gebruikerstype</strong><br />
        
    </div>
</form>
</body>
</html>
