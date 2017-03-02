using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace QacEmail
{
    public partial class pow : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRed_Click(object sender, EventArgs e)
        {
            foreach (Control ctrl in Page.Header.Controls)
            {
                var htmlLink = ctrl as HtmlLink;
                if (htmlLink != null)
                {
                    if (htmlLink.ID == "Style_Blue")
                        Page.Header.Controls.Remove(htmlLink);
                    if (htmlLink.ID == "Style_Yellow")
                        Page.Header.Controls.Remove(htmlLink);
                    if (htmlLink.ID == "Style_Green")
                        Page.Header.Controls.Remove(htmlLink);
                }
            }

            HtmlLink css = new HtmlLink();
            css.Attributes.Add("rel", "stylesheet");
            css.Attributes.Add("type", "text/css");
            css.Href = "StyleSheetRed.css";
            css.ID = "Style_Red";

            Page.Header.Controls.Add(css);
        }

        protected void ButtonYellow_Click(object sender, EventArgs e)
        {
            foreach (Control ctrl in Page.Header.Controls)
            {
                var htmlLink = ctrl as HtmlLink;
                if (htmlLink != null)
                {
                    if (htmlLink.ID == "Style_Blue")
                        Page.Header.Controls.Remove(htmlLink);
                    if (htmlLink.ID == "Style_Red")
                        Page.Header.Controls.Remove(htmlLink);
                    if (htmlLink.ID == "Style_Green")
                        Page.Header.Controls.Remove(htmlLink);
                }
            }

            HtmlLink css = new HtmlLink();
            css.Attributes.Add("rel", "stylesheet");
            css.Attributes.Add("type", "text/css");
            css.Href = "StyleSheetYellow.css";
            css.ID = "Style_Yellow";

            Page.Header.Controls.Add(css);
        }

        protected void ButtonGreen_Click(object sender, EventArgs e)
        {
            foreach (Control ctrl in Page.Header.Controls)
            {
                var htmlLink = ctrl as HtmlLink;
                if (htmlLink != null)
                {
                    if (htmlLink.ID == "Style_Blue")
                        Page.Header.Controls.Remove(htmlLink);
                    if (htmlLink.ID == "Style_Red")
                        Page.Header.Controls.Remove(htmlLink);
                    if (htmlLink.ID == "Style_Yellow")
                        Page.Header.Controls.Remove(htmlLink);
                }
            }

            HtmlLink css = new HtmlLink();
            css.Attributes.Add("rel", "stylesheet");
            css.Attributes.Add("type", "text/css");
            css.Href = "StyleSheetGreen.css";
            css.ID = "Style_Green";

            Page.Header.Controls.Add(css);
        }

        protected void ButtonBlue_Click(object sender, EventArgs e)
        {
            foreach (Control ctrl in Page.Header.Controls)
            {
                var htmlLink = ctrl as HtmlLink;
                if (htmlLink != null)
                {
                    if (htmlLink.ID == "Style_Green")
                        Page.Header.Controls.Remove(htmlLink);
                    if (htmlLink.ID == "Style_Red")
                        Page.Header.Controls.Remove(htmlLink);
                    if (htmlLink.ID == "Style_Green")
                        Page.Header.Controls.Remove(htmlLink);
                }
            }

            HtmlLink css = new HtmlLink();
            css.Attributes.Add("rel", "stylesheet");
            css.Attributes.Add("type", "text/css");
            css.Href = "StyleSheetBlue.css";
            css.ID = "Style_Blue";

            Page.Header.Controls.Add(css);
        }
    }
}