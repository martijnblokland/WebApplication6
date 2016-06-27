<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Beoordeling.aspx.cs" Inherits="WebApplication6.UI.New_UI.ReviewSchrijven" %>

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
        #tbl1 {
            margin-top: 0px;
            vertical-align: top;
        }
        #Btn_uitloggen {
            float: right;
            margin: -10px;
            margin-top: -15px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <nav>
        <a href="Home.aspx">Home</a> <a href="FilmBrowser.aspx">Films</a> <a href="PersoneelBrowser.aspx">Personeel</a> <a href="Dashboard.aspx">Dashboard</a> <a href="Inloggen.aspx">Inloggen</a>
        <br />
    <div id="nav2">
        U bent nu op de pagina: Beoordeling geven
    </div>
    </nav>
    <div id="wrp4">
        <asp:Button ID="Btn_uitloggen" runat="server" Text="Uitloggen" OnClick="Btn_uitloggen_Click" />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Rating</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>0</asp:ListItem>
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
                <td id="tbl1" class="auto-style3">Review</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="83px" TextMode="MultiLine" Width="194px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Btn_beoordeling_toevoegen" runat="server" OnClick="Btn_beoordeling_toevoegen_Click" Text="Beoordeling Toevoegen" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
