using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Configuration;
public partial class user_conform : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    String qry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        string s = Request.QueryString.Get("ema");
        qry = "update tbl_customer set password='" + newpassword.Text +"' where email='" + s + "'";
        cmd = new SqlCommand(qry, cn);
       // lbl1.Text = "update Succesfully";
        cmd.ExecuteNonQuery();
       //
        cn.Close();
        Response.Redirect("../visitor/vLogin_Page.aspx");
    }
}