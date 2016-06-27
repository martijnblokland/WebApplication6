using System;

namespace WebApplication6.UI.New_UI
{
    public partial class ReviewSchrijven : System.Web.UI.Page
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

        protected void Btn_beoordeling_toevoegen_Click(object sender, EventArgs e)
        {
            Response.Redirect("Film.aspx");
        }
    }
}