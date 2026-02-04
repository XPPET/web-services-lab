using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace CountriesLab2b
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            com.lavasoft.wsgeoip.GeoIPService geoWS =
                new com.lavasoft.wsgeoip.GeoIPService();

           string country =  geoWS.GetIpLocation(TextBox1.Text);

            XmlDocument doc = new XmlDocument();
            doc.LoadXml(country);

              XmlNodeList nodes =
               doc.DocumentElement.SelectNodes("//GeoIP");
            
             string iso2code = nodes[0]["Country"].InnerText;

            Label1.Text = geoWS.GetCountryNameByISO2(iso2code) +
                ", " + nodes[0]["State"].InnerText; ;
             

        }
    }
}