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
    String qry;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select count(*) from tbl_car";
        cmd = new SqlCommand(qry,cn);
        string s = cmd.ExecuteScalar().ToString();
        lblcar.Text = s;
        cn.Close();
        cn.Open();
        qry = "select count(*) from tbl_customer";
        cmd = new SqlCommand(qry, cn);
        string a = (cmd.ExecuteScalar()).ToString();
        lbluser.Text = a;
        cn.Close();
        cn.Open();
        qry = "select count(*) from tbl_booking";
        cmd = new SqlCommand(qry, cn);
        string b = (cmd.ExecuteScalar()).ToString();
        lblbook.Text = b;
        cn.Close();
        lblawd.Text = "275";
    }
}