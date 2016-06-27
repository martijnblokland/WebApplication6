<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="UI.Home" %>

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
        #wrp1 {
            float: left;
            width: 100%;
            margin: 10px;
            margin-top: -40px;
        }
    </style>
    </head>
<body>
<form id="form1" runat="server">
    <nav>
        <a href="Home.aspx">Home</a> <a href="FilmBrowser.aspx">Films</a> <a href="PersoneelBrowser.aspx">Personeel</a> <a href="Dashboard.aspx">Dashboard</a> <a href="Inloggen.aspx">Inloggen</a>  
        <br />
    <div id="nav2">
        U bent nu op de pagina: Home
    </div>
    </nav>
    <div id="wrp1">
        <h1 >
        Filmdatabase
        </h1>
        <h3 >
        Welkom op de homepagina van de filmdatabase!   
        </h3>
    </div>
</form>
</body>
</html>
