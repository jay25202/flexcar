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
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    String qry, bid, cid,did, ph, m;
    SqlDataReader dr;
    DataSet ds;
    string pdt, ddt;

    protected void Page_Load(object sender, EventArgs e)
    {
        string status = Request.QueryString.Get("s");
        if (status == "2")
        {
            cn.Open();

            bid = Request.QueryString.Get("bid");
            qry = "update tbl_booking set status=5 where booking_id='" + bid + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();

            qry = "select * from tbl_booking where booking_id='" + bid + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                cid = dr["customer_id"].ToString();
                pdt = dr["ride_starting_date"].ToString();
                ddt = dr["ride_ending_date"].ToString();
                did = dr["driver_id"].ToString();
            }
            dr.Close();

            qry = "select email,phone_number from tbl_driver where driver_id='" + did + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                ph = dr["phone_number"].ToString();
                m = dr["email"].ToString();
            }
            dr.Close();

            Random random = new Random();
            int value = random.Next(1001, 9999);
            string destinationaddr = "91" + ph.ToString();
            string message = " Sorry to Inform You That Your Order is Cancel By Customer Due To Some Reason.  order-id : " + bid + " ,pick-date : " + pdt + " ,drop-date : " + ddt;
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




            qry = "select email,phone_number from tbl_driver where driver_id='" + did + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                ph = dr["phone_number"].ToString();
                m = dr["email"].ToString();
            }
            dr.Close();

            random = new Random();
            value = random.Next(1001, 9999);
            destinationaddr = "91" + ph.ToString();
            message = "Your Order is Cancel .  order-id : " + bid + " ,pick-date : " + pdt + " ,drop-date : " + ddt;
            message1 = HttpUtility.UrlEncode(message);

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




            cn.Close();
        }
        Response.Redirect("Booking.aspx");
    }
}