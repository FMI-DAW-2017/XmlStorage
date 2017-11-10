using System;
using System.Web;
using System.Web.UI;
using System.Xml;

namespace XmlStorage
{

    public partial class AddMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DDLYear.DataBind();

        }

        public string[] Last100Years {
            get {
                DateTime now = DateTime.Now;
                string[] years = new string[100];

                for (int i = 0; i < years.Length; i++) {
                    years[i] = (now.Year - i).ToString();
                }

                return years;
            }
        }

        protected void AddMovie_Click(object sender, EventArgs e) {
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("~") + "/Movies.xml");

            XmlElement movie = doc.CreateElement("movie");

            // Set Attributes
            movie.SetAttribute("genre", GenreTB.Text);
            movie.SetAttribute("year", DDLYear.SelectedValue);
            movie.SetAttribute("duration", DurationTB.Text);

            // Get last ID
            XmlElement root = doc.DocumentElement;
            XmlNode lastMovie = root.LastChild;
            string movieID = "1";
            if (lastMovie != null) {
                int maxID = int.Parse(lastMovie.Attributes["ID"].Value);
                movieID = (maxID + 1).ToString();
            }

            // Set ID
            movie.SetAttribute("ID", movieID);

            // Add child nodes

            movie.AppendChild(createElement(doc, "title", TitleTB.Text));
            movie.AppendChild(createElement(doc, "director", DirectorTB.Text));

            if (!Actor1TB.Text.Trim().Equals(""))
            {
                movie.AppendChild(createElement(doc, "actor", Actor1TB.Text));
            }

            if (!Actor2TB.Text.Trim().Equals(""))
            {
                movie.AppendChild(createElement(doc, "actor", Actor2TB.Text));
            }

            if(PosterFU.HasFile) {
                if(PosterFU.PostedFile.ContentType.ToLower().EndsWith("jpeg") || PosterFU.PostedFile.ContentType.ToLower().EndsWith("jpg")) {
                    PosterFU.SaveAs(Server.MapPath("~") + "/posters/" + movieID + ".jpg");

                    root.AppendChild(movie);
                    doc.Save(Server.MapPath("~") + "/Movies.xml");

                    TitleTB.Text = "";
                    DurationTB.Text = "";
                    GenreTB.Text = "";
                    DirectorTB.Text = "";
                    Actor1TB.Text = "";
                    Actor2TB.Text = "";

                    FormResponse.Text = "Movie added succsesfully!";
                } else {
                    FormResponse.Text = "Image file is not a JPEG!";
                }
            } else {
                FormResponse.Text = "No image file uploaded!";
            }

        }

        private XmlElement createElement(XmlDocument doc, string title, string value) {
            XmlElement item = doc.CreateElement(title);
            item.InnerText = value;

            return item;
        }
    }
}
