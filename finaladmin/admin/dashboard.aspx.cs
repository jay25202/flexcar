using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    String qry;

    public void counter()
    {
        DataSet dshits = new DataSet();
        dshits.ReadXml(Server.MapPath("~/counter.xml"));

        l1.Text = dshits.Tables[0].Rows[0]["hit"].ToString();
 }

    protected void Page_Load(object sender, EventArgs e)
    {
        counter();
        cn.Open();

        qry = "select sum(total_amount) from tbl_payment";
        cmd = new SqlCommand(qry, cn);
        lblamt.Text = (cmd.ExecuteScalar()).ToString() + "₹";

        qry = "select count(customer_id) from tbl_customer";
        cmd = new SqlCommand(qry, cn);
        lblcust.Text = (cmd.ExecuteScalar()).ToString();

        cn.Close();
    }
}