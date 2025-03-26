using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class driver_driverprofile : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    SqlDataReader d;
    String qry;
    DataSet ds;
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["uid"] = Session["uid"].ToString();
        if (!IsPostBack)
        {
            cn.Open();
            id = Session["uid"].ToString();
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
                //email.Text = dr["email"].ToString();
                //phoneno.Text = dr["phone_number"].ToString();
                Label1.Text = dr["driver_id"].ToString();
                lblname.Text = dr["fname"].ToString() + " " + dr["lname"].ToString();
                lblno.Text = dr["phone_number"].ToString();
                lblmail.Text = dr["email"].ToString();
                TextBox1.Text = dr["fname"].ToString();
                TextBox2.Text = dr["email"].ToString();
                Txtpass.Text = dr["password"].ToString();
                txtphone.Text = dr["phone_number"].ToString();
                lbllocation.Text = dr["city_name"].ToString() + " , " + dr["state_name"].ToString();
                lblage.Text = dr["age"].ToString();
                lblbdt.Text = dr["birthdate"].ToString();
                lbladd.Text = dr["address"].ToString();
                //if (!IsPostBack)
                //{
                ddlstate.SelectedValue = dr["state_id"].ToString();
                ddlcity.SelectedValue = dr["city_id"].ToString();
                //}
                int status = Convert.ToInt32(dr["status"].ToString());
                if (status == 0)
                {
                    panelnot.Visible = false;
                    panelavi.Visible = true;
                }
                else
                {
                    panelnot.Visible = true;
                    panelavi.Visible = false;
                }
            }
            //dr.Close();
            //hl1.NavigateUrl = "driver_update.aspx?id=" + id;
            //hl2.NavigateUrl = "driver_delete.aspx?id=" + id;


            cn.Close();
        }
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string i;
        i = Session["uid"].ToString();
        cn.Open();
        qry = "update tbl_driver set fname='" + TextBox1.Text + "',email='" + TextBox2.Text + "',password='" + Txtpass.Text + "',phone_number='" + txtphone.Text + "',state_id='" + ddlstate.SelectedValue + "',city_id='" + ddlcity.SelectedValue + "'  where driver_id='" + i + "' ";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        lbl2.Text = "update Succesfully";
        //Response.Redirect("driverprofile.aspx");
        cn.Close();
       
    }

    protected void btnavailable_Click(object sender, EventArgs e)
    {
        string i = Session["uid"].ToString();
        id = i;
        panelavi.Visible = true;
        panelnot.Visible = false;
        cn.Open();

        qry = "select car_id from tbl_car_driver where driver_id='" + id + "'";
        cmd = new SqlCommand(qry, cn);
        string cid = (cmd.ExecuteScalar()).ToString();

        qry = "update tbl_car set status=0 where car_id='" + cid + "' ";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        qry = "update tbl_driver set status=0 where driver_id='" + id + "' ";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        cn.Close();


    }

    protected void btnnot_Click(object sender, EventArgs e)
    {
        string i = Session["uid"].ToString();
        id = i;
        panelnot.Visible = true;
        panelavi.Visible = false;
        cn.Open();

        qry = "select car_id from tbl_car_driver where driver_id='" + id + "'";
        cmd = new SqlCommand(qry, cn);
        string cid = (cmd.ExecuteScalar()).ToString();

        qry = "update tbl_car set status=3 where car_id='" + cid + "' ";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        qry = "update tbl_driver set status=3 where driver_id='" + id + "' ";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        cn.Close();
    }
}