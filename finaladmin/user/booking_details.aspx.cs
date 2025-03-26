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
    string oid, did, cid, uid,bdt;
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    String qry;
    DataSet ds;
    SqlDataAdapter dap;
    //ride y = new ride();

    protected void Page_Load(object sender, EventArgs e)
    {
        oid = Request.QueryString.Get("bid");
        cn.Open();
        string qr;
        qr = "select * from tbl_feedback where booking_id='" + oid + "'";
        SqlCommand cm = new SqlCommand(qr,cn);
        dr = cm.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            int r;
            r =Convert.ToInt32( dr["rate"].ToString());
            Rating1.ReadOnly = true;
            comt.ReadOnly = true;
            comt.Text = dr["feedback"].ToString();
            Rating1.CurrentRating = r;
            btnrate.Visible = false;
        }
        dr.Close();
        cn.Close();
        did = Request.QueryString.Get("did");
        cid = Request.QueryString.Get("car_id");
        uid = Session["uid"].ToString();
        cn.Open();
        qry = "SELECT tbl_booking.*, tbl_car.*, tbl_car_type.*, Tbl_car_fuel_type.*, tbl_car_model.*, tbl_car_name.*, tbl_car_gallery.*, tbl_car_color.*, tbl_car_company.*, tbl_customer.* FROM tbl_booking INNER JOIN  tbl_car ON tbl_booking.car_id = tbl_car.car_id INNER JOIN tbl_car_color ON tbl_car.color_id = tbl_car_color.color_id INNER JOIN tbl_car_company ON tbl_car.car_company_id = tbl_car_company.car_company_id INNER JOIN Tbl_car_fuel_type ON tbl_car.car_fuel_id = Tbl_car_fuel_type.car_fuel_id INNER JOIN tbl_car_gallery ON tbl_car.car_id = tbl_car_gallery.car_id INNER JOIN tbl_car_model ON tbl_car.car_model_id = tbl_car_model.car_model_id INNER JOIN tbl_car_name ON tbl_car.car_name_id = tbl_car_name.car_name_id AND tbl_car_company.car_company_id = tbl_car_name.car_company_id INNER JOIN tbl_car_type ON tbl_car.car_type_id = tbl_car_type.car_type_id INNER JOIN tbl_customer ON tbl_booking.customer_id = tbl_customer.customer_id where tbl_booking.booking_id='" + oid + "' and tbl_customer.customer_id='" + uid + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            string dt = dr["ride_starting_date"].ToString();
            dt = dt.Substring(0, 10);
            lblpickdate.Text = dt;
            lblpicktime.Text = dr["pick_time"].ToString();
            dt = dr["ride_ending_date"].ToString();
            dt = dt.Substring(0, 10);
            lbldropdate.Text = dt;
            lblbillno.Text = oid;
            //lbldroptime.Text = Request.Cookies["user"]["droptime"];
            bdt = dr["booking_date"].ToString();
            lblttldays.Text = dr["booking_days"].ToString() + " Days";
            lblpickup.Text = dr["pick_address"].ToString();
            lbldrop.Text = dr["drop_address"].ToString();
            lblcarname.Text = dr["car_company_name"].ToString() + " " + dr["car_name"].ToString();
            lblcarprice.Text = dr["car_rent"].ToString() + "₹ Per Day";
            lblcname.Text = dr["fname"].ToString() + " " + dr["lname"].ToString();
            lblbdt.Text = bdt;
            //lbldriver.Text = dr["tbl_driver.fname"].ToString() + " " + dr["tbl_driver.lname"].ToString();

            //lblsgst.Text = Request.Cookies["user"]["sgst"] + "₹";
            //lblcgst.Text = Request.Cookies["user"]["cgst"] + "₹";

            //lbltotal.Text = dr["total_fare"].ToString() + "₹";
            //lblcname.Text = dr["tbl_customer.fname"].ToString() + " " + dr["tbl_customer.lname"].ToString();
            lblcphone.Text = dr["phone_number"].ToString();
            lblcmail.Text = dr["email"].ToString();
            //lbldname.Text = dr["tbl_driver.fname"].ToString() + " " + dr["tbl_driver.lname"].ToString();
            //lbldphone.Text = dr["tbl_driver.phone_number"].ToString();
        }
        dr.Close();

        qry = "select * from tbl_driver where driver_id='" + did + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lbldriver.Text = dr["fname"].ToString() + " " + dr["lname"].ToString();
            lbldname.Text = dr["fname"].ToString() + " " + dr["lname"].ToString();
            lbldphone.Text = dr["phone_number"].ToString();
        }
        dr.Close();

        qry = "select * from tbl_payment where pay_date='" + bdt + "' and customer_id='" + Session["uid"].ToString() + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lblsgst.Text = dr["sgst"].ToString() + "₹";
            lblcgst.Text = dr["cgst"].ToString() + "₹";
            lbltotal.Text = dr["total_amount"].ToString() + "₹";
        }
        cn.Close();
    }

    protected void btnrate_Click(object sender, EventArgs e)
    {
        int rate = Rating1.CurrentRating;
        cn.Open();
        string q;
        q = "insert into tbl_feedback values('" + Session["uid"].ToString() + "','" + lblbillno.Text + "','" + comt.Text + "','" + rate + "')";
        SqlCommand c = new SqlCommand(q,cn);
        c.ExecuteNonQuery();
        cn.Close();


        //userid = Convert.ToInt32(Session["u_id"].ToString());


        //string str;
       // id = Convert.ToInt32(Request.QueryString["id"].ToString());
        //str = "select * from rideviewmstr where u_id= '" + Session["u_id"] + "' and r_id='" + id + "'";
        //y.rideins(str);
        //x.dr = y.search(str);
        //if (x.dr.HasRows)
        //{
        //    lblResponse.Text = "You already gave a rating";



        //}
        //else
        //{
            //lblResponse.Text = "ghgyury";
            // x.conclose();
            //str = "insert into rideviewmstr values ('" + uid + "','" + comt.Text + "','" + rate + ")";
            //y.rideins(str);
            //clear(frm1.Controls);


            //lblResponse.Text = rate.ToString();
        //}
    }
}