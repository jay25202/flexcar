using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Collections.Specialized;
using System.Configuration;

public partial class user_Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    String qry;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            cn.Open();
            qry = "SELECT * from tbl_customer where customer_id='" + Session["uid"].ToString() + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                txtfname.Text = dr["fname"].ToString();
                txtlname.Text = dr["lname"].ToString();
                txtpass.Text = dr["password"].ToString();
                txtcpass.Text = dr["password"].ToString();
                txtphone.Text = dr["phone_number"].ToString();
                txtemail.Text = dr["email"].ToString();
                //txtlicno.Text= dr["driving_lincense_number"].ToString();
                //DateTime dt = Convert.ToDateTime(dr["lincense_expire_date"].ToString());
                //txtlicexpdt.Text= dt.ToString("dd/MM/yyyy");
                //txtbdt.Text= Convert.ToDateTime(dr["birthdate"].ToString()).ToString("dd/MM/yyyy");
                //txtage.Text= dr["age"].ToString();
                if (dr["gender"].ToString() == "Male")
                {
                    rbgen.SelectedIndex = 0;
                }
                else
                {
                    rbgen.SelectedIndex = 1;
                }
                
                    ddlstate.SelectedValue = dr["state_id"].ToString();
                    ddlcity.SelectedValue = dr["city_id"].ToString();
                
            }
            cn.Close();
        }
    }

    protected void btnreg_Click(object sender, EventArgs e)
    {
        cn.Open();
        if (txtpass.Text != null && txtcpass.Text != null)
        {
            qry = "update tbl_customer set fname='" + txtfname.Text + "',lname='" + txtlname.Text + "',password='" + txtcpass.Text + "',phone_number='" + txtphone.Text + "',email='" + txtemail.Text + "',state_id='" + ddlstate.SelectedValue + "',city_id='" + ddlcity.Text + "',gender='" + rbgen.SelectedItem + "' where customer_id='" + Session["uid"].ToString() + "' ";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
        }
        else
        {
            lblerror.Text = "Invalid Data";
        }
        cn.Close();
        Response.Redirect("../visitor/vLogin_Page.aspx");
    }
}