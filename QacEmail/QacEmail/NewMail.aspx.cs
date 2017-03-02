using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QacEmail
{
    public partial class NewMail : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con;
        SqlDataReader rdr;

        protected List<string> error = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
                Response.Redirect("login.aspx");

            con = new SqlConnection(Session["conString"].ToString());
            cmd = new SqlCommand();

            con.Open();
            cmd.Connection = con;
        }

        protected void Send_Bt_Click(object sender, EventArgs e)
        {
            //insert into emails values('abel@qa.com', 'jo@qa.com', 'hola', 'como estas?', SYSDATETIME(), '1')
            string email = Session["login"].ToString();
            string[] to = Request.Form["to"].ToString().Split(',');
            string subj = Request.Form["Subject"].ToString();
            string mail = Request.Form["mail"].ToString();


            foreach (string address in to)
            {
                cmd.CommandText = "select email from users where email = '" + address + "'";

                using (SqlDataReader rdr = cmd.ExecuteReader())
                {

                    if (rdr.Read())
                    {
                        rdr.Close();
                        cmd.CommandText = "insert into emails values('" + email + "', '" + address + "', '" + subj + "', '" + mail + "', SYSDATETIME(), 'n')";

                        cmd.ExecuteNonQuery();
                    }else
                    {
                        error.Add(address);
                    }
                }
            }
        }
    }
}