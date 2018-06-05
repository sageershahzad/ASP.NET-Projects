using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RadioButton
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ContinentsDropDownList.DataSource = GetData("spGetContinents", null);
                ContinentsDropDownList.DataTextField = "ContinentName";
                ContinentsDropDownList.DataValueField = "ContinentId";
                ContinentsDropDownList.DataBind();


                ListItem listContinents = new ListItem("Select Continent", "-1");
                ContinentsDropDownList.Items.Insert(0, listContinents);

                ListItem listCountries = new ListItem("Select Country", "-1");
                CountriesDropDownList.Items.Insert(0, listCountries);

                ListItem listCities = new ListItem("Select City", "-1");
                CitiesDropDownList.Items.Insert(0, listCities);

                CountriesDropDownList.Enabled = false;
                CitiesDropDownList.Enabled = false;

            }
        }

        //private void CascadingLoad()
        //{
           
        //}

        private DataSet GetData(string SPName, SqlParameter SPParameter)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter(SPName, con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            if (SPParameter != null)
            {
                da.SelectCommand.Parameters.Add(SPParameter);
            }


            DataSet Ds = new DataSet();
            da.Fill(Ds);
            return Ds;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FindGender();
        }

        private void FindGender()
        {
            if (MaleRadioButton.Checked == true)
            {
                GenderMessageLabel.Text = "Your Gender is " + MaleRadioButton.Text;
            }

            if (FemaleRadioButton.Checked == true)
            {
                GenderMessageLabel.Text = "Your Gender is " + FemaleRadioButton.Text;
            }

            if (UnknownRadioButton.Checked == true)
            {
                GenderMessageLabel.Text = "Your Gender is " + UnknownRadioButton.Text;
            }
        }

        protected void ContinentsDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ContinentsDropDownList.SelectedIndex == 0)
            {
                CountriesDropDownList.SelectedIndex = 0;
                CountriesDropDownList.Enabled = false;
                CitiesDropDownList.SelectedIndex = 0;
                CitiesDropDownList.Enabled = false;
            }

            else
            {
                CountriesDropDownList.Enabled = true;
                SqlParameter parameter = new SqlParameter("@ContinentId", ContinentsDropDownList.SelectedValue);
                DataSet Ds = GetData("spGetCountriesByContinentId", parameter);
                CountriesDropDownList.DataSource = Ds;
                CountriesDropDownList.DataTextField = "CountryName";
                CountriesDropDownList.DataValueField = "CountryId";
                CountriesDropDownList.DataBind();
                ListItem listCountries = new ListItem("Select Country", "-1");
                CountriesDropDownList.Items.Insert(0, listCountries);

                CitiesDropDownList.SelectedIndex = 0;
                CitiesDropDownList.Enabled = false;
            }
        }

        protected void CountriesDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CountriesDropDownList.SelectedIndex == 0)
            {

            }

            else
            {
                CitiesDropDownList.Enabled = true;
                SqlParameter parameter = new SqlParameter("@CountryId", CountriesDropDownList.SelectedValue);
                DataSet Ds = GetData("spGetCitiesByCountryId", parameter);
                CitiesDropDownList.DataSource = Ds;
                CitiesDropDownList.DataTextField = "CityName";
                CitiesDropDownList.DataValueField = "CityId";
                CitiesDropDownList.DataBind();
                ListItem listCities = new ListItem("Select City", "-1");
                CitiesDropDownList.Items.Insert(0, listCities);
            }
        }
    }
}