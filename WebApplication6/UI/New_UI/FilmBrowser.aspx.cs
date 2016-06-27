﻿using System;

namespace WebApplication6.UI.New_UI
{
    public partial class FilmBrowser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (Session["user"] != null && (bool) Session["user"])
                {
                    Btn_film_toevoegen.Visible = true;
                }
                else
                {
                    Btn_film_toevoegen.Visible = false;
                }
                if (Session["login"] != null && (bool)Session["login"])
                {
                    Btn_uitloggen.Visible = true;
                }
                else
                {
                    Btn_uitloggen.Visible = false;
                }
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

        protected void Btn_film_toevoegen_Click(object sender, EventArgs e)
        {
            Response.Redirect("FilmToevoegen.aspx");
        }
    }
}