﻿using System;

namespace WebApplication6.UI.New_UI
{
    public partial class MsgPersoneelSave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_OK_Click(object sender, EventArgs e)
        {
            Response.Redirect("PersoneelBrowser.aspx");
        }
    }
}