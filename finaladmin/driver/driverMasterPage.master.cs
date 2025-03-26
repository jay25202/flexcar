using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    Int32 u;
    string p;
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = "../driver_image/" + Session["pic"].ToString();
        Image2.ImageUrl = "../driver_image/" + Session["pic"].ToString();
        Image3.ImageUrl = "../driver_image/" + Session["pic"].ToString();
        lblname.Text = Session["fname"].ToString() + " " + Session["lname"].ToString();
        lbldrivername.Text = Session["fname"].ToString() + " " + Session["lname"].ToString();
        lblmail.Text = Session["mail"].ToString();
    }
}
