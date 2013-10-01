using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Opret : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //// Opret forbindelse til databasen

        ////FELTET MELLEM [] SKAL ÆNDRES SÅ DET PASSER TIL NAVNET PÅ DIN CONNECTIONSTRING . KAN FINDES I WEB.config FILEN
        //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        //SqlCommand cmd = new SqlCommand();
        //cmd.Connection = conn;

        //// SQL  strengen
        //cmd.CommandText = "INSERT INTO Nyheder (Overskrift, Manchet, Tekst, Forfatter, Img) VALUES (@Overskrift, @Manchet, @Tekst, @Forfatter, @Img)";

        //// Opsætning af filepath til FileUpload af Img
        //string filePath = "";
        //switch (Request.QueryString["db"])
        //{

        //    case "Nyheder":
        //        filePath = "news/";
        //        break;
        //    case "Events":
        //        filePath = "events/";
        //        break;

        //    default:
        //        Response.Redirect("Login.aspx");
        //        break;
        //}


        //// Tilføj Parametrer  (input fra brugeren / TextBox fra .aspx siden) til din SQL streng
        //cmd.Parameters.Add("@Overskrift", SqlDbType.NVarChar).Value = TextBox_OpretNyhed_Overskrift.Text;
        //cmd.Parameters.Add("@Manchet", SqlDbType.NText).Value = TextBox_OpretNyhed_Manchet.Text;
        //cmd.Parameters.Add("@Tekst", SqlDbType.NText).Value = TextBox_OpretNyhed_Tekst.Text;
        //cmd.Parameters.Add("@Forfatter", SqlDbType.NVarChar).Value = TextBox_OpretNyhed_Forfatter.Text;
        //cmd.Parameters.Add("@Img", SqlDbType.NVarChar).Value = filePath + FileUpload_NyNyhed.FileName;

        //string[] TextBoxe = { FileUpload_NyNyhed.FileName.ToString(), TextBox_OpretNyhed_Overskrift.Text.ToString(), TextBox_OpretNyhed_Manchet.Text.ToString(), 
        //                     TextBox_OpretNyhed_Tekst.Text.ToString(), TextBox_OpretNyhed_Forfatter.Text.ToString()};
        //int ErrorCount = 0;

        //for (var i = 0; i < TextBoxe.Length; i++)
        //{
        //    if (TextBoxe[i] == null || TextBoxe[i] == "")
        //    {
        //        ErrorCount++;
        //    }
        //}

        //if (ErrorCount != 0)
        //{
        //    Label_Succes.Text = "<p class='err'>Du mangler at udfylde " + ErrorCount + " felter";

        //    // Luk for forbindelsen til databasen
        //    conn.Close();
        //}
        //else if (ErrorCount == 0)
        //{
        //    // Åben for forbindelsen til databasen
        //    conn.Open();

        //    // Udfør SQL kommandoen
        //    cmd.ExecuteNonQuery();

        //    // Luk for forbindelsen til databasen
        //    conn.Close();

        //    Page.ClientScript.RegisterStartupScript(this.GetType(),
        //    Guid.NewGuid().ToString
        //    (), "<script language=JavaScript>alert('Din information er nu oprettet'); window.location.href = 'Admin_Nyheder.aspx?db=" + Request.QueryString["db"] + "';   </script>");
        //}
    }
}