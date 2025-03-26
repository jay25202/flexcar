using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Data.SqlClient;
using System.Data;

public partial class userhome : System.Web.UI.Page
{
    public void counter()
    {http://localhost:52942/user/userhome.aspx.cs
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
        //txtpickdateCalendarExtender1.StartDate = DateTime.Now.Date;
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if (Convert.ToDateTime(txtpickdate.Text) < Convert.ToDateTime(DateTime.Now.Date))
        {
            dtv.Text = dtv.Text + " Invalid Pickup Date";
        }
        else if (Convert.ToDateTime(txtpickdate.Text) > Convert.ToDateTime(txtdropdate.Text))
        {
            dtv1.Text = dtv.Text + " Invalid Drop-Off Date";
        }
        else
        {
            Response.Cookies["user"]["pick"] = txtpickup.Text;
            Response.Cookies["user"]["drop"] = txtdrop.Text;
            Response.Cookies["user"]["pickdate"] = txtpickdate.Text.Substring(0, 10);
            Response.Cookies["user"]["dropdate"] = txtdropdate.Text.Substring(0, 10);
            Response.Cookies["user"]["picktime"] = picktime.Text;
            Response.Cookies["user"]["droptime"] = dropofftime.Text;
            Response.Cookies["user"]["stateid"] = ddlstate.SelectedValue;
            Response.Cookies["user"]["cityid"] = ddlcity.SelectedValue;
            Response.Redirect("car_booking.aspx");
        }
    }
}