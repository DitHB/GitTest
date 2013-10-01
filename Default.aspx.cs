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


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {

        }
        else
        {
            CheckBox_Remember.Checked = true;
            TextBox_Email.Text = Session["Email"].ToString();
        }

    }


    protected void Button_Login_Click(object sender, EventArgs e)
    {
        // opret forbindelsen til databasen
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        // opret et SqlCommand object
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        //SQL-Command
        cmd.CommandText = "SELECT * from brugere WHERE Email=@login AND Password=@pass";
        cmd.Parameters.Add("@login", SqlDbType.NVarChar).Value = TextBox_Email.Text;
        cmd.Parameters.Add("@pass", SqlDbType.NVarChar).Value = TextBox_Password.Text;

        // åben forbindelsen til databasen
        conn.Open();

        // opret en SqlDataReader og navngiv den "reader"
        //sqldatareader er et object som kommunikerer med databasen
        // SqlDataReader er en beholder eller tabel der indeholder en kopi af det der er udtrukket fra database
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            if (CheckBox_Remember.Checked)
            {
                Session["Email"] = reader["Email"];
            }
            Session["Bruger_id"] = reader["Id"];
            Session["Navn"] = reader["Navn"];
            Response.Redirect("Brugere.aspx");
        }
        else // hvis brugeren ikke findes i databasen
        {
            Panel_Fejlbesked.Visible = true;
        }
        // luk forbindelsen til databasen
        conn.Close();
    }

}