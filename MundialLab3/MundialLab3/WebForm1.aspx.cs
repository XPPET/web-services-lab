using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MundialLab3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        eu.dataaccess.footballpool.ws.Info fbWS =
           new eu.dataaccess.footballpool.ws.Info();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack==false)
            {
               string[] TeamTable = fbWS.TeamNames();

                lstTeamNames.Items.Add("-Επιλέξτε ομάδα-");
                for (int i = 0; i < TeamTable.Length; i++)
                    lstTeamNames.Items.Add(TeamTable[i]);

            }


        }

        protected void lstTeamNames_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}