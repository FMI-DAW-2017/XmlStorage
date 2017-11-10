using System;
using System.Web;
using System.Web.UI;

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
    }
}
