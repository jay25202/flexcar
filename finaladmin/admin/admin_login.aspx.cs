using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class admin_admin_login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataSet ds;
    String qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        qry = "select * from tbl_admin where email='" + txtemail.Text + "' and password='" + txtpassword.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Session["uid"] = dr["admin_id"].ToString();
            Session["fname"] = dr["fname"].ToString();
            Session["lname"] = dr["lname"].ToString();
            Session["pic"] = dr["pic1"].ToString ();
            Session["mail"] = dr["email"].ToString();
            Response.Redirect("dashboard.aspx");
        }
        else
        {
            lbl1.Text = "Incorrect Email or Password*****";
            //lbl2.Text = "Incorrect Name or Password";
        }

    }

    protected void Page_Unload(object sender, EventArgs e)
    {
        cn.Close();
    }
}