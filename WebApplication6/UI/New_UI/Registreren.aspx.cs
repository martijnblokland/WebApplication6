using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pit4Casus.CC;

namespace WebApplication6.UI.New_UI
{
    public partial class Registreren : System.Web.UI.Page
    {
        bool RegistratieVoltooid;
        CC_Registreren Control_Registreren = new CC_Registreren();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_account_registreren_Click(object sender, EventArgs e)
        {
            RegistratieVoltooid = Control_Registreren.GebruikerRegistreren(TextBox_gebruikersnaam.Text, TextBox_wachtwoord.Text, CheckBox1.Checked);
            if (RegistratieVoltooid == false)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Het registreren is mislukt. Probeer opnieuw.');</script>");
                TextBox_gebruikersnaam.Text = "";
                TextBox_wachtwoord.Text = "";
                CheckBox1.Checked = false;
            }
            else
            {
                Response.Redirect("Inloggen.aspx");
            }
        }
    }
}