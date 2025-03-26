using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    String qry;
    DataSet ds;
    string id;
    SqlDataAdapter dap;
    DataRow datar;
    string d_id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        id = Request.QueryString.Get("id");
        //Label5.Text = id;
        qry = "SELECT tbl_car.transmission_type,tbl_car.car_rent, tbl_car.avarage_fuel_efficiency, tbl_car.registration_number, tbl_car.owner_name, tbl_car.car_menufacture_year, tbl_car.car_image, tbl_car_company.car_company_name, tbl_car_model.car_model,tbl_car_color.color, tbl_car_type.car_type, Tbl_car_fuel_type.car_fuel_type, tbl_car.car_id, tbl_car.customer_id, tbl_car_name.car_name FROM tbl_car INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id INNER JOIN tbl_car_color ON tbl_car.color_id = tbl_car_color.color_id INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id AND tbl_car_company.car_company_id = tbl_car_name.car_company_id WHERE (tbl_car.car_id ='" + id + "')";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lblname.Text = dr["car_name"].ToString();
            lblcompany.Text = dr["car_company_name"].ToString();
            lbltype.Text = dr["car_type"].ToString();
            imgcar.ImageUrl = "~/car_images/" + dr["car_image"].ToString();
            //imgcar2.ImageUrl = "~/car_images/" + dr["car_image"].ToString();
            lblmodel.Text = dr["car_model"].ToString();
            lbltran.Text = dr["transmission_type"].ToString();
            lblfuel.Text = dr["car_fuel_type"].ToString();
            lblown.Text = dr["owner_name"].ToString();
            lblregno.Text = dr["registration_number"].ToString();
            lblcolor.Text = dr["color"].ToString();
            lblavg.Text = dr["avarage_fuel_efficiency"].ToString();
            lblrent.Text = dr["car_rent"].ToString() + " ₹";
        }
        dr.Close();
        qry = "select * from tbl_car_gallery where car_id='" + id + "'";
        dap = new SqlDataAdapter(qry, cn);
        //dr = cmd.ExecuteReader();
        ds = new DataSet();
        dap.Fill(ds);
        DataTable dt = new DataTable();
        dt = ds.Tables[0];
        int i = 0;
        if (dt != null && dt.Rows.Count > 0)
        {
            datar = dt.Rows[0];
            if (datar != null)
            {
                   Image1.ImageUrl = "../car_images/" + datar["img"].ToString();
            }
            datar = dt.Rows[1];
            if (datar != null)
            {
                Image2.ImageUrl = "../car_images/" + datar["img"].ToString();
            }
            datar = dt.Rows[2];
            if (datar != null)
            {
                Image3.ImageUrl = "../car_images/" + datar["img"].ToString();
            }
            datar = dt.Rows[3];
            if (datar != null)
            {
                Image4.ImageUrl = "../car_images/" + datar["img"].ToString();
            }
            datar = dt.Rows[4];
            if (datar != null)
            {
                Image5.ImageUrl = "../car_images/" + datar["img"].ToString();
            }

        }

        //if (dr.HasRows)
        //{
        //    Image1.ImageUrl = "../car_images/" + dr["fpic"].ToString();
        //    Image2.ImageUrl = "../car_images/" + dr["dpic"].ToString();
        //    Image3.ImageUrl = "../car_images/" + dr["rpic"].ToString();
        //    Image4.ImageUrl = "../car_images/" + dr["lpic"].ToString();
        //    Image5.ImageUrl = "../car_images/" + dr["bpic"].ToString();
        //}


        //hl1.NavigateUrl = "car_update.aspx?id=" + id;
        //hl2.NavigateUrl = "car_delete.aspx?id=" + id;

        // selectiong driver id from table
        qry = "select driver_id from tbl_car_driver where car_id='" + id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            d_id = dr["driver_id"].ToString();
        }
        dr.Close();


        hl3.NavigateUrl = "driversdetails.aspx?id=" + d_id;
        //SqlDataSource1.SelectCommand = "SELECT * FROM tbl_gallery where car_id='" + id + "'";
        //Repeater1.DataBind();
        cn.Close();
    }
}