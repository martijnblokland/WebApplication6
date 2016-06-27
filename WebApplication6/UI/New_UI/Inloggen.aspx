<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inloggen.aspx.cs" Inherits="WebApplication6.UI.New_UI.Inloggen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
        #wrp2 {
            float: left;
            width: 100%;
            margin: 10px;
            margin-top: -40px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 104px;
            text-align: right;
        }

    </style>
    </head>
<body>
<form id="form1" runat="server">
    <nav>
        <a href="Dashboard.aspx">Dashboard</a> <a href="FilmBrowser.aspx">Films</a> <a href="PersoneelBrowser.aspx">Personeel</a> 
        <br />
    <div id="nav2">
        U bent nu op de pagina: Inloggen
    </div>
    </nav>
    <div id="wrp2">
        <h1>
        Inloggen
        </h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
            <asp:Label ID="Label1" runat="server" Text="Gebruikersnaam: "></asp:Label>
                </td>
                <td>
            <asp:TextBox ID="TextBox_login" runat="server" Width="193px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
            <asp:Label ID="Label2" runat="server" Text="Wachtwoord: "></asp:Label>  
                </td>
                <td>  
            <asp:TextBox ID="TextBox_pass" runat="server" TextMode="Password" Width="193px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
        <asp:Button ID="Btn_inloggen" runat="server" Text="Inloggen" OnClick="Btn_inloggen_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Btn_account_registreren" runat="server" Text="Registreren" OnClick="Btn_account_registreren_Click" />
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
