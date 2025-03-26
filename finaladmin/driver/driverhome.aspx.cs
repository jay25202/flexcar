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
public partial class driver_home : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    String qry;
    DataSet ds;
    string d_id,cid,car_id,bid,pid;
    //string current;
    int flag = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        d_id = Session["uid"].ToString();
        //Session["uid"] = Session["uid"].ToString();
        Session["today"] = (DateTime.Now.Date).ToString("dd/MM/yyyy");
        cn.Open();
        try
        {
            qry = "SELECT car_id from tbl_car_driver WHERE (driver_id ='" + d_id + "')";
            cmd = new SqlCommand(qry, cn);
            car_id = (cmd.ExecuteScalar().ToString());

            //qry = "SELECT * from tbl_booking WHERE driver_id='" + d_id + "' and car_id='" + car_id + "' and ride_starting_date ='" + (DateTime.Now.Date.AddDays(-1)).ToString("dd/MM/yyyy") + "'";
            //cmd = new SqlCommand(qry, cn);
            //current = (cmd.ExecuteScalar()).ToString();

            qry = "SELECT * from tbl_booking WHERE driver_id='" + d_id + "' and car_id='" + car_id + "' and status=1";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                bid = dr["booking_id"].ToString();
                pid = dr["payment_id"].ToString();
                lblpickup.Text = dr["pick_address"].ToString();
                lbldrop.Text = dr["drop_address"].ToString();
                lblpickdate.Text = dr["ride_starting_date"].ToString();
                lbldropdate.Text = dr["ride_ending_date"].ToString();
                cid = dr["customer_id"].ToString();
            }
            dr.Close();

            qry = "SELECT * from tbl_customer WHERE customer_id='" + cid + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                lblfname.Text = dr["fname"].ToString();
                lbllname.Text = dr["lname"].ToString();
                lblcontact.Text = dr["phone_number"].ToString();
            }
            dr.Close();

            qry = "SELECT payment_mode from tbl_payment WHERE payment_id='" + pid + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                string mode = dr["payment_mode"].ToString();
                if(mode=="paytm")
                {
                    lblpay.Text="Paytm";
                    flag = 1;
                }
                else
                {
                    lblpay.Text = "Cash";
                    lblpay.ForeColor=System.Drawing.Color.Red;
                }
            }
            dr.Close();
        }
        catch
        {
            lblpickup.Text = "There is No Booking!";
            lbldrop.Text = "There is No Booking!";
            lblpickdate.Text = "There is No Booking!";
            lbldropdate.Text = "There is No Booking!";
            lblfname.Text = "There is No Booking!";
            lbllname.Text = "There is No Booking!";
            lblcontact.Text = "There is No Booking!";
        }
        cn.Close();
    }

    protected void btnpay_Click(object sender, EventArgs e)
    {
        cn.Open();
        //txtotp.Text = "asdgfhghbhgfdsa";

        //qry = "SELECT payment_id from tbl_payment";
        //cmd = new SqlCommand(qry, cn);
        //string p_id = (cmd.ExecuteScalar().ToString());

        //string pmode = "cash";


        //qry = "update tbl_payment set pay_date='" + DateTime.Now.Date.ToString("dd/MM/yyyy") + "' where payment_id='" + pid + "'";
        //cmd = new SqlCommand(qry, cn);
        //cmd.ExecuteNonQuery();
        //flag = 1;

        //qry = "SELECT max(payment_id) from tbl_payment";
        //cmd = new SqlCommand(qry, cn);
        //string p_id = (cmd.ExecuteScalar().ToString());

        cn.Close();
        //Response.Write("<script> alert ('Payment Successfully') </script>");
    }

    protected void btnend_Click(object sender, EventArgs e)
    {
        //if (flag == 0)
        //{
        //    Response.Write("<script> alert ('Please Receive Payment First') </script>");
        //    txtotp.Text = "easrdhgjk";
        //}
        //else
        //{
            cn.Open();

            qry = "update tbl_car set status=0 where car_id='" + car_id + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();

            qry = "update tbl_driver set status=0 where driver_id='" + d_id + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();

            qry = "update tbl_booking set status=0 where driver_id='" + d_id + "' and car_id='" + car_id + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();

            //if (flag == 1)
            //{
            //qry = "update tbl_payment set pay_date='" + DateTime.Now.Date.ToString("dd/MM/yyyy") + "'";
            //cmd = new SqlCommand(qry, cn);
            //cmd.ExecuteNonQuery();
            //}
            cn.Close();
            lblpickup.Text = "There is No Booking!";
            lbldrop.Text = "There is No Booking!";
            lblpickdate.Text = "There is No Booking!";
            lbldropdate.Text = "There is No Booking!";
            lblfname.Text = "There is No Booking!";
            lbllname.Text = "There is No Booking!";
            lblcontact.Text = "There is No Booking!";
            lblend.Text = "Ride Ended";
            panelend.Visible = true;
            panelstart.Visible = false;
            Response.Redirect("driverhome.aspx");
           //}

    }

    protected void btnstart_Click(object sender, EventArgs e)
    {
        panelotp.Visible = true;
        Random random = new Random();
        int value = random.Next(1001, 9999);
        string destinationaddr = "91" + lblcontact.Text;
        string message = " Your OTP no is :" + value;
        string message1 = HttpUtility.UrlEncode(message);

        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                        {
                        {"apikey" ,"No3p9wXqoWg-lD6m2E5jYo7raMIW2MfhmzXsbLBK92"},
                            {"numbers" , destinationaddr},
                            {"message" , message1},
                            {"sender" , "TXTLCL" }
                        });
            string result = System.Text.Encoding.UTF8.GetString(response);
            Session["otp"] = value;
        }

    }
    
       


    


    protected void btnsubotp_Click(object sender, EventArgs e)
    {

        panelstart.Visible = false;
        lblstart.Text = "Ride Started";


        panelend.Visible = true;
        panelstart.Visible = false;
        if (txtotp.Text == Session["otp"].ToString())
        { }
        else
        {
            lblotp.Text = "OTP incorrect";
        }

    }
}