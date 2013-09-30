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

    }


    protected void LinkButton_Login_Click(object sender, EventArgs e)
    {
        //// opret forbindelsen til databasen
        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        //// opret et SqlCommand object
        //SqlCommand cmd = new SqlCommand();
        //cmd.Connection = conn;

        ////SQL-Command
        //cmd.CommandText = "SELECT * from Logins WHERE login_username=@login AND login_password=@pass";
        //cmd.Parameters.Add("@login", SqlDbType.NVarChar).Value = TextBox_brugernavn.Text;
        //cmd.Parameters.Add("@pass", SqlDbType.NVarChar).Value = TextBox_pass.Text;

        //// åben forbindelsen til databasen
        //conn.Open();

        //// opret en SqlDataReader og navngiv den "reader"
        ////sqldatareader er et object som kommunikerer med databasen
        //// SqlDataReader er en beholder eller tabel der indeholder en kopi af det der er udtrukket fra database
        //SqlDataReader reader = cmd.ExecuteReader();
        //if (reader.Read())
        //{
        //    Session["Bruger_id"] = reader["Id"];
        //    Session["login_username"] = reader["login_username"];
        //    Response.Redirect("Admin/Admin_Nyheder.aspx");
        //}
        //else // hvis brugeren ikke findes i databasen
        //{
        //    //Label_loginFejl.Text = "Ugyldigt brugernavn eller kodeord !!";
        //    Label_besked.Text = "<div class='span8'><div class='alert alert-error'>Kombinationen af din email og password findes ikke i databasen</div></div>";
        //}
        //// luk forbindelsen til databasen
        //conn.Close();
    }

}