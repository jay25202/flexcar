using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Data;
using System.Configuration;

public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    String qry;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsub_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into tbl_state values('" + ddlcountry.SelectedValue + "','" + txtstate.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("add_state.aspx");
        cn.Close();
    }

    
}