using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class admin_drivers : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    String qry;
    DataSet ds;
    string id;
    string c_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        id = Request.QueryString.Get("id");
        //Label5.Text = id;
        qry = "SELECT tbl_state.state_name, tbl_city.city_name, tbl_driver.* FROM tbl_driver INNER JOIN tbl_city ON tbl_driver.city_id = tbl_city.city_id INNER JOIN tbl_state ON tbl_driver.state_id = tbl_state.state_id AND tbl_city.state_id = tbl_state.state_id WHERE (tbl_driver.driver_id ='" + id + "')";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();

            lblfname.Text = dr["fname"].ToString();
            lbllname.Text = dr["lname"].ToString();
            drivname.Text = dr["fname"].ToString();
            imgdriver.ImageUrl = "~/driver_image/" + dr["pic"].ToString();
            //imgcar2.ImageUrl = "~/car_images/" + dr["car_image"].ToString();
            drivlieno.Text = dr["driving_lincense_number"].ToString();
            drivliexpdate.Text = dr["lincense_expire_date"].ToString();
            //email .Text = dr["email"].ToString();
            //phoneno .Text = dr["phone_number"].ToString();
            Label1.Text = dr["driver_id"].ToString();
            lblname.Text = dr["fname"].ToString() + " " + dr["lname"].ToString();
            lblno.Text = dr["phone_number"].ToString();
            lblmail.Text = dr["email"].ToString();
            lbllocation.Text = dr["city_name"].ToString() + " , " + dr["state_name"].ToString();
            lblage.Text = dr["age"].ToString();
            lblbdt.Text = dr["birthdate"].ToString();
            lbladd.Text = dr["address"].ToString();
        }
        hl1.NavigateUrl = "driver_update.aspx?id=" + id;
        hl2.NavigateUrl = "driver_delete.aspx?id=" + id;
        dr.Close();

        // selectiong car id from table
        qry = "select car_id from tbl_car_driver where driver_id='" + id + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            c_id = dr["car_id"].ToString();
        }
        dr.Close();
        hl3.NavigateUrl = "car_details.aspx?id=" + c_id;

        //SqlDataSource2.SelectCommand = "SELECT tbl_feedback.feedback_id, tbl_feedback.customer_id, tbl_feedback.booking_id, tbl_feedback.feedback, tbl_feedback.rate, tbl_feedback.car_id, tbl_customer.fname, tbl_customer.lname FROM tbl_feedback INNER JOIN tbl_customer ON tbl_feedback.customer_id = tbl_customer.customer_id WHERE (tbl_feedback.car_id ='" + c_id + "')";
        //Repeater1.DataBind();

        SqlDataSource3.SelectCommand = "SELECT tbl_feedback.feedback_id, tbl_feedback.customer_id, tbl_feedback.booking_id, tbl_feedback.feedback, tbl_feedback.rate, tbl_feedback.car_id, tbl_customer.fname, tbl_customer.lname FROM tbl_feedback INNER JOIN tbl_customer ON tbl_feedback.customer_id = tbl_customer.customer_id WHERE (tbl_feedback.car_id ='" + c_id + "')";
        Repeater2.DataBind();
    }


    protected int getstar(string cid)
    {
        string star = "";
        qry = "select sum(rate)/count(rate) from tbl_feedback where car_id='" + cid + "'";
        cmd = new SqlCommand(qry, cn);
        star = (cmd.ExecuteScalar()).ToString();
        if (star == "")
        {
            return 3;
        }
        else
        {
            int s = Convert.ToInt16(star);
            if (s >= 3)
            {
                return s;
            }
            else
            {
                return 3;
            }
        }
        
    }
    protected void Page_UnLoad(object sender, EventArgs e)
    {
        cn.Close();
    }
}