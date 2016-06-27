using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pit4Casus.CC;

namespace WebApplication6.UI.New_UI
{
    public partial class PersoonlijkeLijst : System.Web.UI.Page
    {
        CC_PersoonlijkeLijstBeheren Control_PersoonlijkeLijstBeheren = new CC_PersoonlijkeLijstBeheren();
        CC_PersoonlijkeLijstBekijken Control_PersoonlijkeLijstBekijken;
        protected void Page_Load(object sender, EventArgs e)
        {
            int Userid = Int32.Parse(Session["userid"].ToString());
            Control_PersoonlijkeLijstBekijken = new CC_PersoonlijkeLijstBekijken(Userid);
            if (Session["login"] != null && (bool)Session["login"])
            {

            }
            else
            {
                Response.Redirect("MsgNotLoggedIn.aspx");
            }
            for (int i = 0; i < Control_PersoonlijkeLijstBekijken.AlleFilmIds.Count; i = i + 1)
            {

                Label idLabel = new Label();
                idLabel.CssClass = "IDLabel";
                idLabel.Text = Control_PersoonlijkeLijstBekijken.AlleFilmIds[i].ToString();

                Label gezienStatusLabel = new Label();
                gezienStatusLabel.CssClass = "GezienStatusLabel";
                gezienStatusLabel.Text = (Control_PersoonlijkeLijstBekijken.AlleGezienStatussen[i]).ToString();

                Label wenslijstStatusLabel = new Label();
                wenslijstStatusLabel.CssClass = "WensLijstStatusLabel";
                wenslijstStatusLabel.Text = (Control_PersoonlijkeLijstBekijken.AlleWenslijstStatussen[i]).ToString();

                Label inBezitStatusLabel = new Label();
                inBezitStatusLabel.CssClass = "InBezitStatusLabel";
                inBezitStatusLabel.Text = (Control_PersoonlijkeLijstBekijken.AlleInBezitStatussen[i]).ToString();

                placeholder.Controls.Add(idLabel);
                placeholder.Controls.Add(gezienStatusLabel);
                placeholder.Controls.Add(wenslijstStatusLabel);
                placeholder.Controls.Add(inBezitStatusLabel);
            }
        }

        protected void Btn_uitloggen_Click(object sender, EventArgs e)
        {
            if (Session["login"] != null && (bool)Session["login"])
            {
                Session["login"] = false;
                Session["user"] = false;
            }
            Response.Redirect("Inloggen.aspx");
        }
    }
}