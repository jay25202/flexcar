using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class userhome : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    String qry;
    DataSet ds;
    SqlDataAdapter dap;
    Int64 [] bid = new Int64[100];
    Int64 [] cid = new Int64[100];
    Int64 [] did = new Int64[100];
    Int64 i = 0;

    public void counter()
    {
    http://localhost:52942/visitor/visitorhome.aspx.cs
        DataSet dshits = new DataSet();
        dshits.ReadXml(Server.MapPath("~/counter.xml"));
        int hit = Int32.Parse(dshits.Tables[0].Rows[0]["hit"].ToString());
        hit += 1;
        dshits.Tables[0].Rows[0]["hit"] = hit.ToString();
        dshits.WriteXml(Server.MapPath("~/counter.xml"));
        //lithits.Text = dshits.Tables[0].Rows[0]["hit"].ToString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        counter();
        cn.Open();
        Session["cname"] = Request.QueryString.Get("cname");
        Session["visitor"] = "1";
        int flag = 0;
        try
        {
        string today = (DateTime.Now.Date.AddDays(+1)).ToString("dd/MM/yyyy");
            qry = "select * from tbl_booking where ride_starting_date='" + today + "' and status=2";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (dr.HasRows)
                {
                    bid[i] = Convert.ToInt64(dr["booking_id"].ToString());
                    cid[i] = Convert.ToInt64(dr["car_id"].ToString());
                    did[i] = Convert.ToInt64(dr["driver_id"].ToString());
                    i++;
                    flag = 1;
                }
            }
            dr.Close();
        if (flag == 1)
        {
            while (i >= 0)
            {
                qry = "update tbl_car set status=1 where car_id=" + cid[i];
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();

                qry = "update tbl_driver set status=1 where driver_id=" + did[i];
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();

                qry = "update tbl_booking set status=1 where driver_id=" + did[i];
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();

                i--;
            }
        }
        }
        catch
        {

        }
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if(Convert.ToDateTime(txtpickdate.Text) < Convert.ToDateTime(DateTime.Now.Date))
        {
            
            Response.Write("<script> alert ('Invalid Pickup Date') </script>");
        }
        else if(Convert.ToDateTime(txtpickdate.Text)>Convert.ToDateTime(txtdropdate.Text))
        {
            Response.Write("<script> alert ('Invalid drop Date') </script>");
        }
        else
        {
            Response.Cookies["visitor"]["pick"] = txtpickup.Text;
            Response.Cookies["visitor"]["drop"] = txtdrop.Text;
            Response.Cookies["visitor"]["pickdate"] = txtpickdate.Text.Substring(0, 10);
            Response.Cookies["visitor"]["dropdate"] = txtdropdate.Text.Substring(0, 10);
            Response.Cookies["visitor"]["picktime"] = picktime.Text;
            Response.Cookies["visitor"]["droptime"] = dropofftime.Text;
            Response.Cookies["visitor"]["stateid"] = ddlstate.SelectedValue;
            Response.Cookies["visitor"]["cityid"] = ddlcity.SelectedValue;
            Response.Redirect("vcar_booking.aspx");
        }
    }
}