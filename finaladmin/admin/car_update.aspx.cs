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
public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    String qry;
    DataSet ds;
    string id;
    string filename;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString.Get("id");
        if (!IsPostBack)
        {
            cn.Open();
            

            qry = "select * from tbl_car where car_id='" + id + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                ddlcarname.SelectedValue = dr["car_name_id"].ToString();
                ddl_car_company.SelectedValue = dr["car_company_id"].ToString();
                ddltrans.SelectedValue = dr["transmission_type"].ToString();
                ddlfuel.SelectedValue = dr["car_fuel_id"].ToString();
                txtfual_efficiency.Text = dr["avarage_fuel_efficiency"].ToString();
                ddlcolor.SelectedValue = dr["color_id"].ToString();
                txtcar_reg_no.Text = dr["registration_number"].ToString();
                txtowner_name.Text = dr["owner_name"].ToString();
                //string y = dr["car_menufacture_year"].ToString();
                //int x;
                //x = Convert.ToInt32(y);
                txtmenufacture_year.Text = dr["car_menufacture_year"].ToString();
                filename = dr["car_image"].ToString();
                txtrent.Text = dr["car_rent"].ToString();

            }
            cn.Close();
            //Response.Redirect("cars.aspx?a=1");
        }
    }

    protected void btnsub_Click(object sender, EventArgs e)
    {
        cn.Open();
        filename = FileUpload1.FileName;
        string uid;
        //uid = Session["uid"].ToString();
        uid = "3";
        qry = "update tbl_car set car_name_id='" + ddlcarname.SelectedValue + "',car_company_id='" + ddl_car_company.SelectedValue + "',car_model_id='" + ddlcarmodel.SelectedValue + "',transmission_type='" + ddltrans.SelectedValue + "',car_fuel_id='" + ddlfuel.SelectedValue + "',car_type_id='" + ddlcartype.SelectedValue + "',avarage_fuel_efficiency='" + txtfual_efficiency.Text + "',color_id='" + ddlcolor.SelectedValue + "',registration_number='" + txtcar_reg_no.Text + "',owner_name='" + txtowner_name.Text + "',car_menufacture_year='" + txtmenufacture_year.Text + "',car_image='" + filename + "',car_rent='" + txtrent.Text + "' where car_id='" + id + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        lbl1.Text = "Inserted Succesfully";
        if (FileUpload1.HasFile)
        {
            try
            {
                //string filename = FileUpload1.FileName;
                int width = 370;
                int height = 330;
                Stream stream = FileUpload1.PostedFile.InputStream;

                Bitmap image = new Bitmap(stream);

                Bitmap target = new Bitmap(width, height);
                Graphics graphic = Graphics.FromImage(target);
                graphic.DrawImage(image, 0, 0, width, height);
                target.Save(Server.MapPath("~/car_images/") + filename);
                //FileUpload1.SaveAs(Server.MapPath("~/car_images/") + filename);
                //StatusLabel.Text = "Upload status: File uploaded!";
            }
            catch (Exception ex)
            {
                //StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }
        Response.Redirect("cars.aspx");
    }
}