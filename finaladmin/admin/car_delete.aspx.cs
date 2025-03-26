using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();

    String qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        string id = Request.QueryString.Get("id");

        string did;
        qry = "select driver_id from tbl_car_driver where car_id='" + id + "'";
        cmd = new SqlCommand(qry, cn);
        did = (cmd.ExecuteScalar()).ToString();

        qry = "delete from tbl_booking where driver_id='" + did + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        qry = "delete from tbl_car_driver where car_id='" + id + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        qry = "delete from tbl_car_gallery where car_id='" + id + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        qry = "delete from tbl_driver where driver_id='" + did + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        qry = "delete from tbl_car where car_id='" + id + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        cn.Close();
        Response.Redirect("cars.aspx?a=1");
    }
}