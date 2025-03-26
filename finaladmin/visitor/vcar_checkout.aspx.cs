using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class visitor_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    String qry;
    DataSet ds;
    string id;
    SqlDataAdapter dap;
    DataRow datar;
    Int64 rent;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["visitor"] = "0";
        id = Request.QueryString.Get("id");
        cn.Open();
        qry = "SELECT tbl_car.transmission_type,tbl_car.car_rent, tbl_car.avarage_fuel_efficiency, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.car_image, tbl_car_company.car_company_name, tbl_car_model.car_model,tbl_car_color.color, tbl_car_type.car_type, Tbl_car_fuel_type.car_fuel_type, tbl_car.car_id, tbl_car.customer_id, tbl_car_name.car_name FROM tbl_car INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id INNER JOIN tbl_car_color ON tbl_car.color_id = tbl_car_color.color_id INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id AND tbl_car_company.car_company_id = tbl_car_name.car_company_id WHERE (tbl_car.car_id ='" + id + "')";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lblcname.Text = dr["car_company_name"].ToString() + " " + dr["car_name"].ToString();
            //lblname.Text = dr["car_name"].ToString();
            //lblcompany.Text = dr["car_company_name"].ToString();
            //lbltype.Text = dr["car_type"].ToString();
            //imgcar.ImageUrl = "~/car_images/" + dr["car_image"].ToString();
            Image1.ImageUrl = "~/car_images/" + dr["car_image"].ToString();
            //lblmodel.Text = dr["car_model"].ToString();
            //lbltran.Text = dr["transmission_type"].ToString();
            //lblfuel.Text = dr["car_fuel_type"].ToString();
            //lblown.Text = dr["owner_name"].ToString();
            //lblregno.Text = dr["registration_number"].ToString();
            //lblcolor.Text = dr["color"].ToString();
            //lblavg.Text = dr["avarage_fuel_efficiency"].ToString();
            lblrent.Text = dr["car_rent"].ToString() + "₹ (1 day)";
            rent = Convert.ToInt64(dr["car_rent"].ToString());

        }
        lblpickup.Text = Request.Cookies["visitor"]["pick"];
        lblptime.Text = Request.Cookies["visitor"]["picktime"];
        lbldtime.Text = Request.Cookies["visitor"]["droptime"];
        lbldropoff.Text = Request.Cookies["visitor"]["drop"];


        Response.Cookies["visitor"]["dropdate"] = Convert.ToDateTime(Request.Cookies["visitor"]["dropdate"]).ToString("dd/MM/yyyy");
        Response.Cookies["visitor"]["pickdate"] = Convert.ToDateTime(Request.Cookies["visitor"]["pickdate"]).ToString("dd/MM/yyyy");
        lblpickdate.Text = Request.Cookies["visitor"]["pickdate"];
        lbldropdate.Text= Request.Cookies["visitor"]["dropdate"];

        DateTime pdate = Convert.ToDateTime(Request.Cookies["visitor"]["pickdate"]);
        DateTime ddate = Convert.ToDateTime(Request.Cookies["visitor"]["dropdate"]);

        lblday.Text = ((ddate.Date - pdate.Date).TotalDays).ToString();
        Int64 totaldays = Convert.ToInt32(lblday.Text);
        if (totaldays == 0)
        {
            totaldays = 1;
            lblday.Text = "1";
        }
        lblrt.Text = rent.ToString();
        lblttl.Text = (totaldays * rent).ToString();
        Int64 gst = Convert.ToInt64(totaldays * rent * 0.07);
        lblsgst.Text = gst.ToString();
        lblcgst.Text = gst.ToString();
        Int64 ttl = (Convert.ToInt64(totaldays * rent) + gst + gst);
        lbltotal.Text = ttl.ToString();
        Response.Cookies["visitor"]["total"] = ttl.ToString();
        Response.Cookies["visitor"]["id"] = id.ToString();
        Response.Cookies["visitor"]["days"] = totaldays.ToString();
        Response.Cookies["visitor"]["pick"] = Request.Cookies["visitor"]["pick"];
        Response.Cookies["visitor"]["picktime"] = Request.Cookies["visitor"]["picktime"];
        Response.Cookies["visitor"]["droptime"] = Request.Cookies["visitor"]["droptime"];
        Response.Cookies["visitor"]["drop"] = Request.Cookies["visitor"]["drop"];
        Response.Cookies["visitor"]["stateid"] = Request.Cookies["visitor"]["stateid"];
        Response.Cookies["visitor"]["cityid"] = Request.Cookies["visitor"]["cityid"];
        Response.Cookies["visitor"]["sgst"] = lblsgst.Text;
        Response.Cookies["visitor"]["cgst"] = lblcgst.Text;
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("vLogin_Page.aspx");
    }
}