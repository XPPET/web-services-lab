using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyConsumer
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        localhost.MyWService myWS = new localhost.MyWService();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = myWS.ServerTime();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label2.Text = myWS.ServerTime();
        }
    }
}