using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    String qry;
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        id = Request.QueryString.Get("id");
        qry = "delete from tbl_contact where id='" + id + "'";
        cmd = new SqlCommand(qry,cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("dashboard.aspx");
    }
}