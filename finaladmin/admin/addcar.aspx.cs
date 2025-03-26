using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
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
        string filename = FileUpload1.FileName;
        string uid;
        uid = Session["uid"].ToString();
        //uid = "3";
        qry = "insert into tbl_car values('" + ddlcarname.SelectedValue + "','" + ddl_car_company.SelectedValue + "','" + ddlcarmodel.SelectedValue + "','" + ddltrans.SelectedValue + "','" + ddlfuel.SelectedValue + "','" + ddlcartype.SelectedValue + "','" + txtfual_efficiency.Text + "','" + ddlcolor.SelectedValue + "','" + txtcar_reg_no.Text + "','" + txtowner_name.Text + "','" + txtmenufacture_year.Text + "','" + uid + "','" + FileUpload1.FileName + "','" + txtrent.Text +"',0)";
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
            target.Save(Server.MapPath("~/car_images/") + filename);
            //FileUpload1.SaveAs(Server.MapPath("~/car_images/") + filename);
            //FileUpload1.SaveAs(Server.MapPath("~/car_images/") + filename);
            //FileUpload1.SaveAs(Server.MapPath("~/car_images/") + filename);
            //StatusLabel.Text = "Upload status: File uploaded!";
        }
        Response.Redirect("cars.aspx");
    }
}