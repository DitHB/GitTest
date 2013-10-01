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

public partial class Rediger : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Klargører forbindelse
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;

        //SQL strengen 
        cmd.CommandText = "SELECT * FROM brugere WHERE Id=@Id";

        // Tilføj Parametrer  (ID af den bruger knap der er trykket på) 
        cmd.Parameters.Add("@Id", SqlDbType.NVarChar).Value = Request.QueryString["ID"];

        // Åbner forbindelse 
        conn.Open();

        // Binder Datareader til repeaterens datasource
        SqlDataReader reader = cmd.ExecuteReader();
        //Repeater_Rediger.DataSource = reader;
        //Repeater_Rediger.DataBind();

        //LikeRepeater.DataSource = null
        if (reader.Read())
        {

            //Label_ID.Text = "ID: " + reader["Id"].ToString();
            //TextBox_Navn.Text = reader["Navn"].ToString();
            //TextBox_Email.Text = reader["Email"].ToString();
            //TextBox_Telefon.Text = reader["Telefon"].ToString();
            //TextBox_Password.Text = reader["Password"].ToString();
        }

        //Lukker forbindelse
        conn.Close();

    }
    protected void Button_Save_Click(object sender, EventArgs e)
    {

    }
    protected void Button_Delete_Click(object sender, EventArgs e)
    {

    }
}