<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication6.UI.New_UI.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            margin: 0px;
            padding: 0px;
            width: 98%;
            height: 100%;
        }
        #nav2 {
            float: left;
        }
        nav {
            float: left;
            width: 100%;
            height: 50px;
            margin: 10px;
        }
        #wrp3 {
            float: left;
            width: 100%;
            margin: 10px;
            margin-top: -40px;
        }
        #Btn_uitloggen {
            float: right;
            margin: -10px;
            margin-top: -15px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <nav>
        <a href="Home.aspx">Home</a> <a href="FilmBrowser.aspx">Films</a> <a href="PersoneelBrowser.aspx">Personeel</a> <a href="Dashboard.aspx">Dashboard</a>  
        <br />
    <div id="nav2">
        U bent nu op de pagina: Dashboard
    </div>
    </nav>
    <div id="wrp3">
        <asp:Button ID="Btn_uitloggen" runat="server" Text="Uitloggen" OnClick="Btn_uitloggen_Click" />
        <h1>
        Dashboard
        </h1>
        <h3>
            Welkom op je dashboard,
            <asp:Label ID="Lbl_gebruikersnaam" runat="server"></asp:Label>
            </h3>
        <p>
            <asp:Button ID="Btn_persoonlijke_lijst" runat="server" OnClick="Btn_persoonlijke_lijst_Click" Text="Persoonlijke Lijst" />
        </p>
        <p>
            <asp:Button ID="Btn_film_toevoegen" runat="server" OnClick="Btn_film_toevoegen_Click" Text="Film toevoegen" />
        </p>
        <p>
            <asp:Button ID="Btn_personeel_toevoegen" runat="server" OnClick="Btn_personeel_toevoegen_Click" Text="Personeel toevoegen" />
        </p>
        <p>
            <asp:Button ID="Btn_gebruikers_beheren" runat="server" OnClick="Btn_gebruikers_beheren_Click" Text="Gebruikers beheren" />
        </p>
        <p>
            &nbsp;</p>
    </div>
</form>
</body>
</html>
