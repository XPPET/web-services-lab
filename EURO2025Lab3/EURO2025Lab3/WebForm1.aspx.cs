using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EURO2025Lab3
{ 
        public partial class WebForm1 : System.Web.UI.Page
    {
        dev.dataflex.footballpool.Info fbWS =
                       new dev.dataflex.footballpool.Info();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] TeamTable = fbWS.TeamNames();
                lstTeams.Items.Add("-Επιλέξτε Εθνική Ομάδα-");

                for (int i = 0; i < TeamTable.Length; i++)
                    lstTeams.Items.Add(TeamTable[i]);

            }
        }

        protected void lstTeams_SelectedIndexChanged(object sender, EventArgs e)
        {
            dev.dataflex.footballpool.tPlayer[]   Player  
               = fbWS.TeamPlayers(lstTeams.Text, true);

            lstTeamPlayers.Items.Clear();
            for (int i = 0; i < Player.Length; i++)
                lstTeamPlayers.Items.Add(Player[i].sName);


            lblTeamPlayers.Text = "Οι παίκτες της ομάδας (" +
               Convert.ToString(Player.Length) + "):";
             lstTeamPlayers.Visible= lblTeamPlayers.Visible = true;

            dev.dataflex.footballpool.tPlayer[] PlayerNS
              = fbWS.TeamPlayers(lstTeams.Text, false);

            lstTeamPlayersNS.Items.Clear();
            for (int i = 0; i < PlayerNS.Length; i++)
                lstTeamPlayersNS.Items.Add(PlayerNS[i].sName);


            lblTeamPlayersNS.Text = "Οι μη επιλεγμένοι παίκτες της ομάδας (" +
               Convert.ToString(PlayerNS.Length) + "):";
            lstTeamPlayersNS.Visible = lblTeamPlayersNS.Visible = true;

        }
    }
}