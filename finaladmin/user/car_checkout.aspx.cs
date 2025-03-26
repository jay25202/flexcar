using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using paytm;
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
    Int64 rent;
    static int i = 111;

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
        lblpickup.Text = Request.Cookies["user"]["pick"];
        lblptime.Text = Request.Cookies["user"]["picktime"];
        lbldtime.Text = Request.Cookies["user"]["droptime"];
        lbldropoff.Text = Request.Cookies["user"]["drop"];

        Response.Cookies["user"]["pick"] = Request.Cookies["user"]["pick"];
        Response.Cookies["user"]["picktime"] = Request.Cookies["user"]["picktime"];
        Response.Cookies["user"]["droptime"] = Request.Cookies["user"]["droptime"];
        Response.Cookies["user"]["drop"] = Request.Cookies["user"]["drop"];
        Response.Cookies["user"]["dropdate"] = Request.Cookies["user"]["dropdate"];
        Response.Cookies["user"]["pickdate"] = Request.Cookies["user"]["pickdate"];
        DateTime pdate;
        DateTime ddate;
        string day;
        //if (Request.Cookies["visitor"]["days"] == null)
        //{
        //     pdate = Convert.ToDateTime(Request.Cookies["user"]["pickdate"]);
        //    ddate = Convert.ToDateTime(Request.Cookies["user"]["dropdate"]);
        //    lblday.Text = ((ddate.Date - pdate.Date).TotalDays).ToString();
        //}
        try
        {
            day = Request.Cookies["visitor"]["days"];
            lblday.Text = day.ToString();
        }
        catch
        {
            pdate = Convert.ToDateTime(Request.Cookies["user"]["pickdate"]);
            ddate = Convert.ToDateTime(Request.Cookies["user"]["dropdate"]);
            if (((ddate.Date - pdate.Date).TotalDays).ToString() == "0")
            {
                lblday.Text = "1";
            }
            else
            {
                lblday.Text = ((ddate.Date - pdate.Date).TotalDays + 1).ToString();
            }
        }
        Int64 totaldays = Convert.ToInt32(lblday.Text);
        lblrt.Text = rent.ToString();
        lblttl.Text = (totaldays * rent).ToString();
        Int64 gst = Convert.ToInt64(totaldays * rent * 0.07);
        lblsgst.Text = gst.ToString();
        lblcgst.Text = gst.ToString();
        Int64 ttl = (Convert.ToInt64(totaldays * rent) + gst + gst);
        lbltotal.Text = ttl.ToString();
        lblpickdate.Text = Convert.ToDateTime(Request.Cookies["user"]["pickdate"]).ToString("dd/MM/yyyy");
        lbldropdate.Text = Convert.ToDateTime(Request.Cookies["user"]["dropdate"]).ToString("dd/MM/yyyy");
        dr.Close();




        string uid = Session["uid"].ToString();
        qry = "SELECT * from tbl_Customer WHERE (customer_id ='" + uid + "')";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            lblfname.Text = dr["fname"].ToString();
            lbllname.Text = dr["lname"].ToString();
            txtmail.Text = dr["email"].ToString();
            txtphone.Text = dr["phone_number"].ToString();

            ddlstate.SelectedValue = dr["state_id"].ToString();
            ddlcity.SelectedValue = dr["city_id"].ToString();

        }
        txtdrop.Text = Request.Cookies["user"]["drop"];
        txtpick.Text = Request.Cookies["user"]["pick"];
        txtpicktime.Text = Request.Cookies["user"]["picktime"];
        dr.Close();
        cn.Close();
        Response.Cookies["user"]["sgst"] = lblsgst.Text;
        Response.Cookies["user"]["cgst"] = lblcgst.Text;
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (c3.Checked)
        {
            cn.Open();
            qry = "SELECT driver_id from tbl_car_driver WHERE (car_id ='" + id + "')";
            cmd = new SqlCommand(qry, cn);
            string d_id = (cmd.ExecuteScalar().ToString());
            cn.Close();
            Response.Cookies["user"]["pick_add"] = Request.Cookies["user"]["pick"];
            Response.Cookies["user"]["pick_time"] = Request.Cookies["user"]["picktime"];
            Response.Cookies["user"]["drop_time"] = Request.Cookies["user"]["droptime"];
            Response.Cookies["user"]["drop_add"] = Request.Cookies["user"]["drop"];
            Response.Cookies["user"]["drop_date"] = Request.Cookies["user"]["dropdate"];
            Response.Cookies["user"]["pick_date"] = Request.Cookies["user"]["pickdate"];
            Response.Cookies["user"]["book_date"] = DateTime.Now.Date.ToString("dd/MM/yyyy");
            Response.Cookies["user"]["uid"] = Session["uid"].ToString();
            Response.Cookies["user"]["cid"] = id;
            Response.Cookies["user"]["did"] = d_id;
            Response.Cookies["user"]["book_day"] =lblday.Text;
            Response.Cookies["user"]["state_id"] = ddlstate.SelectedValue;
            Response.Cookies["user"]["city_id"] = ddlcity.SelectedValue;
            Response.Cookies["user"]["s_gst"] = lblsgst.Text;
            Response.Cookies["user"]["c_gst"] = lblcgst.Text;
            Response.Cookies["user"]["total_amt"] = lbltotal.Text;
            Response.Cookies["user"]["note"] = txtnote.Text;
            Dictionary <String, String> paytmParams = new Dictionary<String, String>();
            String merchantMid = "HkiyXp85816823382692";
            // Key in your staging and production MID available in your dashboard
            String merchantKey = "%V#%pXjqXEqxyd_6";
            // Key in your staging and production merchant key available in your dashboard

            string o = "order";
            Random random = new Random();
            i = random.Next(0, 99999);

            String orderId = o + i;
            String channelId = "WEB";
            String custId = id;
            String mobileNo = "7777777777";
            String email = "username@emailprovider.com";
            String txnAmount = lbltotal.Text;
            String website = "WEBSTAGING";
            // This is the staging value. Production value is available in your dashboard
            String industryTypeId = "Retail";
            // This is the staging value. Production value is available in your dashboard
            String callbackUrl = "http://localhost:52942/user/Callback.aspx";
            paytmParams.Add("MID", merchantMid);
            paytmParams.Add("CHANNEL_ID", channelId);
            paytmParams.Add("WEBSITE", website);
            paytmParams.Add("CALLBACK_URL", callbackUrl);
            paytmParams.Add("CUST_ID", custId);
            paytmParams.Add("MOBILE_NO", mobileNo);
            paytmParams.Add("EMAIL", email);
            paytmParams.Add("ORDER_ID", orderId);
            paytmParams.Add("INDUSTRY_TYPE_ID", industryTypeId);
            paytmParams.Add("TXN_AMOUNT", txnAmount);
            // for staging 
            string transactionURL = "https://securegw-stage.paytm.in/theia/processTransaction";
            // for production 
            // string transactionURL = "https://securegw.paytm.in/theia/processTransaction"; 
            try
            {
                string paytmChecksum = paytm.CheckSum.generateCheckSum(merchantKey, paytmParams);

                string outputHTML = "<html>";
                outputHTML += "<head>";
                outputHTML += "<title>Merchant Check Out Page</title>";
                outputHTML += "</head>";
                outputHTML += "<body>";
                outputHTML += "<center><h1>Please do not refresh this page...</h1></center>";
                outputHTML += "<form method='post' action='" + transactionURL + "' name='f1'>";
                outputHTML += "<table border='1'>";
                outputHTML += "<tbody>";
                foreach (string key in paytmParams.Keys)
                {
                    outputHTML += "<input type='hidden' name='" + key + "' value='" + paytmParams[key] + "'>";
                }
                outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + paytmChecksum + "'>";
                outputHTML += "</tbody>";
                outputHTML += "</table>";
                outputHTML += "<script type='text/javascript'>";
                outputHTML += "document.f1.submit();";
                outputHTML += "</script>";
                outputHTML += "</form>";
                outputHTML += "</body>";
                outputHTML += "</html>";
                Response.Write(outputHTML);
                //ViewBag.output = outputHTML;

            }
            catch (Exception ex)
            {
                Response.Redirect("callbackUrl.aspx");
                //  ex.Message = "Exception message: " + ex.Message.ToString();

            }
        }
        else
        {
            Label1.Text = "Please check T&C  and Check The Checkbox";
        }
        


        //if (c3.Checked)
        //{
        //    cn.Open();
        //    qry = "SELECT driver_id from tbl_car_driver WHERE (car_id ='" + id + "')";
        //    cmd = new SqlCommand(qry, cn);
        //    string d_id = (cmd.ExecuteScalar().ToString());
        //    string pmode="paytm";

        //    //if (RadioButtonList1.SelectedIndex == 1)
        //    //{
        //    //    pmode = "cash";
        //    //}
        //    //else
        //    //{
        //    //    pmode = "paytm";
        //    //}
        //    qry = "insert into tbl_payment values('" + DateTime.Now.Date.ToString("dd/MM/yyyy") + "','" + Session["uid"].ToString() + "','" + lblsgst.Text + "','" + lblcgst.Text + "','" + lbltotal.Text + "','" + pmode + "')";
        //    cmd = new SqlCommand(qry, cn);
        //    cmd.ExecuteNonQuery();

        //    qry = "SELECT max(payment_id) from tbl_payment";
        //    cmd = new SqlCommand(qry, cn);
        //    string p_id = (cmd.ExecuteScalar().ToString());

        //    qry = "insert into tbl_booking values('" + DateTime.Now.ToString("dd/MM/yyyy") + "','" + Session["uid"].ToString() + "','" + id + "','" + d_id + "','" + p_id + "','" + lblday.Text + "','" + ddlstate.SelectedValue + "','" + ddlcity.SelectedValue + "','" + txtpick.Text + "','" + txtpicktime.Text + "','" + Convert.ToDateTime(Request.Cookies["user"]["pickdate"]).ToString("dd/MM/yyyy") + "','" + txtdrop.Text + "','" + Convert.ToDateTime(Request.Cookies["user"]["dropdate"]).ToString("dd/MM/yyyy") + "',2)";
        //    cmd = new SqlCommand(qry, cn);
        //    cmd.ExecuteNonQuery();

        //    //qry = "update tbl_car set status=1 where car_id='" + id + "'";
        //    //cmd = new SqlCommand(qry, cn);
        //    //cmd.ExecuteNonQuery();

        //    //qry = "update tbl_driver set status=1 where driver_id='" + d_id + "'";
        //    //cmd = new SqlCommand(qry, cn);
        //    //cmd.ExecuteNonQuery();

        //    qry = "SELECT max(booking_id) from tbl_booking";
        //    cmd = new SqlCommand(qry, cn);
        //    string b_id = (cmd.ExecuteScalar().ToString());
        //    Response.Redirect("car_booking_done.aspx?oid=" + b_id + "&did=" + d_id + "&cid=" + id);
        //    cn.Close();
        //}
        //else
        //{
        //        Response.Write("<script> alert ('Please Read The Terms And Condition And Check The Checkbox') </script>");
        //}
        
    }



    
}