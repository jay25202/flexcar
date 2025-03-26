using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class visitor_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds;
    String qry;
    SqlDataAdapter dap;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();

        Session["visitor"] = "0";
        try
        {

            if (!IsPostBack)
            {

                txtpickup.Text = Request.Cookies["visitor"]["pick"];
                txtdrop.Text = Request.Cookies["visitor"]["drop"];
                txtpickdate.Text = Request.Cookies["visitor"]["pickdate"];
                txtdropdate.Text = Request.Cookies["visitor"]["dropdate"];
                pickuptime.Text = Request.Cookies["visitor"]["picktime"];
                dropofftime.Text = Request.Cookies["visitor"]["droptime"];
                ddlstate.SelectedValue = Request.Cookies["visitor"]["stateid"];
                ddlcity.SelectedValue = Request.Cookies["visitor"]["cityid"];
            }
        }
        catch
        {
            Response.Redirect("../admin/error_page.aspx");
        }
        string st = Request.Cookies["visitor"]["stateid"];
        string ct = Request.Cookies["visitor"]["cityid"];

        string ddt = Convert.ToDateTime(Request.Cookies["visitor"]["dropdate"]).ToString("dd/MM/yyyy");
        DateTime pdate = Convert.ToDateTime(Request.Cookies["visitor"]["pickdate"]).AddDays(-1);
        //try
        //{

        qry = "SELECT distinct tbl_car.car_id, tbl_car.car_name_id, tbl_car.car_company_id, tbl_car.car_model_id, tbl_car.transmission_type, tbl_car.car_fuel_id, tbl_car.car_type_id, tbl_car.avarage_fuel_efficiency, tbl_car.color_id, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.customer_id, tbl_car.car_image, tbl_car.car_rent, tbl_car.state_id, tbl_car.city_id, tbl_car.status, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id LEFT OUTER JOIN tbl_booking ON tbl_car.car_id = tbl_booking.car_id where tbl_car.state_id ='" + st + "' and tbl_car.city_id ='" + ct + "' and tbl_car.status=0 and tbl_car.car_id not in(select car_id from tbl_booking where ride_starting_date>='" + pdate.ToString("dd/MM/yyyy") + "' and ride_ending_date<='" + Convert.ToDateTime(Request.Cookies["visitor"]["dropdate"]).ToString("dd/MM/yyyy") + "' and status=2)";
        dap = new SqlDataAdapter(qry, cn);
        ds = new DataSet();
        dap.Fill(ds);
        dt = new DataTable();
        dt = ds.Tables[0];
        if (dt.Rows.Count > 0)
        {
            lblcar.Text = "";
            lblcar.Visible = false;
            Repeater1.Visible = true;
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        else
        {
            //txtdrop.Text = "1234567";
            qry = " SELECT distinct tbl_car.car_id, tbl_car.car_name_id, tbl_car.car_company_id, tbl_car.car_model_id, tbl_car.transmission_type, tbl_car.car_fuel_id, tbl_car.car_type_id, tbl_car.avarage_fuel_efficiency, tbl_car.color_id, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.customer_id, tbl_car.car_image, tbl_car.car_rent, tbl_car.state_id, tbl_car.city_id, tbl_car.status, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id LEFT OUTER JOIN tbl_booking ON tbl_car.car_id = tbl_booking.car_id where tbl_car.state_id = '" + st + "' and tbl_car.city_id = '" + ct + "' and tbl_car.status=0";
            dap = new SqlDataAdapter(qry, cn);
            ds = new DataSet();
            dap.Fill(ds);
            dt = new DataTable();
            dt = ds.Tables[0];
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblcar.Text = "";
                lblcar.Visible = false;
                Repeater1.Visible = true;
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else
            {
                Repeater1.Visible = false;
                lblcar.Visible = true;
                lblcar.Text = "Sorry..  No Car is Available....";
            }
        }
        //}
        //catch
        //{
        //    ds.Clear();
        //qry = " SELECT tbl_car.car_id, tbl_car.car_name_id, tbl_car.car_company_id, tbl_car.car_model_id, tbl_car.transmission_type, tbl_car.car_fuel_id, tbl_car.car_type_id, tbl_car.avarage_fuel_efficiency, tbl_car.color_id, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.customer_id, tbl_car.car_image, tbl_car.car_rent, tbl_car.state_id, tbl_car.city_id, tbl_car.status, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id LEFT OUTER JOIN tbl_booking ON tbl_car.car_id = tbl_booking.car_id where tbl_car.state_id = '" + st + "' and tbl_car.city_id = '" + ct + "'";
        //dap = new SqlDataAdapter(qry, cn);
        //ds = new DataSet();
        //dap.Fill(ds);
        //dt = new DataTable();
        //dt = ds.Tables[0];
        //Repeater1.DataSource = dt;
        //Repeater1.DataBind();
        //}
        //SqlDataSource3.SelectCommand = "SELECT tbl_car.*, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id where tbl_car.state_id='" + st + "' and tbl_car.city_id='" + ct + "' and tbl_car.status=0";
        //Repeater1.DataBind();
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        ds.Clear();
        Response.Cookies.Clear();
        Response.Cookies["visitor"]["stateid"] = ddlstate.SelectedValue;
        Response.Cookies["visitor"]["cityid"] = ddlcity.SelectedValue;
        Response.Cookies["visitor"]["pick"] = Request.Cookies["visitor"]["pick"];
        Response.Cookies["visitor"]["drop"] = Request.Cookies["visitor"]["drop"];
        Response.Cookies["visitor"]["pickdate"] = Request.Cookies["visitor"]["pickdate"];
        Response.Cookies["visitor"]["dropdate"] = Request.Cookies["visitor"]["dropdate"];
        Response.Cookies["visitor"]["picktime"] = Request.Cookies["visitor"]["picktime"];
        Response.Cookies["visitor"]["droptime"] = Request.Cookies["visitor"]["droptime"];

        string st = ddlstate.SelectedValue;
        string ct = ddlcity.SelectedValue;
        string ddt = Convert.ToDateTime(txtpickdate.Text).ToString("dd/MM/yyyy");
        DateTime pdate = Convert.ToDateTime(txtpickdate.Text).AddDays(-1);

        //try
        //{
        ds.Clear();
        qry = "SELECT distinct tbl_car.car_id, tbl_car.car_name_id, tbl_car.car_company_id, tbl_car.car_model_id, tbl_car.transmission_type, tbl_car.car_fuel_id, tbl_car.car_type_id, tbl_car.avarage_fuel_efficiency, tbl_car.color_id, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.customer_id, tbl_car.car_image, tbl_car.car_rent, tbl_car.state_id, tbl_car.city_id, tbl_car.status, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id LEFT OUTER JOIN tbl_booking ON tbl_car.car_id = tbl_booking.car_id where tbl_car.state_id ='" + st + "' and tbl_car.city_id ='" + ct + "' and tbl_car.car_id not in(select car_id from tbl_booking where ride_starting_date>='" + pdate.ToString("dd/MM/yyyy") + "' and ride_ending_date<='" + Convert.ToDateTime(txtdropdate.Text).ToString("dd/MM/yyyy") + "' and status=2)";
        dap = new SqlDataAdapter(qry, cn);
        ds = new DataSet();
        dap.Fill(ds);
        dt = new DataTable();
        dt = ds.Tables[0];
        if (dt.Rows.Count > 0)
        {
            lblcar.Text = "";
            lblcar.Visible = false;
            Repeater1.Visible = true;
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        else
        {
            //txtdrop.Text = "1234567";
            qry = " SELECT distinct tbl_car.car_id, tbl_car.car_name_id, tbl_car.car_company_id, tbl_car.car_model_id, tbl_car.transmission_type, tbl_car.car_fuel_id, tbl_car.car_type_id, tbl_car.avarage_fuel_efficiency, tbl_car.color_id, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.customer_id, tbl_car.car_image, tbl_car.car_rent, tbl_car.state_id, tbl_car.city_id, tbl_car.status, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id LEFT OUTER JOIN tbl_booking ON tbl_car.car_id = tbl_booking.car_id where tbl_car.state_id = '" + st + "' and tbl_car.city_id = '" + ct + "'";
            dap = new SqlDataAdapter(qry, cn);
            ds = new DataSet();
            dap.Fill(ds);
            dt = new DataTable();
            dt = ds.Tables[0];
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblcar.Text = "";
                lblcar.Visible = false;
                Repeater1.Visible = true;
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else
            {
                Repeater1.Visible = false;
                lblcar.Visible = true;
                lblcar.Text = "Sorry..  No Car is Available.....";
            }
        }
        //}
        //catch
        //{
        //    ds.Clear();
        //    qry = " SELECT tbl_car.car_id, tbl_car.car_name_id, tbl_car.car_company_id, tbl_car.car_model_id, tbl_car.transmission_type, tbl_car.car_fuel_id, tbl_car.car_type_id, tbl_car.avarage_fuel_efficiency, tbl_car.color_id, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.customer_id, tbl_car.car_image, tbl_car.car_rent, tbl_car.state_id, tbl_car.city_id, tbl_car.status, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id LEFT OUTER JOIN tbl_booking ON tbl_car.car_id = tbl_booking.car_id where tbl_car.state_id = '" + st + "' and tbl_car.city_id = '" + ct + "'";
        //    dap = new SqlDataAdapter(qry, cn);
        //    ds = new DataSet();
        //    dap.Fill(ds);
        //    dt = new DataTable();
        //    dt = ds.Tables[0];
        //    Repeater1.DataSource = dt;
        //    Repeater1.DataBind();
        //}
        //SqlDataSource3.SelectCommand = "SELECT tbl_car.*, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id where tbl_car.state_id='" + st + "' and tbl_car.city_id='" + ct + "' and tbl_car.status=0";
        //Repeater1.DataBind();

    }
    protected void cartype_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string st = ddlstate.SelectedValue;
        //string ct = ddlcity.SelectedValue;
        //string type = cartype.SelectedValue;
        //string com = carcompany.SelectedValue;
        //string fuel = RadioButtonList1.SelectedValue;
        //SqlDataSource3.SelectCommand = "SELECT tbl_car.*, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id where tbl_car.state_id='" + st + "' and tbl_car.city_id='" + ct + "' and tbl_car.car_type_id='" + type + " ' and tbl_car.car_fuel_id='" + fuel + "' and tbl_car.car_company_id='" + com + "' and tbl_car.status=0";
        //Repeater1.DataBind();
    }

    protected void carcompany_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string st = ddlstate.SelectedValue;
        //string ct = ddlcity.SelectedValue;
        //string type = cartype.SelectedValue;
        //string com = carcompany.SelectedValue;
        //string fuel = RadioButtonList1.SelectedValue;
        //SqlDataSource3.SelectCommand = "SELECT tbl_car.*, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id where tbl_car.state_id='" + st + "' and tbl_car.city_id='" + ct + "' and tbl_car.car_type_id='" + type + " ' and tbl_car.car_fuel_id='" + fuel + "' and tbl_car.car_company_id='" + com + "' and tbl_car.status=0";
        //Repeater1.DataBind();
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string st = ddlstate.SelectedValue;
        //string ct = ddlcity.SelectedValue;
        //string type = cartype.SelectedValue;
        //string com = carcompany.SelectedValue;
        //string fuel = RadioButtonList1.SelectedValue;
        //SqlDataSource3.SelectCommand = "SELECT tbl_car.*, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id where tbl_car.state_id='" + st + "' and tbl_car.city_id='" + ct + "' and tbl_car.car_type_id='" + type + " ' and tbl_car.car_fuel_id='" + fuel + "' and tbl_car.car_company_id='" + com + "' and tbl_car.status=0";
        //Repeater1.DataBind();
    }

    protected void btnfilter_Click(object sender, EventArgs e)
    {
        string st = ddlstate.SelectedValue;
        string ct = ddlcity.SelectedValue;
        string type = cartype.SelectedValue;
        string com = carcompany.SelectedValue;
        string fuel = RadioButtonList1.SelectedValue;

        string ddt = Convert.ToDateTime(Request.Cookies["visitor"]["dropdate"]).ToString("dd/MM/yyyy");
        DateTime pdate = Convert.ToDateTime(Request.Cookies["visitor"]["pickdate"]).AddDays(-1);

        //try
        //{
        ds.Clear();
        qry = "SELECT distinct tbl_car.car_id, tbl_car.car_name_id, tbl_car.car_company_id, tbl_car.car_model_id, tbl_car.transmission_type, tbl_car.car_fuel_id, tbl_car.car_type_id, tbl_car.avarage_fuel_efficiency, tbl_car.color_id, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.customer_id, tbl_car.car_image, tbl_car.car_rent, tbl_car.state_id, tbl_car.city_id, tbl_car.status, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id LEFT OUTER JOIN tbl_booking ON tbl_car.car_id = tbl_booking.car_id where tbl_car.state_id='" + st + "' and tbl_car.city_id='" + ct + "' and tbl_car.car_type_id='" + type + " ' and tbl_car.car_fuel_id='" + fuel + "' and tbl_car.car_company_id='" + com + "' and tbl_car.car_id not in(select car_id from tbl_booking where ride_starting_date>='" + pdate.ToString("dd/MM/yyyy") + "' and ride_ending_date<='" + Convert.ToDateTime(Request.Cookies["visitor"]["dropdate"]).ToString("dd/MM/yyyy") + "' and status=2)";
        dap = new SqlDataAdapter(qry, cn);
        ds = new DataSet();
        dap.Fill(ds);
        dt = new DataTable();
        dt = ds.Tables[0];
        if (dt.Rows.Count > 0)
        {
            lblcar.Text = "";
            lblcar.Visible = false;
            Repeater1.Visible = true;
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        else
        {
            //txtdrop.Text = "1234567";
            qry = "SELECT distinct tbl_car.car_id, tbl_car.car_name_id, tbl_car.car_company_id, tbl_car.car_model_id, tbl_car.transmission_type, tbl_car.car_fuel_id, tbl_car.car_type_id, tbl_car.avarage_fuel_efficiency, tbl_car.color_id, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.customer_id, tbl_car.car_image, tbl_car.car_rent, tbl_car.state_id, tbl_car.city_id, tbl_car.status, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id LEFT OUTER JOIN tbl_booking ON tbl_car.car_id = tbl_booking.car_id where tbl_car.state_id='" + st + "' and tbl_car.city_id='" + ct + "' and tbl_car.car_type_id='" + type + " ' and tbl_car.car_fuel_id='" + fuel + "' and tbl_car.car_company_id='" + com + "'";
            dap = new SqlDataAdapter(qry, cn);
            ds = new DataSet();
            dap.Fill(ds);
            dt = new DataTable();
            dt = ds.Tables[0];
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblcar.Text = "";
                lblcar.Visible = false;
                Repeater1.Visible = true;
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else
            {
                Repeater1.Visible = false;
                lblcar.Visible = true;
                lblcar.Text = "Sorry..  No Car is Available as Per Your Filter...";
            }
        }
        btnclear.Visible = true;
        //}
        //catch
        //{
        //    ds.Clear();
        //    qry = "SELECT tbl_car.car_id, tbl_car.car_name_id, tbl_car.car_company_id, tbl_car.car_model_id, tbl_car.transmission_type, tbl_car.car_fuel_id, tbl_car.car_type_id, tbl_car.avarage_fuel_efficiency, tbl_car.color_id, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.customer_id, tbl_car.car_image, tbl_car.car_rent, tbl_car.state_id, tbl_car.city_id, tbl_car.status, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id LEFT OUTER JOIN tbl_booking ON tbl_car.car_id = tbl_booking.car_id where tbl_car.state_id='" + st + "' and tbl_car.city_id='" + ct + "' and tbl_car.car_type_id='" + type + " ' and tbl_car.car_fuel_id='" + fuel + "' and tbl_car.car_company_id='" + com + "'";
        //    dap = new SqlDataAdapter(qry, cn);
        //    ds = new DataSet();
        //    dap.Fill(ds);
        //    dt = new DataTable();
        //    dt = ds.Tables[0];
        //    Repeater1.DataSource = dt;
        //    Repeater1.DataBind();
        //}
        //SqlDataSource3.SelectCommand = "SELECT tbl_car.*, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id where tbl_car.state_id='" + st + "' and tbl_car.city_id='" + ct + "' and tbl_car.car_type_id='" + type + " ' and tbl_car.car_fuel_id='" + fuel + "' and tbl_car.car_company_id='" + com + "' and tbl_car.status=0";
        //Repeater1.DataBind();
    }




    protected int getstar(string cid)
    {
        string star = "";
        qry = "select sum(rate)/count(rate) from tbl_feedback where car_id='" + cid + "'";
        cmd = new SqlCommand(qry, cn);
        star = (cmd.ExecuteScalar()).ToString();
        if (star == "")
        {
            return 3;
        }
        else
        {
            int s = Convert.ToInt16(star);
            if (s >= 3)
            {
                return s;
            }
            else
            {
                return 3;
            }
        }

    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        string st = Request.Cookies["visitor"]["stateid"];
        string ct = Request.Cookies["visitor"]["cityid"];
        qry = " SELECT distinct tbl_car.car_id, tbl_car.car_name_id, tbl_car.car_company_id, tbl_car.car_model_id, tbl_car.transmission_type, tbl_car.car_fuel_id, tbl_car.car_type_id, tbl_car.avarage_fuel_efficiency, tbl_car.color_id, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.customer_id, tbl_car.car_image, tbl_car.car_rent, tbl_car.state_id, tbl_car.city_id, tbl_car.status, Tbl_car_fuel_type.car_fuel_type, tbl_car_type.car_type, tbl_car_name.car_name, tbl_car_model.car_model, tbl_car_company.car_company_name FROM tbl_car INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id AND tbl_car_name.car_company_id = tbl_car_company.car_company_id LEFT OUTER JOIN tbl_booking ON tbl_car.car_id = tbl_booking.car_id where tbl_car.state_id = '" + st + "' and tbl_car.city_id = '" + ct + "' and tbl_car.status=0";
        dap = new SqlDataAdapter(qry, cn);
        ds = new DataSet();
        dap.Fill(ds);
        dt = new DataTable();
        dt = ds.Tables[0];
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblcar.Text = "";
            lblcar.Visible = false;
            Repeater1.Visible = true;
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        else
        {
            Repeater1.Visible = false;
            lblcar.Visible = true;
            lblcar.Text = "Sorry..  No Car is Available....";
        }
        btnclear.Visible = false;
    }

    protected void Page_UnLoad(object sender, EventArgs e)
    {
        cn.Close();
    }
}