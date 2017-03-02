using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QacEmail
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con;
        SqlDataReader rdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(Session["conString"].ToString());
            cmd = new SqlCommand();

            con.Open();
            cmd.Connection = con;
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            string email = TextBoxEmail.Text;

            cmd.CommandText = "SELECT * FROM users WHERE email='" + email + "'";
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                Security.Visible = true;
                LabelQues.Text = rdr["secQ"].ToString();
                LabelError.Text = "Please answer the security question";
            }
            else
            {
                LabelError.Text = "Email address does not exisit";
            }

            rdr.Close();
        }

        protected void ButtonReset_Click(object sender, EventArgs e)
        {
            string email = TextBoxEmail.Text;
            string answer = TextBoxSAnswer.Text;
            cmd.CommandText = "SELECT * FROM users WHERE email='" + email + "' AND secA='" + answer + "'";
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                Security.Visible = false;
                PanelRestPass.Visible = true;
                LabelQues.Text = "Security Question" + rdr["secQ"].ToString();
                LabelError2.Text = "";
            }
            else
            {
                LabelError2.Text = "Wrong answer";
            }

            rdr.Close();
        }

        protected void ButtonPrest_Click(object sender, EventArgs e)
        {
            string email = TextBoxEmail.Text;

            string password = TextBoxPass.Text;
            string rePassword = TextBoxRePass.Text;

            if (password == rePassword)
            {
                cmd.CommandText = "update login Set pwd = '" + password + "' where email = '" + email + "'";
                cmd.ExecuteNonQuery();

                Response.Redirect("LogIn.aspx");
            }
            else
            {
                LabelError2.Text = "The password does not match";
            }
        }
    }
}