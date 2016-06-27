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
            if (Session["login"] != null && (bool)Session["login"])
            {

            }
            else
            {
                Response.Redirect("MsgNotLoggedIn.aspx");
            }
            int Userid = Int32.Parse(Session["userid"].ToString());
            Control_PersoonlijkeLijstBekijken = new CC_PersoonlijkeLijstBekijken(Userid);
            lbl1.Text = Userid.ToString();
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
            Response.Redirect("Inloggen.aspx");
        }
    }
}