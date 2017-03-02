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

        List<string> checks = new List<string>();

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
            String email = Session["login"].ToString();

            cmd.CommandText = "SELECT * FROM emails WHERE mailTo='" + email + "'";
            rdr = cmd.ExecuteReader();

            String from, subj, date;
            int id;

            /*
            table.InnerHtml += "<table border='1'>";
            int count = 0;
            while (rdr.Read())
            {
                id = Convert.ToInt32(rdr["email"]);
                from = rdr["mailFrom"].ToString();
                subj = rdr["subj"].ToString();
                date = rdr["mailDate"].ToString();

                table.InnerHtml += "<tr>";
                table.InnerHtml += "<td><input type='checkbox' name='" + id + "'></td>";
                table.InnerHtml += "<td> From: " + from + "</td>";
                table.InnerHtml += "<td> Subject: <a href='viewMail.aspx?id=" + id + "'>" + subj + "</a></td>";
                table.InnerHtml += "<td> Date: " + date + "</td>";
                table.InnerHtml += "</tr>";
                checks.Add(id.ToString());
            }
            table.InnerHtml += "</table>";
            rdr.Close();
            */
        }

        protected void btn_del_Click(object sender, EventArgs e)
        {
            
        }
    }
}