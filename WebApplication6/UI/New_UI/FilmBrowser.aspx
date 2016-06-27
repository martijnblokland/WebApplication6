<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilmBrowser.aspx.cs" Inherits="WebApplication6.UI.New_UI.FilmBrowser" %>

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
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 112px;
        }
        .auto-style3 {
            width: 112px;
        }
        </style>
</head>
<body>
<form id="form1" runat="server">
    <nav>
        <a href="Home.aspx">Home</a> <a href="FilmBrowser.aspx">Films</a> <a href="PersoneelBrowser.aspx">Personeel</a> <a href="Dashboard.aspx">Dashboard</a> <a href="Inloggen.aspx">Inloggen</a>
        <br />
    <div id="nav2">
        U bent nu op de pagina: Films
    </div>
    </nav>
    <div id="wrp4">
        <asp:Button ID="Btn_uitloggen" runat="server" Text="Uitloggen" OnClick="Btn_uitloggen_Click" />
        <h1>Films</h1>
        <table style="width: 100%" class="auto-style1">
            <tr>
                <td class="auto-style2">Zoeken:</td>
                <td>
                    <asp:TextBox ID="txb_film_zoeken" runat="server" Width="182px"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Button ID="Btn_film_zoeken" runat="server" Text="Zoeken" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Zoeken op genre:</td>
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
                <td class="auto-style3">&nbsp;</td>
                <td><table class="auto-style1">
                    <tr>
                        <td class="auto-style1">
                            <table style="width: 100%" class="auto-style1">
                                <tr>
                                    <td>Naam</td>
                                    <td>Inspiratie</td>
                                    <td>Remake</td>
                                    <td>Kleur</td>
                                    <td>Jaar</td>
                                    <td>Taal</td>
                                    <td>Duur</td>
                                    <td>Genre</td>
                                </tr>
                                <tr>
                                    <td><a href="Film.aspx">Blue Velvet</a></td>
                                    <td></td>
                                    <td></td>
                                    <td>Kleur</td>
                                    <td>1986</td>
                                    <td>Engels</td>
                                    <td>120</td>
                                    <td>Drama</td>
                                </tr>
                            </table>
                        </td>    
                    </tr>
             </table></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
        <asp:Button ID="Btn_film_toevoegen" runat="server" Text="Film Toevoegen" OnClick="Btn_film_toevoegen_Click" />
                </td>
            </tr>
            </table>
        <br />
    </div>
</form>
</body>
</html>
