using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*MESSAGE SYSTEM
         
         Sessions, som har en værdi og den værdi bestemmer hvad der skal stå i beskeden. 
         * Lav et panel med asplabel.
         * CSSclassen ændres alt efter hvilken session der er aktiv.
         * husk slet sessions igen.
         * 
         * 
         * eks:
         * du har nu slettet blabla
         * du har nu oprettet blabla
         * du har nu redigeret blabla
         * 
         
         */
    }

    protected void LinkButton_LogUd_Click(object sender, EventArgs e)
    {
        Session["Bruger_id"] = null;
        Response.Redirect("Default.aspx");
    }
}
