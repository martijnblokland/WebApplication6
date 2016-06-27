using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pit4Casus.CC;

namespace WebApplication6.UI.New_UI
{
    public partial class Inloggen : System.Web.UI.Page
    {
        CC_Inloggen Control_Inloggen = new CC_Inloggen();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null && (bool)Session["login"])
            {
                Response.Redirect("MsgLoggedIn.aspx");
            }
        }

        protected void Btn_inloggen_Click(object sender, EventArgs e)
        {

            if (Control_Inloggen.CheckLogin(TextBox_login.Text, TextBox_pass.Text))
            {
                Session["login"] = true;
                Session["username"] = Control_Inloggen.OphalenGebruikerNaam();
                if (Control_Inloggen.OphalenFunctie())
                {
                    Session["user"] = true;
                }
                else
                {
                    Session["user"] = false;
                }
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Uw inloggegevens zijn onjuist. Probeer opnieuw.');</script>");
                TextBox_login.Text = "";
                TextBox_pass.Text = "";
            }
        }

        protected void Btn_account_registreren_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registreren.aspx");
        }
    }
}