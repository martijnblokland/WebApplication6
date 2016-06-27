using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pit4Casus.CC;

namespace WebApplication6.UI.New_UI
{
    public partial class MsgNotLoggedIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_OK_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inloggen.aspx");
        }
    }
}