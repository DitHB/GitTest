using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Security;


public partial class Brugere : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Bruger_id"] == null)
        {
            Response.Redirect("Default.aspx");
        }


        // opret forbindelse til databasen
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        // SQL strengen
        cmd.CommandText = "SELECT * FROM brugere ORDER BY id DESC";

        // Åben for forbindelsen til databasen
        conn.Open();

        SqlDataReader reader = cmd.ExecuteReader();
        Repeater_brugere.DataSource = reader;
        Repeater_brugere.DataBind();

        // Luk for forbindelsen til databasen
        conn.Close();



    }

    protected void LinkButton_LogUd_Click(object sender, EventArgs e)
    {
        Session["Bruger_id"] = null;
        Response.Redirect("Default.aspx");
    }




}