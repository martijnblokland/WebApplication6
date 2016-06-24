using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pit4Casus.CC;

namespace WebApplication6.UI
{
    public partial class UI_Login : System.Web.UI.Page
    {
        CC_Inloggen Control_Inloggen = new CC_Inloggen();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Control_Inloggen.CheckLogin(TextBox1.Text, TextBox2.Text) == true)
            {
                Label1.Text = "Inloggen Gelukt";
                Label2.Text = "Naam : " + Control_Inloggen.OphalenGebruikerNaam();
                if (Control_Inloggen.OphalenFunctie() == true)
                {
                    Label3.Text = "Functie : Administrator";
                }
                else
                {
                    Label3.Text = "Functie : Gebruiker";
                }
            }
        }
    }
}