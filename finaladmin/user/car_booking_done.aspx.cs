using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Collections.Specialized;
using System.Configuration;

public partial class user_Default3 : System.Web.UI.Page
{
    string oid;
    string did;
    string uid;
    string cid;
    string bdt;
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    String qry;
    DataSet ds;
    SqlDataAdapter dap;

    protected void Page_Load(object sender, EventArgs e)
    {




        string pid = "";
        oid = Request.QueryString.Get("oid");
        did = Request.QueryString.Get("did");
        cid = Request.QueryString.Get("cid");
        uid = Request.Cookies["user"]["uid"].ToString();
        lblbillno.Text = oid;
        
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
            dt = dt.Substring(0, 10) ;
            lbldropdate.Text = dt;
            lbldroptime.Text = Request.Cookies["user"]["drop_time"];
            lblttldays.Text = dr["booking_days"].ToString() + " Days";
            lblpickup.Text = dr["pick_address"].ToString();
            lbldrop.Text = dr["drop_address"].ToString();
            lblcarname.Text = dr["car_company_name"].ToString() + " " + dr["car_name"].ToString();
            lblcarprice.Text = dr["car_rent"].ToString() + "₹ Per Day";
            lblcname.Text = dr["fname"].ToString() + " " + dr["lname"].ToString();
            lblnote.Text = Request.Cookies["user"]["note"].ToString();
            //lbldriver.Text = dr["tbl_driver.fname"].ToString() + " " + dr["tbl_driver.lname"].ToString();
            //lblsgst.Text = Request.Cookies["user"]["sgst"] + "₹";
            //lblcgst.Text = Request.Cookies["user"]["cgst"] + "₹";
            //lbltotal.Text = dr["total_fare"].ToString() + "₹";
            //lblcname.Text = dr["tbl_customer.fname"].ToString() + " " + dr["tbl_customer.lname"].ToString();
            lblcphone.Text = dr["phone_number"].ToString();
            bdt= dr["booking_date"].ToString();
            lblcmail.Text = dr["email"].ToString();
            pid = dr["payment_id"].ToString();
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

        qry = "select * from tbl_payment where pay_date='" + bdt + "' and customer_id='" + Session["uid"].ToString() + "' and payment_id='" + pid + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lblsgst.Text = dr["sgst"].ToString() + "₹";
            lblcgst.Text = dr["cgst"].ToString() + "₹";
            lbltotal.Text = dr["total_amount"].ToString() + "₹";
        }
        string destinationaddr = "91" + lblcphone.Text;
        string message = " Thankyou for booking our car. Your Ride Details @ " + " @ Ride Starting Date - " + lblpickdate.Text + " @ Ride End Date - " + lbldropdate.Text  + " @ Your Driver : " + lbldname.Text  + " @ Driver Phone Number : " + lbldphone.Text  + " @ . Enjoy Your Ride. :-)";
        message  = message.Replace("@", Environment.NewLine);
        string message1 = HttpUtility.UrlEncode(message);

        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                    {
                    {"apikey" ,"No3p9wXqoWg-lD6m2E5jYo7raMIW2MfhmzXsbLBK92"},
                        {"numbers" , destinationaddr},
                        {"message" , message1},
                        {"sender" , "TXTLCL"}
                    });
            string result = System.Text.Encoding.UTF8.GetString(response);

        }
    }
}