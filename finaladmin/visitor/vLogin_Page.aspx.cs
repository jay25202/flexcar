using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class visitor_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds;
    String qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
         
            
        if (MyCaptcha.IsValid)
        {
            if (rbcust.Checked)
            {
                qry = "select * from tbl_customer where email='" + txtemail.Text + "' and password='" + txtpassword.Text + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    Session["uid"] = dr["customer_id"];
                    Session["uname"] = dr["fname"].ToString() + " " + dr["lname"].ToString();
                    //try
                    //{
                    if (Session["visitor"].ToString() == "1")
                    {
                        Response.Redirect("../user/userhome.aspx");
                    }
                    else if (Request.Cookies["visitor"]["total"] != null)
                    {
                        Response.Cookies["user"]["pick"] = Request.Cookies["visitor"]["pick"];
                        Response.Cookies["user"]["drop"] = Request.Cookies["visitor"]["drop"];
                        Response.Cookies["user"]["pickdate"] = Request.Cookies["visitor"]["pickdate"];
                        Response.Cookies["user"]["dropdate"] = Request.Cookies["visitor"]["dropdate"];
                        Response.Cookies["user"]["picktime"] = Request.Cookies["visitor"]["picktime"];
                        Response.Cookies["user"]["droptime"] = Request.Cookies["visitor"]["droptime"];
                        Response.Cookies["user"]["stateid"] = Request.Cookies["visitor"]["stateid"];
                        Response.Cookies["user"]["cityid"] = Request.Cookies["visitor"]["cityid"];
                        string id = Request.Cookies["visitor"]["id"];
                        Response.Redirect("../user/car_checkout.aspx?id=" + id);
                    }
                    else
                    {
                        Response.Cookies["user"]["pick"] = Request.Cookies["visitor"]["pick"];
                        Response.Cookies["user"]["drop"] = Request.Cookies["visitor"]["drop"];
                        Response.Cookies["user"]["pickdate"] = Request.Cookies["visitor"]["pickdate"];
                        Response.Cookies["user"]["dropdate"] = Request.Cookies["visitor"]["dropdate"];
                        Response.Cookies["user"]["picktime"] = Request.Cookies["visitor"]["picktime"];
                        Response.Cookies["user"]["droptime"] = Request.Cookies["visitor"]["droptime"];
                        Response.Cookies["user"]["stateid"] = Request.Cookies["visitor"]["stateid"];
                        Response.Cookies["user"]["cityid"] = Request.Cookies["visitor"]["cityid"];
                        Response.Redirect("../user/car_booking.aspx");

                    }
                    //}
                    //catch
                    //{
                    //    Response.Redirect("../user/userhome.aspx");
                    //}
                }
                else
                {
                    lbl1.Text = "Incorrect Email or Password*****";
                }
            }
            else
            {
                //cn.Close();
                //cn.Open();
                qry = "select * from tbl_driver where email='" + txtemail.Text + "' and password='" + txtpassword.Text + "'";
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    Session["uid"] = dr["driver_id"].ToString();
                    Session["uname"] = dr["fname"].ToString() + " " + dr["lname"].ToString();
                    Session["fname"] = dr["fname"].ToString();
                    Session["lname"] = dr["lname"].ToString();
                    Session["mail"] = dr["email"].ToString();
                    Session["pic"] = dr["pic"].ToString();
                    Response.Redirect("../driver/driverhome.aspx");
                }
                else
                {
                    lbl1.Text = "Incorrect Email or Password*****";
                }
            }
        }
        else
        {
            lbl1.Text = "Invalid Captcha";
        }
            
    }
        

    

    protected void Page_Unload(object sender, EventArgs e)
    {
        cn.Close();
    }
}