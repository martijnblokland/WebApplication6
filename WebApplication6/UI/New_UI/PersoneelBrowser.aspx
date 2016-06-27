<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersoneelBrowser.aspx.cs" Inherits="WebApplication6.UI.New_UI.PersoneelBrowser" %>

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
        <a href="Dashboard.aspx">Dashboard</a> <a href="FilmBrowser.aspx">Films</a> <a href="PersoneelBrowser.aspx">Personeel</a> 
        <br />
    <div id="nav2">
        U bent nu op de pagina: Personeel
    </div>
    </nav>
    <div id="wrp4">
        <asp:Button ID="Btn_uitloggen" runat="server" Text="Uitloggen" OnClick="Btn_uitloggen_Click" />
        <h1>Personeel</h1>
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
                <td class="auto-style3">&nbsp;</td>
                <td><table class="auto-style1">
                    <tr>
                        <td class="auto-style1">
                            <table style="width: 100%" class="auto-style1">
                                <tr>
                                    <td>Naam</td>
                                    <td>Laatste Film</td>
                                    <td>Geboortedatum</td>
                                    <td>Geslacht</td>
                                    <td>Karakter</td>
                                    <td>Functie</td>
                                </tr>
                                <tr>
                                    <td><a href="Personeel.aspx">Liam Hemsworth</a></td>
                                    <td>Independence Day: Resurgence</td>
                                    <td>13-01-1990</td>
                                    <td>M</td>
                                    <td>Jake Morisson</td>
                                    <td>Acteur</td>
                                </tr>
                                <tr>
                                    <td>Nicolas Wright</td>
                                    <td>Independence Day: Resurgence</td>
                                    <td>23-03-1982</td>
                                    <td>M</td>
                                    <td>&nbsp;</td>
                                    <td>Schrijver</td>
                                </tr>
                                <tr>
                                    <td>Sela Ward</td>
                                    <td>Independence Day: Resurgence</td>
                                    <td>11-07-1956</td>
                                    <td>V</td>
                                    <td>President Lanford</td>
                                    <td>Acteur</td>
                                </tr>
                                <tr>
                                    <td>Roland Emmerich</td>
                                    <td>Independence Day: Resurgence</td>
                                    <td>10-11-1955</td>
                                    <td>M</td>
                                    <td>&nbsp;</td>
                                    <td>Regisseur</td>
                                </tr>
                            </table>
                        </td>    
                    </tr>
             </table></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
        <asp:Button ID="Btn_personeel_toevoegen" runat="server" Text="Personeel Toevoegen" OnClick="Btn_personeel_toevoegen_Click" />
                </td>
            </tr>
            </table>
        <br />
    </div>
</form>
</body>
</html>
