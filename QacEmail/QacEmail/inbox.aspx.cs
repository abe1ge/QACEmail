using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace QacEmail
{
    public partial class inbox : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con;
        SqlDataReader rdr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
                Response.Redirect("login.aspx");

            con = new SqlConnection(Session["conString"].ToString());
            cmd = new SqlCommand();

            con.Open();
            cmd.Connection = con;

            inbox_load();
        }

        public void inbox_load()
        {

        }
    }
}