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
public partial class admin_driver_update : System.Web.UI.Page
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
            

            qry = "select * from tbl_driver where driver_id='" + id + "'";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txtfname.Text = dr["fname"].ToString();
                txtlname.Text = dr["lname"].ToString();
                txtphone.Text = dr["phone_number"].ToString();
                txtbdate.Text = dr["birthdate"].ToString();
                txtlicense_no.Text = dr["driving_lincense_number"].ToString();
                txtlicense_ex_no.Text = dr["lincense_expire_date"].ToString();
                txtmail.Text = dr["email"].ToString();
                txtpass.Text = dr["password"].ToString();
                rbgen.SelectedValue = dr["gender"].ToString();
                txtage.Text = dr["age"].ToString();
                ddlstate.SelectedValue = dr["state_id"].ToString();
                ddlcity.SelectedValue = dr["city_id"].ToString();
                txtadharno.Text = dr["adharcardno"].ToString();
                txtadd.Text = dr["address"].ToString();
                filename = dr["pic"].ToString();
            }
            cn.Close();
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
         cn.Open();
        if (FileUpload1.HasFile)
        {
            filename = FileUpload1.FileName;
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
                target.Save(Server.MapPath("~/driver_image/") + filename);
                //FileUpload1.SaveAs(Server.MapPath("~/driver_image/") + filename);
                //StatusLabel.Text = "Upload status: File uploaded!";
            }
            catch (Exception ex)
            {
                //StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }
        //string uid;
        ////uid = Session["uid"].ToString();
        //uid = "3";
        txtage.Text = CalculateAge(Convert.ToDateTime(txtbdate.Text)).ToString();
        qry = "update tbl_driver set fname='" + txtfname.Text  + "',lname='" + txtlname.Text  + "',phone_number='" + txtphone.Text  + "',birthdate='" + Convert.ToDateTime(txtbdate.Text).ToString("dd/MM/yyyy")  + "',driving_lincense_number='" + txtlicense_no.Text  + "',lincense_expire_date='" + Convert.ToDateTime(txtlicense_ex_no.Text).ToString("dd/MM/yyyy")  + "',email='" + txtmail.Text + "',password='" + txtpass.Text  + "',gender='" + rbgen.SelectedItem  + "',age='" + txtage.Text + "',state_id='" + ddlstate.SelectedValue  + "',city_id='" + ddlcity.SelectedValue  + "',adharcardno='" + txtadharno.Text  + "',address='" + txtadd.Text + "',pic='" + filename + "'  where driver_id='" + id + "' ";
        cmd = new SqlCommand(qry, cn);
        lbl1.Text = "update Succesfully";
        cmd.ExecuteNonQuery();
        Response.Redirect("driver2.aspx");
        cn.Close();
    }

    protected void txtbdate_TextChanged(object sender, EventArgs e)
    {
        int year = DateTime.Now.Year;
        int syear;
        txtage.Text = CalculateAge(Convert.ToDateTime(txtbdate.Text)).ToString();
    }

    public static int CalculateAge(DateTime birthDate)
    {
        DateTime now = DateTime.Today;
        int year = now.Year - birthDate.Year;
        if (now.Month < birthDate.Month || (now.Month == birthDate.Month && now.Day < birthDate.Day)) --year;

        return year;
    }

}