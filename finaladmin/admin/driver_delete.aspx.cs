using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_driver_delete : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();

    String qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        string id = Request.QueryString.Get("id");

        string cid;
        qry = "select car_id from tbl_car_driver where driver_id='" + id + "'";
        cmd = new SqlCommand(qry, cn);
        cid = (cmd.ExecuteScalar()).ToString();

        qry = "delete from tbl_booking where driver_id='" + id + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        qry = "delete from tbl_car_driver where car_id='" + cid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        qry = "delete from tbl_car_gallery where car_id='" + cid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        qry = "delete from tbl_car where car_id='" + cid + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        qry = "delete from tbl_driver where driver_id='" + id + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();

        cn.Close();
        Response.Redirect("driver2.aspx?a=1");
    }
}