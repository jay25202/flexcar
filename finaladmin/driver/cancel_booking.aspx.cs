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

public partial class driver_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    String qry, bid, cid, ph, m;
    SqlDataReader dr;
    DataSet ds;
    string pdt, ddt;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        Session["uid"] = Session["uid"].ToString();
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
        }
        dr.Close();

        qry = "select email,phone_number from tbl_customer where customer_id='" + cid + "'";
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
        string message = " Sorry to Inform You That Your Order is Cancel By Our Driver Due To Some Reason. We Are Requesting You To Book a New Ride. order-id : " + bid + " ,pick-date : " + pdt + " ,drop-date : " + ddt;
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

        cn.Close();
        Response.Redirect("next_booking.aspx");
    }
}