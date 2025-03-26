using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class user_Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    String qry;

    protected void Page_Load(object sender, EventArgs e)
    {
       
        
    }

    protected int getstar(string cid)
    {
        string star = "";
        cn.Open();
        qry = "select sum(rate)/count(rate) from tbl_feedback where car_id='" + cid + "'";
        cmd = new SqlCommand(qry, cn);
        star = (cmd.ExecuteScalar()).ToString();
        if (star == "")
        {
            cn.Close();
            return 3;
        }
        else
        {
            int s = Convert.ToInt16(star);
            if (s >= 3)
            {
                cn.Close();
                return s;
            }
            else
            {
                cn.Close();
                return 3;
            }
        }

    }
}