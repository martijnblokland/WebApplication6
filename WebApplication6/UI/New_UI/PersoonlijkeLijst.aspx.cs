using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPX_UI
{
    public partial class PersoonlijkeLijst : System.Web.UI.Page
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
            Response.Redirect("Home.aspx");
        }
    }
}