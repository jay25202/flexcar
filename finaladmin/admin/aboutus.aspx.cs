using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class admin_aboutus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            StreamReader sr = new StreamReader(Server.MapPath("~/htmlpages/aboutus.htm"));
            CKEditorControl1.Text = sr.ReadToEnd();
            sr.Close();
        }
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        StreamWriter sw = new StreamWriter(Server.MapPath("~/htmlpages/aboutus.htm"));
        sw.Write(CKEditorControl1.Text );
        sw.Close();
    }

    //protected void txt1_TextChanged(object sender, EventArgs e)
    //{

    //}
}