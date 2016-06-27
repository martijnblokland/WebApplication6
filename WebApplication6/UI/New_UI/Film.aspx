<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Film.aspx.cs" Inherits="WebApplication6.UI.New_UI.Film" %>

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
        <a href="Dashboard.aspx">Dashboard</a> <a href="FilmBrowser.aspx">Films</a> <a href="PersoneelBrowser.aspx">Personeel</a> 
        <br />
    <div id="nav2">
        U bent nu op de pagina: Film
    </div>
    </nav>
    <div id="wrp4">
        <asp:Button ID="Btn_uitloggen" runat="server" Text="Uitloggen" OnClick="Btn_uitloggen_Click" />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Naam:</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Blue Velvet"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Btn_beoordeling_geven" runat="server" Text="Beoordeling Geven" OnClick="Btn_beoordeling_geven_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Film geïnspireerd op:</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Btn_toevoegen_aan_persoonlijke_lijst" runat="server" Text="Toevoegen aan Persoonlijke Lijst" OnClick="Btn_toevoegen_aan_persoonlijke_lijst_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Film remake:</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text=" "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Rating:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Kleur film :</td>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Kleur"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Jaar:</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="1986"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Btn_rating_opslaan" runat="server" Text="Rating opslaan" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Taal:</td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Engels"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Duur (in min):</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="120"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Genre:</td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Drama"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Regisseur:</td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="David Lynch"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" id="tbl1">Acteurs:</td>
                <td>
                <asp:ListBox ID="ListBox2" runat="server" Width="201px" Enabled="False">
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
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" id="tbl3">&nbsp;</td>
                <td>
                    <asp:Button ID="Btn_film_wijzigen" runat="server" OnClick="Btn_film_wijzigen_Click" Text="Filmgegevens Wijzigen" />
                </td>
                <td>
                    <asp:Button ID="Btn_film_verwijderen" runat="server" Text="Film Verwijderen" />
                </td>
            </tr>
        </table>
    </div>
    &nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
