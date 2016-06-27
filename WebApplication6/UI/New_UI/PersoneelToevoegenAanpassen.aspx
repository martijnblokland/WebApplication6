<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersoneelToevoegenAanpassen.aspx.cs" Inherits="WebApplication6.UI.New_UI.PersoneelToevoegen" %>

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
        #tbl1 {
            margin-top: 0px;
            vertical-align: top;
        }
        #Btn_uitloggen {
            float: right;
            margin: -10px;
            margin-top: -15px;
        }
        #Btn_aanpassen_acteurs {
            vertical-align: top;
        }
        .auto-style3 {
            width: 126px;
            text-align: right;
        }
        </style>
</head>
<body>
<form id="form1" runat="server">
    <nav>
        <a href="Home.aspx">Home</a>  <a href="FilmBrowser.aspx">Films</a> <a href="PersoneelBrowser.aspx">Personeel</a> <a href="Dashboard.aspx">Dashboard</a>
        <br />
    <div id="nav2">
        U bent nu op de pagina: Personeel Toevoegen/Aanpassen
    </div>
    </nav>
    <div id="wrp3">
        <asp:Button ID="Btn_uitloggen" runat="server" Text="Uitloggen" OnClick="Btn_uitloggen_Click" />
        <h1>Personeel toevoegen/aanpassen</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Naam:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Film:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Geboortedatum:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Geslacht:</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Karakter:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Functie:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" id="tbl3">&nbsp;</td>
                <td>
                    <asp:Button ID="Btn_personeel_toevoegen" runat="server" OnClick="Btn_personeel_toevoegen_Click" Text="Personeel Toevoegen" />
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
