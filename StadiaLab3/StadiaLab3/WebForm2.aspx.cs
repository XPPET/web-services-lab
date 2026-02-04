using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StadiaLab3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        dev.dataflex.footballpool.Info 
            fbWS = new dev.dataflex.footballpool.Info();
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

                string[] TeamTable  =  fbWS.TeamNames();

                DropDownList1.Items.Add("- Επιλέξτε Ομάδα -");
                DropDownList2.Items.Add("- Επιλέξτε Ομάδα -");

                for (int i = 0; i < TeamTable.Length; i++)
                {

                    DropDownList1.Items.Add(TeamTable[i]);
                    DropDownList2.Items.Add(TeamTable[i]);
                }
            }

        }
    }
}