using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QacEmail
{
    public partial class Regester : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["conString"] = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Administrator\\Documents\\abel\\projects\\Github\\QACEmail\\QacEmail\\QacEmail\\App_Data\\qac.mdf;Integrated Security=True";
            //Session["conString"] = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Administrator\\Documents\\GitHub\\QACEmail\\QacEmail\\QacEmail\\App_Data\\qac.mdf;Integrated Security=True";
            con = new SqlConnection(Session["conString"].ToString());
            cmd = new SqlCommand();

            con.Open();
            cmd.Connection = con;

        }

        protected void Regesterbutton_Click(object sender, EventArgs e)
        {
            string email = Request.Form["Email"].ToString();
            string password = Request.Form["passwordinput"].ToString();
            string Repassword = Request.Form["Repasswordinput"].ToString();
            string name = Request.Form["nameinput"].ToString();
            string seqQ = Request.Form["SecQ"].ToString();
            string seqA = Request.Form["SecA"].ToString();
            string address = Request.Form["Addressarea"].ToString();

            if (password == Repassword)
            {
                cmd.CommandText = "INSERT INTO [dbo].[users] ([email], [name], [addr], [secQ], [secA]) VALUES " +
                                "('" + email + "', '" + name + "', '" + address + "', '" + seqQ + "', '" + seqA + "')" +
                                "INSERT INTO[dbo].[login] ([email], [pwd]) VALUES('" + email + "', '" + password + "')";

                cmd.ExecuteNonQuery();

                Response.Redirect("Login.aspx");
            }


        }
    }
}