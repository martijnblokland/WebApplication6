using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pit4Casus.CC;

namespace WebApplication6.UI.New_UI
{
    public partial class Film : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null && (bool)Session["user"])
            {
                Btn_film_wijzigen.Visible = true;
                Btn_film_verwijderen.Visible = true;
                Btn_beoordeling_geven.Visible = false;
                Btn_rating_opslaan.Visible = false;
                Btn_toevoegen_aan_persoonlijke_lijst.Visible = false;
                DropDownList1.Visible = false;
                Label4.Visible = false;
            }
            else
            {
                Btn_film_wijzigen.Visible = false;
                Btn_film_verwijderen.Visible = false;
                Btn_beoordeling_geven.Visible = true;
                Btn_rating_opslaan.Visible = true;
                Btn_toevoegen_aan_persoonlijke_lijst.Visible = true;
                Label4.Visible = true;
            }
            if (Session["login"] != null && (bool)Session["login"])
            {
                Btn_uitloggen.Visible = true;
                Btn_toevoegen_aan_persoonlijke_lijst.Visible = true;
                Btn_beoordeling_geven.Visible = true;
            }
            else
            {
                Btn_uitloggen.Visible = false;
                Btn_toevoegen_aan_persoonlijke_lijst.Visible = false;
                Btn_beoordeling_geven.Visible = false;
            }
        }

        protected void Btn_uitloggen_Click(object sender, EventArgs e)
        {
            if (Session["login"] != null && (bool)Session["login"])
            {
                Session["login"] = false;
                Session["user"] = false;
            }
            Response.Redirect("MsgLoggedOut.aspx");
        }

        protected void Btn_film_wijzigen_Click(object sender, EventArgs e)
        {
            Response.Redirect("FilmToevoegenAanpassen.aspx");
            //Gegevens van huidige film inladen op Film Toevoegen/Aanpassen
        }

        protected void Btn_beoordeling_geven_Click(object sender, EventArgs e)
        {
            Response.Redirect("Beoordeling.aspx");
        }

        protected void Btn_toevoegen_aan_persoonlijke_lijst_Click(object sender, EventArgs e)
        {
            Response.Redirect("PersoonlijkeLijst.aspx");
        }
    }
}