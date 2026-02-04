using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StadiaLab3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        dev.dataflex.footballpool.Info fbWS
            = new dev.dataflex.footballpool.Info();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] StadiumTable = fbWS.StadiumNames();

                DropDownList1.Items.Add("- Επιλέξτε Στάδιο -");
                for (int i = 0; i < StadiumTable.Length; i++)
                    DropDownList1.Items.Add(StadiumTable[i]);
            
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
             dev.dataflex.footballpool.tStadiumInfo  stadio 
                = fbWS.StadiumInfo(DropDownList1.Text);

            Label1.Text = stadio.sCityName + ", " 
                + Convert.ToString(stadio.iSeatsCapacity)+ " θέσεις.";

            HyperLinkGoogle.NavigateUrl= stadio.sGoogleMapsURL;

            //HyperLinkWiki.NavigateUrl = stadio.sWikipediaURL;
            HyperLinkWiki.NavigateUrl = "https://en.wikipedia.org/wiki/Stadion_Allmend";

            iframePH.Controls.Add(new LiteralControl("<iframe src=\"" +
                      stadio.sWikipediaURL + "\" width=\"600\"" +
                         "height=\"300\"runat=\"server\"></iframe>"));

                                


        }
    }
}