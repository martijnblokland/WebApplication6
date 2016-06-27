<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personeel.aspx.cs" Inherits="ASPX_UI.Personeel" %>

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
        #wrp4 {
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
        .auto-style3 {
            width: 138px;
            text-align: right;
        }
        #tbl1 {
            margin-top: 0px;
            vertical-align: top;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav>
        <a href="Home.aspx">Home</a> <a href="FilmBrowser.aspx">Films</a> <a href="PersoneelBrowser.aspx">Personeel</a> <a href="Dashboard.aspx">Dashboard</a> <a href="Inloggen.aspx">Inloggen</a>
        <br />
        <br />
    <div id="nav2">
        U bent nu op de pagina: Personeel
    </div>
    </nav>
    <div id="wrp4">
        <asp:Button ID="Btn_uitloggen" runat="server" Text="Uitloggen" OnClick="Btn_uitloggen_Click" style="width: 82px" />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Naam:</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Liam Hemsworth"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Film: </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Independence Day: Resurgence"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Geboortedatum:</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="13-01-1990"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Geslacht:</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="M"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Karakter:</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Jake Morrison"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Functie:</td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Acteur"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" id="tbl3">&nbsp;</td>
                <td>
                    <asp:Button ID="Btn_personeel_wijzigen" runat="server" OnClick="Btn_personeel_wijzigen_Click" Text="Personeel Wijzigen" />
                &nbsp;&nbsp;
                    <asp:Button ID="Btn_personeel_verwijderen" runat="server" Text="Personeel Verwijderen" />
                </td>
            </tr>
        </table>
    </div>
    &nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>

