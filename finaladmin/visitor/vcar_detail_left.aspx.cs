using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class user_Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    String qry;
    DataSet ds;
    string id;
    SqlDataAdapter dap;
    DataRow datar;

    protected void Page_Load(object sender, EventArgs e)
    {
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
            ////imgcar2.ImageUrl = "~/car_images/" + dr["car_image"].ToString();
            //lblmodel.Text = dr["car_model"].ToString();
            lbltran.Text = dr["transmission_type"].ToString();
            lblfuel.Text = dr["car_fuel_type"].ToString();
            //lblown.Text = dr["owner_name"].ToString();
            //lblregno.Text = dr["registration_number"].ToString();
            //lblcolor.Text = dr["color"].ToString();
            lblcolor.Text = dr["color"].ToString();
            lblyear.Text = dr["car_menufacture_year"].ToString();
            lblavag.Text = dr["avarage_fuel_efficiency"].ToString();
            lblrent.Text = dr["car_rent"].ToString();

            if (dr["car_type"].ToString() == "xuv")
            {
                lblseats.Text = "7/8";
                lblbag.Text = "2/3";
            }
            else if (dr["car_type"].ToString() == "sedan")
            {
                lblseats.Text = "5";
                lblbag.Text = "5/6";
            }
            else if (dr["car_type"].ToString() == "hatchback")
            {
                lblseats.Text = "5";
                lblbag.Text = "3/4";
            }
            else
            {
                lblseats.Text = "5";
                lblbag.Text = "4/5";
            }

        }
        dr.Close();

        //try 
        //{
        //    Session["uid"].ToString(); 
        //    HyperLink1.NavigateUrl = "LoginPage.aspx";
        //}
        //catch
        //{
            HyperLink1.NavigateUrl = "vcar_checkout.aspx?id=" + id;
        //}
     

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


        string star = "";
        qry = "select sum(rate)/count(rate) from tbl_feedback where car_id='" + id + "'";
        cmd = new SqlCommand(qry, cn);
        star = (cmd.ExecuteScalar()).ToString();
        if (star == "")
        {
            Rating1.CurrentRating = 3;
        }
        else
        {
            int s = Convert.ToInt16(star);
            if (s >= 3)
            {
                Rating1.CurrentRating = s;
            }
            else
            {
                Rating1.CurrentRating = 3;
            }
        }


        cn.Close();

    }
    protected void t1(object sender, EventArgs e)
    {
        Random ran = new Random();
        int i = ran.Next(1, 8);
        //im1.imageurl = "~/images/" + i.ToString() + ".jpg";



    }
}