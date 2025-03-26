using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class driver_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["uid"] = Session["uid"].ToString();
        //string id= Session["uid"].ToString();
        //SqlDataSource_prev.SelectCommand = "SELECT [booking_id], [booking_date], [booking_days], [pick_address], [pick_time], [ride_starting_date], [drop_address], [ride_ending_date] FROM [tbl_booking] WHERE (([driver_id] = '" + id + "') AND ([status] = 0) or ([ride_ending_date] <= '" + Session["today"].ToString() + "'))";
        //GridView1.DataBind();
    }
}