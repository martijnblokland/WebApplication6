<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersoonlijkeLijst.aspx.cs" Inherits="ASPX_UI.PersoonlijkeLijst" %>

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
        U bent nu op de pagina: Persoonlijke Lijst
    </div>
    </nav>
    <div id="wrp3">
        <asp:Button ID="Btn_uitloggen" runat="server" Text="Uitloggen" OnClick="Btn_uitloggen_Click" />
        <h1>
        Persoonlijke Lijst
        </h1>
        <table class="auto-style1">
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
             </table>
        <br />
        <asp:Button ID="Btn_verwijderen" runat="server" Text="Film Verwijderen Uit Persoonlijke Lijst" />
    </div>
    </form>
</body>
</html>
