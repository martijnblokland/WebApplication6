<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilmToevoegenAanpassen.aspx.cs" Inherits="ASPX_UI.FilmToevoegen" %>

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
        U bent nu op de pagina: Film Toevoegen/Aanpassen
    </div>
    </nav>
    <div id="wrp3">
        <asp:Button ID="Btn_uitloggen" runat="server" Text="Uitloggen" OnClick="Btn_uitloggen_Click" />
        <h1>Film toevoegen/aanpassen</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Naam:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Film geïnspireerd op:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Film remake:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Kleur film :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Kleur</asp:ListItem>
                        <asp:ListItem>Zwart-Wit</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Jaar:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Taal:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Duur (in min):</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Genre:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Actie</asp:ListItem>
                        <asp:ListItem>Animatie</asp:ListItem>
                        <asp:ListItem>Avontuur</asp:ListItem>
                        <asp:ListItem>Biografie</asp:ListItem>
                        <asp:ListItem>Documentaire</asp:ListItem>
                        <asp:ListItem>Drama</asp:ListItem>
                        <asp:ListItem>Familie</asp:ListItem>
                        <asp:ListItem>Fantasy</asp:ListItem>
                        <asp:ListItem>Historisch</asp:ListItem>
                        <asp:ListItem>Horror</asp:ListItem>
                        <asp:ListItem>Komedie</asp:ListItem>
                        <asp:ListItem>Misdaad</asp:ListItem>
                        <asp:ListItem>Musical</asp:ListItem>
                        <asp:ListItem>Muziek</asp:ListItem>
                        <asp:ListItem>Mysterie</asp:ListItem>
                        <asp:ListItem>Oorlog</asp:ListItem>
                        <asp:ListItem>Romantisch</asp:ListItem>
                        <asp:ListItem>ScienceFiction</asp:ListItem>
                        <asp:ListItem>Sport</asp:ListItem>
                        <asp:ListItem>Thriller</asp:ListItem>
                        <asp:ListItem>Western</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Regisseur:</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>David Lynch</asp:ListItem>
                        <asp:ListItem>Martin Scorese</asp:ListItem>
                        <asp:ListItem>Ingmar Bergman</asp:ListItem>
                        <asp:ListItem>Roman Polanski</asp:ListItem>
                        <asp:ListItem>Francis Ford Coppola</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" id="tbl1">Acteurs:</td>
                <td>
                <asp:ListBox ID="ListBox2" runat="server" Width="143px">
                    <asp:ListItem>Jack Nicholson</asp:ListItem>
                    <asp:ListItem>Ralph Fiennes</asp:ListItem>
                    <asp:ListItem>Robert De Niro</asp:ListItem>
                    <asp:ListItem>Tom Hanks</asp:ListItem>
                    <asp:ListItem>Brad Pitt</asp:ListItem>
                    <asp:ListItem>Meryl Streep</asp:ListItem>
                    <asp:ListItem>Julia Roberts</asp:ListItem>
                    <asp:ListItem>Julianne Moore</asp:ListItem>
                    <asp:ListItem>Kate Winslet</asp:ListItem>
                    <asp:ListItem>Natalie Portman</asp:ListItem>
                    </asp:ListBox>
                <asp:Button ID="Btn_aanpassen_acteurs" runat="server" Text="Aanpassen" OnClick="Btn_aanpassen_acteurs_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" id="tbl3">&nbsp;</td>
                <td>
                    <asp:Button ID="Btn_film_toevoegen" runat="server" OnClick="Btn_film_toevoegen_Click" Text="Film Toevoegen" />
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>


