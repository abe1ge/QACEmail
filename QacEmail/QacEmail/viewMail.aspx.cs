using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QacEmail
{
    public partial class viewMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["login"] == null)
                Response.Redirect("login.aspx");

            string id = Request["id"];

            SqlCommand cmd;
            SqlConnection con;

            con = new SqlConnection(Session["conString"].ToString());
            cmd = new SqlCommand();

            con.Open();
            cmd.Connection = con;

            //Select mailFrom,txt from emails where email = 12
            cmd.CommandText = "Select mailFrom,txt from emails where email =" + id;

            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                if (rdr.Read())
                {
                    FromText.Text = rdr["mailFrom"].ToString();
                    message.Text = rdr["txt"].ToString();
                }
                else
                {
                    Response.Redirect("inbox.aspx");
                }
            }
        }
    }
}