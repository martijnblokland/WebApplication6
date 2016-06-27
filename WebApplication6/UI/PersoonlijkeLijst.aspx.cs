﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pit4Casus.CC;
using WebApplication6.CC;

namespace WebApplication6.UI.New_UI
{
    public partial class PersoonlijkeLijst : System.Web.UI.Page
    {
        CC_PersoonlijkeLijst Control_PersoonlijkeLijst;
        int Id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null && (bool)Session["login"])
            {
                
            }
            else
            {
                Response.Redirect("Messages/MsgNotAuth.aspx");
            }
            int Userid = Int32.Parse(Session["userid"].ToString());
            Control_PersoonlijkeLijst = new CC_PersoonlijkeLijst(Userid);
            Label1.Text = Control_PersoonlijkeLijst.AllePersoonlijkeLijstIds.Count.ToString();
            for (int i = 0; i < Control_PersoonlijkeLijst.AllePersoonlijkeLijstIds.Count; i = i + 1)
            {
                Label persoonlijkeLijstIdLabel = new Label();
                persoonlijkeLijstIdLabel.CssClass = "PersoonlijkeLijstIDLabel";
                persoonlijkeLijstIdLabel.Text = Control_PersoonlijkeLijst.AllePersoonlijkeLijstIds[i].ToString();

                Label filmIdLabel = new Label();
                filmIdLabel.CssClass = "FilmIDLabel";
                filmIdLabel.Text = Control_PersoonlijkeLijst.AlleFilmIds[i].ToString();

                Label gezienStatussenLabel = new Label();
                gezienStatussenLabel.CssClass = "GezienStatussenLabel";
                gezienStatussenLabel.Text = Control_PersoonlijkeLijst.AlleGezienStatussen[i] == false ? "Gezien" : "Niet Gezien";

                Label inBezitStatussenLabel = new Label();
                inBezitStatussenLabel.CssClass = "InBezitStatussenLabel";
                inBezitStatussenLabel.Text = Control_PersoonlijkeLijst.AlleInBezitStatussen[i] == false ? "In Bezit" : "Niet In Bezit";

                Label wenslijstStatussenLabel = new Label();
                wenslijstStatussenLabel.CssClass = "WenslijstStatussenLabel";
                wenslijstStatussenLabel.Text = Control_PersoonlijkeLijst.AlleWenslijstStatussen[i] == false ? "Op Wenslijst" : "Niet Op Wenslijst";

                placeholder.Controls.Add(persoonlijkeLijstIdLabel);
                placeholder.Controls.Add(filmIdLabel);
                placeholder.Controls.Add(gezienStatussenLabel);
                placeholder.Controls.Add(inBezitStatussenLabel);
                placeholder.Controls.Add(wenslijstStatussenLabel);
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