using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using paytm;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Callback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    String qry;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["payment"] = 1;
        Label1.Text = Request.Form["TXNID"];

        cn.Open();
        string p = "paytm";
        qry = "insert into tbl_payment values('" + DateTime.Now.Date.ToString("dd/MM/yyyy") + "','" + Request.Cookies["user"]["uid"].ToString() + "','" + Request.Cookies["user"]["s_gst"].ToString() + "','" + Request.Cookies["user"]["c_gst"].ToString() + "','" + Request.Cookies["user"]["total_amt"].ToString() + "','" + p  +"')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        qry = "SELECT max(payment_id) from tbl_payment";
        cmd = new SqlCommand(qry, cn);
        string p_id = (cmd.ExecuteScalar().ToString());

        qry = "insert into tbl_booking values('" + Request.Cookies["user"]["book_date"].ToString() + "','" + Request.Cookies["user"]["uid"].ToString() + "','" + Request.Cookies["user"]["cid"].ToString() + "','" + Request.Cookies["user"]["did"].ToString() + "','" + p_id + "','" + Request.Cookies["user"]["book_day"].ToString() + "','" + Request.Cookies["user"]["state_id"].ToString() + "','" + Request.Cookies["user"]["city_id"].ToString() + "','" + Request.Cookies["user"]["pick_add"].ToString() + "','" + Request.Cookies["user"]["pick_time"].ToString() + "','" + Convert.ToDateTime(Request.Cookies["user"]["pick_date"]).ToString("dd/MM/yyyy") + "','" + Request.Cookies["user"]["drop_add"].ToString() + "','" + Convert.ToDateTime(Request.Cookies["user"]["drop_date"]).ToString("dd/MM/yyyy") + "',2)";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        //qry = "update tbl_car set status=1 where car_id='" + id + "'";
        //cmd = new SqlCommand(qry, cn);
        //cmd.ExecuteNonQuery();

        //qry = "update tbl_driver set status=1 where driver_id='" + d_id + "'";
        //cmd = new SqlCommand(qry, cn);
        //cmd.ExecuteNonQuery();

        qry = "SELECT max(booking_id) from tbl_booking";
        cmd = new SqlCommand(qry, cn);
        string b_id = (cmd.ExecuteScalar().ToString());
        Response.Redirect("car_booking_done.aspx?oid=" + b_id + "&did=" + Request.Cookies["user"]["did"].ToString() + "&cid=" + Request.Cookies["user"]["cid"].ToString());
        cn.Close();



        //String merchantKey = "MPcGd0ghcT%jAOghhgUD5A"; // Replace the with the Merchant Key provided by Paytm at the time of registration.

        //Dictionary<string, string> parameters = new Dictionary<string, string>();
        //string paytmChecksum = "";
        //foreach (string key in Request.Form.Keys)
        //{
        //    parameters.Add(key.Trim(), Request.Form[key].Trim());
        //}

        //if (parameters.ContainsKey("CHECKSUMHASH"))
        //{
        //    paytmChecksum = parameters["CHECKSUMHASH"];
        //    parameters.Remove("CHECKSUMHASH");
        //}

        //if (CheckSum.verifyCheckSum(merchantKey, parameters, paytmChecksum))
        //{
        //    string paytmStatus = parameters["STATUS"];
        //    string txnId = parameters["TXNID"];
        //    pTxnId.InnerText = "Transaction Id : " + txnId;
        //    if (paytmStatus == "TXN_SUCCESS")
        //    {
        //        h1Message.InnerText = "Your payment is success";
        //    }
        //    else if (paytmStatus == "PENDING")
        //    {
        //        h1Message.InnerText = "Payment is pending !";
        //    }
        //    else if (paytmStatus == "TXN_FAILURE")
        //    {
        //        h1Message.InnerText = "Payment Failure !";
        //    }

        //}
        //else
        //{
        //    Response.Write("Checksum MisMatch");
        //}
    }
}