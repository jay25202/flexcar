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
    SqlDataReader dr;
    string d_id = "";
    string c_id = "";


    protected void rbgen_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    public static int CalculateAge(DateTime birthDate)
    {
        DateTime now = DateTime.Today;
        int year = now.Year - birthDate.Year;
        if (now.Month < birthDate.Month || (now.Month == birthDate.Month && now.Day < birthDate.Day)) --year;

        return year;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
        ////I am writing this article on 9th January 2015  
        ////Selection Date Start from 09th Jan 2005  
        //CalendarExtender2.StartDate = DateTime.Now.AddYears(-18);
        ////Current date can be select but not future date.  
        //CalendarExtender2.EndDate = DateTime.Now;
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        txtage.Text = CalculateAge(Convert.ToDateTime(txtbdate.Text)).ToString();
        //insert into driver
        cn.Open();
        string filename = FileUpload1.FileName;
        string uid;
        uid = Session["uid"].ToString();
        //uid = "3";
        DateTime bdate = Convert.ToDateTime(txtbdate.Text).Date;
        DateTime edate = Convert.ToDateTime(txtlicense_ex_no.Text).Date;
        qry = "insert into tbl_driver values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtphone.Text + "','" + bdate.ToString("dd/MM/yyyy") + "','" + txtlicense_no.Text + "','" + edate.ToString("dd/MM/yyyy") + "','" + txtmail.Text + "','" + txtpass.Text + "','" + rbgen.SelectedValue + "','" + txtage.Text + "','" + ddlstate.SelectedValue + "','" + ddlcity.SelectedValue + "','" + txtadharno.Text + "','" + txtadd.Text + "','" + FileUpload1.FileName + "',0)";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        lbl1.Text = "Inserted Succesfully";
        if (FileUpload1.HasFile)
        {
            int width = 370;
            int height = 330;
            Stream stream = FileUpload1.PostedFile.InputStream;
            Bitmap image = new Bitmap(stream);
            Bitmap target = new Bitmap(width, height);
            Graphics graphic = Graphics.FromImage(target);
            graphic.DrawImage(image, 0, 0, width, height);
            target.Save(Server.MapPath("~/driver_image/") + filename);
           
        }

        // Insert into car
        cn.Open();
       string filename1 = FileUpload2.FileName;
        uid = Session["uid"].ToString();
        //uid = "3";
        qry = "insert into tbl_car values('" + ddlcarname.SelectedValue + "','" + ddl_car_company.SelectedValue + "','" + ddlcarmodel.SelectedValue + "','" + ddltrans.SelectedValue + "','" + ddlfuel.SelectedValue + "','" + ddlcartype.SelectedValue + "','" + txtfual_efficiency.Text + "','" + ddlcolor.SelectedValue + "','" + txtcar_reg_no.Text + "','" + txtowner_name.Text + "','" + txtmenufacture_year.Text + "','" + uid + "','" + FileUpload2.FileName + "','" + txtrent.Text + "','" + ddlstate.SelectedValue + "','" + ddlcity.Text + "',0)";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        if (FileUpload2.HasFile)
        {
            int width = 370;
            int height = 330;
            Stream stream = FileUpload2.PostedFile.InputStream;
            Bitmap image = new Bitmap(stream);
            Bitmap target = new Bitmap(width, height);
            Graphics graphic = Graphics.FromImage(target);
            graphic.DrawImage(image, 0, 0, width, height);
            target.Save(Server.MapPath("~/car_images/") + filename1);
        }

        //selecting car_id from table
        qry = "select car_id from tbl_car where registration_number='" + txtcar_reg_no.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            c_id = dr["car_id"].ToString();
        }
        dr.Close();

        // selectiong driver id from table
        qry = "select driver_id from tbl_driver where phone_number='" + txtphone.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows)
        {
            d_id = dr["driver_id"].ToString();
        }
        dr.Close();


        //retriving car Images
        if (fileuploadimages.HasFile == false)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "key", "<script>alert('No File Uploaded.')</script>", false);
        }
        else
        {
            foreach (var file in fileuploadimages.PostedFiles)
            {
                string fnm = Path.GetFileName(file.FileName);
                qry = "insert into tbl_car_gallery values('" + c_id + "','" + fnm + "')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                int width = 370;
                int height = 330;
                Stream stream = file.InputStream;
                Bitmap image = new Bitmap(stream);
                Bitmap target = new Bitmap(width, height);
                Graphics graphic = Graphics.FromImage(target);
                graphic.DrawImage(image, 0, 0, width, height);
                target.Save(Server.MapPath("~/car_images/") + fnm);
                //file.SaveAs(Server.MapPath("../car_images/" + filename));
                //SqlCommand cmd = new SqlCommand("Insert into
                //EventPageView(Event_name, Event_Text, Image_Path)
                //values(@EventName, @EventText, @ImagePath)", conn);
                //cmd.Parameters.AddWithValue("@ImagePath", filename);
                //cmd.Parameters.AddWithValue("@EventName", txtEventName.Text);
                //cmd.Parameters.AddWithValue("@EventText", txtEnterDesc.Text);
                //conn.Open();
                //cmd.ExecuteNonQuery();
                //conn.Close();
                //BindDataList();
            }
        }


        //tbl_car_driver Insert
        qry = "insert into tbl_car_driver values('" + d_id + "','" + c_id + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        


        Response.Redirect("driver2.aspx");

    }


    protected void txtbdate_TextChanged(object sender, EventArgs e)
    {
        int year = DateTime.Now.Year;
        int syear;
        txtage.Text = CalculateAge(Convert.ToDateTime(txtbdate.Text)).ToString();
    }
}