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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
                Response.Redirect("inbox.aspx");
            //Session["conString"] = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Administrator\\Documents\\abel\\projects\\Github\\QACEmail\\QacEmail\\QacEmail\\App_Data\\qac.mdf;Integrated Security=True";
            Session["conString"] = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Administrator\\Documents\\GitHub\\QACEmail\\QacEmail\\QacEmail\\App_Data\\qac.mdf;Integrated Security=True";
            con = new SqlConnection(Session["conString"].ToString());
            cmd = new SqlCommand();
            
            con.Open();
            cmd.Connection = con;

            try
            {
                if (Request.Cookies["user"]["email"] != null)
                {
                    TextBoxEmail.Text = Request.Cookies["user"]["email"].ToString();
                    TextBoxPassword.Text = Request.Cookies["user"]["password"].ToString();
                    CheckBoxRemeberPassword.Checked = true;
                }
            } catch (Exception ex)
            {
                
            }
            
        }

        protected void ButtonLogIn_Click(object sender, EventArgs e)
        {
            String usr = TextBoxEmail.Text;
            String pwd = TextBoxPassword.Text;


            cmd.CommandText = "SELECT * FROM login WHERE email='" + usr + "' AND pwd='" + pwd + "'";

            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                if (rdr.Read())
                {

                    Session["login"] = rdr["email"].ToString();

                    if (CheckBoxRemeberPassword.Checked)
                    {
                        Response.Cookies["user"]["email"] = rdr["email"].ToString();
                        Response.Cookies["user"]["password"] = pwd;

                    } else
                    {
                        CheckBoxRemeberPassword.Checked = false;
                        Response.Cookies["user"]["email"] = "";
                        Response.Cookies["user"]["password"] = "";
                    }

                    rdr.Close();
                    Response.Redirect("inbox.aspx");
                }
                else
                {
                    lb_log_error.Text = "Invalid username or password";
                }
            }
        }
    }
}