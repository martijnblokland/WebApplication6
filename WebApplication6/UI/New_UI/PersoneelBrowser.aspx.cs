using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pit4Casus.CC;

namespace WebApplication6.UI.New_UI
{
    public partial class PersoneelBrowser : System.Web.UI.Page
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
            if (Session["user"] != null && (bool)Session["user"])
            {
                Btn_personeel_toevoegen.Visible = true;
            }
            else
            {
                Btn_personeel_toevoegen.Visible = false;
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

        protected void Btn_uitloggen_Click(object sender, EventArgs e)
        {
            if (Session["login"] != null && (bool)Session["login"])
            {
                Session["login"] = false;
                Session["user"] = false;
            }
            Response.Redirect("MsgLoggedOut.aspx");
        }

        protected void Btn_personeel_toevoegen_Click(object sender, EventArgs e)
        {
            Response.Redirect("PersoneelToevoegen.aspx");
        }
    }
}