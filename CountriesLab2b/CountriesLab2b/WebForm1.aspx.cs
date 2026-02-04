using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CountriesLab2b
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        org.oorsprong.www.CountryInfoService ct =
            new org.oorsprong.www.CountryInfoService();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                DropDownList1.Items.Add("- Επιλέξτε -");

                org.oorsprong.www.tCountryCodeAndName[]
                       can = ct.ListOfCountryNamesByName();

                for (int i = 0; i < can.Length; i++)
                    DropDownList1.Items.Add(can[i].sName);


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string strIsoCountry = 
                ct.CountryISOCode(DropDownList1.Text);

            lblIsoCode.Text = strIsoCountry;

            Image1.ImageUrl = 
                ct.CountryFlag(strIsoCountry);

            lblCapital.Text = ct.CapitalCity(strIsoCountry);

            lblPhone.Text =
                ct.CountryIntPhoneCode(strIsoCountry);

           org.oorsprong.www.tCurrency Cur =
            ct.CountryCurrency(strIsoCountry);

            lblCurrency.Text = Cur.sName + " (" +
                Cur.sISOCode + ")";

        }
    }
}