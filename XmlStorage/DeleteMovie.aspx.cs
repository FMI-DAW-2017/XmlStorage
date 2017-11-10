using System;
using System.Web;
using System.Web.UI;
using System.Xml;

namespace XmlStorage
{
    public partial class DeleteMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            string movieID = Request.Params["id"];

            if(movieID != null) {
                XmlDocument doc = new XmlDocument();
                doc.Load(Server.MapPath("~") + "/Movies.xml");

                XmlElement root = doc.DocumentElement;

                XmlNode movie = root.SelectSingleNode("/moviestore/movie[@ID=" + movieID + "]");
                XmlNode title = movie.SelectSingleNode("title");

                TitleL.Text = title.InnerText;
                YearL.Text = movie.Attributes["year"].Value;

            }
        }

        protected void BDelete_Click(object sender, EventArgs e) {
            
        }

        protected void BCancel_Click(object sender, EventArgs e) {
            Response.Redirect("Movies.aspx");
        }
    }
}
