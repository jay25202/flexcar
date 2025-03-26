using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Collections.Specialized;
using System.Configuration;
public partial class visitor_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    String qry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public static int CalculateAge(DateTime birthDate)
    {
        DateTime now = DateTime.Today;
        int year = now.Year - birthDate.Year;
        if (now.Month < birthDate.Month || (now.Month == birthDate.Month && now.Day < birthDate.Day)) --year;

        return year;
    }

    protected void btnreg_Click(object sender, EventArgs e)
    {
        txtage.Text = CalculateAge(Convert.ToDateTime(txtbdt.Text)).ToString();
        if (txtotp.Text == Session["otp"].ToString())
        {
            cn.Open();
            qry = "insert into tbl_customer values('" + txtfname.Text + "','" + txtlname.Text + "'," + txtphone.Text + ",'" + txtbdt.Text + "','" + txtlicno.Text + "','" + txtlicexpdt.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + rbgen.SelectedItem + "','" + txtage.Text + "'," + ddlstate.SelectedValue + "," + ddlcity.SelectedValue + ")";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();


            Response.Redirect("vLogin_Page.aspx");
        }
        else
        {
            lblotp.Text = "OTP incorrect";
        }
       
    }

    protected void txtbdt_TextChanged(object sender, EventArgs e)
    {
        int year = DateTime.Now.Year;
        int syear;
        txtage.Text = CalculateAge(Convert.ToDateTime(txtbdt.Text)).ToString();
    }


    protected void botp_Click(object sender, EventArgs e)
    {
        Random random = new Random();
        int value = random.Next(1001, 9999);
        string destinationaddr = "91" + txtphone.Text ;
        string message = " Your OTP no is :" + value;
        string message1 = HttpUtility.UrlEncode(message);

        using (var wb = new WebClient())
        {
            byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                    {
                    {"apikey" , "No3p9wXqoWg-lD6m2E5jYo7raMIW2MfhmzXsbLBK92" },
                        {"numbers" , destinationaddr},
                        {"message" , message1},
                        {"sender" , "TXTLCL" }
                    });
            string result = System.Text.Encoding.UTF8.GetString(response);
            Session["otp"] = value;
        }
    }
}