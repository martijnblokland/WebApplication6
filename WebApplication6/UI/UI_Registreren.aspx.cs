using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pit4Casus.CC;

namespace WebApplication6.UI
{
    public partial class UI_Registreren : System.Web.UI.Page
    {
        bool RegistratieVoltooid;
        CC_Registreren Control_Registreren = new CC_Registreren();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            RegistratieVoltooid = Control_Registreren.GebruikerRegistreren(TextBox1.Text, TextBox2.Text, CheckBox1.Checked);
            if (RegistratieVoltooid == false)
            {
                Label1.Text = "Registratie Mislukt";
            }
            else
            {
                Label1.Text = "Registratie Voltooid";
            }
        }
    }
}