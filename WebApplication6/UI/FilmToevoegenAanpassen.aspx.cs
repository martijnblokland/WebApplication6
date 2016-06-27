﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pit4Casus.CC;

namespace WebApplication6.UI.New_UI
{
    public partial class FilmToevoegen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null && (bool)Session["login"])
            {

            }
            else
            {
                Response.Redirect("MsgNotLoggedIn.aspx");
            }
            if (Session["user"] != null && (bool) Session["user"])
            {

            }
            else
            {
                Response.Redirect("MsgNotAuth.aspx");
            }
        }

        protected void Btn_uitloggen_Click(object sender, EventArgs e)
        {
            if (Session["login"] != null && (bool)Session["login"])
            {
                Session["login"] = false;
            }
            Response.Redirect("Inloggen.aspx");
        }

        protected void Btn_film_toevoegen_Click(object sender, EventArgs e)
        {
            Response.Redirect("MsgFilmSave.aspx");
        }
    }
}