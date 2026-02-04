using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StadiaLab2b
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        eu.dataaccess.footballpool.ws.Info st =
            new eu.dataaccess.footballpool.ws.Info();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack==false)
            {
                eu.dataaccess.footballpool.ws.tStadiumInfo[]
               stadium_names = st.AllStadiumInfo();

                DropDownList1.Items.Add("-- Επιλέξτε στάδιο --");

                for (int i = 0; i < stadium_names.Length; i++)
                    DropDownList1.Items.Add(stadium_names[i].sName);

            }


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           eu.dataaccess.footballpool.ws.tStadiumInfo stadio
            = st.StadiumInfo(DropDownList1.Text);

            lblName.Text = stadio.sName;
            lblSeats.Text = stadio.iSeatsCapacity.ToString();
            lblCity.Text = stadio.sCityName;

            HyperLink1.NavigateUrl = stadio.sGoogleMapsURL;

            HyperLink2.NavigateUrl = stadio.sWikipediaURL;
        }
    }
}