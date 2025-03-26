using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.IO;
using System.Configuration;
public partial class admin_admin_profile : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    String qry;
    DataSet ds;
    string id;
    string id1;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        id = Session["uid"].ToString();
        //Label5.Text = id;
        qry = "SELECT tbl_admin.*, tbl_state.state_name, tbl_city.city_name FROM tbl_admin INNER JOIN tbl_city ON tbl_admin.city_id = tbl_city.city_id INNER JOIN tbl_state ON tbl_admin.state_id = tbl_state.state_id AND tbl_city.state_id = tbl_state.state_id WHERE (tbl_admin.admin_id ='" + id + "')";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();

            lblfname.Text = dr["fname"].ToString();
            lbllname.Text = dr["lname"].ToString();
            adminname .Text = dr["fname"].ToString();
            imgadmin.ImageUrl = "../admin/adminimage/" + dr["pic1"].ToString();
            //imgcar2.ImageUrl = "~/car_images/" + dr["car_image"].ToString();
            phono .Text = dr["phone_number"].ToString();
            birthdate .Text = dr["birthdate"].ToString();
            email.Text = dr["email"].ToString();
            llb3.Text = dr["fname"].ToString() + " " + dr["lname"].ToString();
            llb5.Text = dr["phone_number"].ToString();
            llb7.Text = dr["email"].ToString();
            llb9.Text = dr["city_name"].ToString() + " , " + dr["state_name"].ToString () + " India " ;
            Label1.Text = dr["admin_id"].ToString();
            TextBox1.Text = dr["fname"].ToString();
            TextBox2.Text = dr["email"].ToString();
            Txtpass.Text = dr["password"].ToString();
            txtphone.Text = dr["phone_number"].ToString();
            if (!IsPostBack)
            {
                ddlstate.SelectedValue = dr["state_id"].ToString();
                ddlcity.SelectedValue = dr["city_id"].ToString();
            }
        }
       
        //hl1.NavigateUrl = "driver_update.aspx?id=" + id;
        //hl2.NavigateUrl = "driver_delete.aspx?id=" + id;
        cn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "update tbl_admin set fname='" + TextBox1.Text + "',email='" + TextBox2.Text + "',password='" + Txtpass.Text + "',phone_number='" + txtphone.Text + "',state_id='" + ddlstate.SelectedValue + "',city_id='" + ddlcity.SelectedValue + "'  where admin_id='" + id + "' ";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        lbl2.Text = "update Succesfully";
        Response.Redirect("admin_profile.aspx");
        cn.Close();
    }
}