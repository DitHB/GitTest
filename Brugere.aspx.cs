using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Brugere : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Bruger_id"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void LinkButton_LogUd_Click(object sender, EventArgs e)
    {
        Session["Bruger_id"] = null;
        Response.Redirect("Default.aspx");
    }
}