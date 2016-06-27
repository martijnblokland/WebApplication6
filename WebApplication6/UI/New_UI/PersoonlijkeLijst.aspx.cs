using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication6.CC;

namespace WebApplication6.UI.New_UI
{
    public partial class PersoonlijkeLijst : System.Web.UI.Page
    {
        CC_PersoonlijkeLijstBeheren Control_PersoonlijkeLijstBeheren = new CC_PersoonlijkeLijstBeheren();
        CC_PersoonlijkeLijstBekijken Control_PersoonlijkeLijstBekijken = new CC_PersoonlijkeLijstBekijken();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null && (bool)Session["login"])
            {

            }
            else
            {
                Response.Redirect("MsgNotLoggedIn.aspx");
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

        protected void Btn_uitloggen_Click(object sender, EventArgs e)
        {
            if (Session["login"] != null && (bool)Session["login"])
            {
                Session["login"] = false;
                Session["user"] = false;
            }
            Response.Redirect("Home.aspx");
        }
    }
}