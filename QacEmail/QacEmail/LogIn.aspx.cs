using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace QacEmail
{
    public partial class LogIn : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con;
        SqlDataReader rdr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
                Response.Redirect("inbox.aspx");
            Session["conString"] = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Administrator\\Documents\\abel\\projects\\Github\\QACEmail\\QacEmail\\QacEmail\\App_Data\\qac.mdf;Integrated Security=True";
            //Session["conString"] = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Administrator\\Documents\\GitHub\\QACEmail\\QacEmail\\QacEmail\\App_Data\\qac.mdf;Integrated Security=True";
            con = new SqlConnection(Session["conString"].ToString());
            cmd = new SqlCommand();

            con.Open();
            cmd.Connection = con;
        }

        protected void ButtonLogIn_Click(object sender, EventArgs e)
        {
            String usr = TextBoxEmail.Text;
            String pwd = TextBoxPassword.Text;

            cmd.CommandText = "SELECT * FROM login WHERE email='" + usr + "' AND pwd='" + pwd + "'";
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                Session["login"] = "true";
                Response.Redirect("inbox.aspx");
            }
            else
            {
                lb_log_error.Text = "Invalid username or password";
            }
        }
    }
}