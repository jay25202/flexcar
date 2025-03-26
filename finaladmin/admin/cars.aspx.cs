using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_cars : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //ddlcity.SelectedValue = "6";
            SqlDataSource1.SelectCommand = "SELECT tbl_car.transmission_type, tbl_car.state_id, tbl_car.city_id ,tbl_car.avarage_fuel_efficiency, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.car_image, tbl_car_company.car_company_name, tbl_car_model.car_model, tbl_car_color.color, tbl_car_type.car_type, Tbl_car_fuel_type.car_fuel_type, tbl_car.car_id, tbl_car.customer_id, tbl_car_name.car_name FROM tbl_car INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id INNER JOIN tbl_car_color ON tbl_car.color_id = tbl_car_color.color_id INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id AND tbl_car_company.car_company_id = tbl_car_name.car_company_id where tbl_car.city_id=5";
            Repeater1.DataBind();
            //ddlcity.SelectedValue = "6";
            //ddlcity.SelectedIndex = 1;
            //Repeater1.DataBind();
        }
    }

    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT tbl_car.transmission_type, tbl_car.state_id, tbl_car.city_id ,tbl_car.avarage_fuel_efficiency, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.car_image, tbl_car_company.car_company_name, tbl_car_model.car_model, tbl_car_color.color, tbl_car_type.car_type, Tbl_car_fuel_type.car_fuel_type, tbl_car.car_id, tbl_car.customer_id, tbl_car_name.car_name FROM tbl_car INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id INNER JOIN tbl_car_color ON tbl_car.color_id = tbl_car_color.color_id INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id AND tbl_car_company.car_company_id = tbl_car_name.car_company_id where tbl_car.city_id='" + ddlcity.SelectedValue + "'";
        Repeater1.DataBind();
        //Repeater1.DataSourceID = "SqlDataSource1";
       
    }
}