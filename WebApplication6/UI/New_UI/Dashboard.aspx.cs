using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null && (bool) Session["login"])
            {
                Lbl_gebruikersnaam.Text = (Session["username"]).ToString() + "!";
            }
            else
            {
                Response.Redirect("MsgNotLoggedIn.aspx");
            }
            if (Session["user"] != null && (bool) Session["user"])
            {
                Btn_film_toevoegen.Visible = true;
                Btn_gebruikers_beheren.Visible = true;
                Btn_personeel_toevoegen.Visible = true;
                Btn_persoonlijke_lijst.Visible = false;
            }
            else
            {
                Btn_film_toevoegen.Visible = false;
                Btn_gebruikers_beheren.Visible = false;
                Btn_personeel_toevoegen.Visible = false;
                Btn_persoonlijke_lijst.Visible = true;
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

        protected void Btn_persoonlijke_lijst_Click(object sender, EventArgs e)
        {
            Response.Redirect("PersoonlijkeLijst.aspx");
        }

        protected void Btn_film_toevoegen_Click(object sender, EventArgs e)
        {
            Response.Redirect("FilmToevoegen.aspx");
        }

        protected void Btn_personeel_toevoegen_Click(object sender, EventArgs e)
        {
            Response.Redirect("PersoneelToevoegen.aspx");
        }

        protected void Btn_gebruikers_beheren_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gebruikersbeheer.aspx");
        }
    }
}