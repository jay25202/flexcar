using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;

public partial class admin_Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //ddlcity.SelectedValue = "6";
            SqlDataSource1.SelectCommand = "select * from tbl_driver where state_id=8 and city_id=5";
            Repeater2.DataBind();
            //ddlcity.SelectedValue = "6";
            //ddlcity.SelectedIndex = 1;
            //Repeater1.DataBind();
        }
    }

    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "select * from tbl_driver where state_id='" + ddlstate.SelectedValue + "' and city_id='" + ddlcity.SelectedValue + "'";
        Repeater2.DataBind();
    }
    
}