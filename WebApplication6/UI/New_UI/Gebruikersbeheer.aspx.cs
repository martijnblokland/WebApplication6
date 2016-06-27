using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pit4Casus.CC;


namespace WebApplication6.UI.New_UI
{
    public partial class GebruikerVerwijderen : System.Web.UI.Page
    {
        CC_GebruikersaccountBeheren Control_GebruikersaccountBeheren = new CC_GebruikersaccountBeheren();
        int Id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null && (bool)Session["user"])
            {

            }
            else
            {
                Response.Redirect("MsgNotAuth.aspx");
            }
            for (int i = 0; i < Control_GebruikersaccountBeheren.AlleGebruikerIds.Count; i = i + 1)
            {
                
                Label idLabel = new Label();
                idLabel.CssClass = "IDLabel";
                idLabel.Text = Control_GebruikersaccountBeheren.AlleGebruikerIds[i].ToString();

                Label gebruikerNaamLabel = new Label();
                gebruikerNaamLabel.CssClass = "GebruikerNaamLabel";
                gebruikerNaamLabel.Text = Control_GebruikersaccountBeheren.AlleGebruikerNamen[i];

                Label wachtwoordLabel = new Label();
                wachtwoordLabel.CssClass = "WachtwoordLabel";
                wachtwoordLabel.Text = Control_GebruikersaccountBeheren.AlleWachtwoorden[i];

                Label adminLabel = new Label();
                adminLabel.CssClass = "AdminLabel";
                if (Control_GebruikersaccountBeheren.AlleFuncties[i] == false)
                {
                    adminLabel.Text = "Gebruiker";
                }
                else
                {
                    adminLabel.Text = "Administrator";
                }

                placeholder.Controls.Add(idLabel);
                placeholder.Controls.Add(gebruikerNaamLabel);
                placeholder.Controls.Add(wachtwoordLabel);
                placeholder.Controls.Add(adminLabel);
            }
        }

        protected void Btn_aanpassen_Click(object sender, EventArgs e)
        {
            if (Int32.TryParse(IDTextBox.Text, out Id))
            {
                Control_GebruikersaccountBeheren.GebruikerAanpassen(Id, GebruikerNaamTextBox.Text, WachtwoordTextBox.Text, AdminCheckBox.Checked);
                Response.Redirect("Gebruikersbeheer.aspx");
            }
        }

        protected void Btn_verwijderen_Click(object sender, EventArgs e)
        {
            if (Int32.TryParse(IDTextBox.Text, out Id))
            {
                Control_GebruikersaccountBeheren.GebruikerVerwijderen(Id);
                Response.Redirect("Gebruikersbeheer.aspx");
            }
        }
        protected void Btn_uitloggen_Click(object sender, EventArgs e)
        {
            if (Session["login"] != null && (bool)Session["login"])
            {
                Session["login"] = false;
            }
            Response.Redirect("MsgLoggedOut.aspx");
        }

        protected void Btn_gebruiker_registreren_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registreren.aspx");
        }
    }
}