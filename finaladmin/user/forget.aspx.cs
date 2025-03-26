using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_forget : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    String qry;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select email from tbl_customer ";
        SqlCommand cmd = new SqlCommand(qry,cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                string ema = dr["email"].ToString();
                if (ema == txtemail.Text)
                {
                    MailMessage mail = new MailMessage();
                    string mailid = txtemail.Text;
                    mail.To.Add(mailid);
                    mail.From = new MailAddress("0FlexCar@gmail.com");
                    mail.Subject = "Regerastration";
                    string Body = "You reg Successfully to our Website" + "<br />" + "http://localhost:52942/user/conform.aspx?ema=" + txtemail.Text;
                    mail.Body = Body;
                    mail.IsBodyHtml = true;

                    SmtpClient smtp = new SmtpClient();

                    //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
                    //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


                    smtp.Host = "smtp.gmail.com";
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = new System.Net.NetworkCredential("0FlexCar@gmail.com", "Flexcar786");
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                    Response.Redirect("../visitor/vLogin_Page.aspx");
                }
                else
                {
                    Lable1.Visible = true;
                    HyperLink1.Visible = true;
                }
            }
        }
        cn.Close();
    }
}