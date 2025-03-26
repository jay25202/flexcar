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
       
    }

    protected void btn_subcar_name_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into tbl_car_name values('" + ddl_car_company.SelectedValue + "','" + txt_carname.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        lblcarname.Text = "Inserted Succesfully";
    }

    protected void btn_subcar_company_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into tbl_car_company values('" + txt_carcomp.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        lblcarcompany.Text = "Inserted Succesfully";
        ddl_car_company.DataBind();
    }
    protected void btn_subcar_colour_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into tbl_car_color values('" + txt_carcolour.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        lblcarcolour.Text = "Inserted Succesfully";
       

    }

    protected void btn_subcar_type_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into tbl_car_type values('" + txt_cartype.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        lblcartype.Text = "Inserted Succesfully";
    }

    protected void btn_subcar_fuel_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into tbl_car_fuel_type values('" + txt_carfuel.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        lblcarfuel.Text = "Inserted Succesfully";
    }
}