using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeoClinic
{
    public partial class Password_Recovery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Email ee = new Models.Email();
            Models.Connection con = new Models.Connection();
            SqlCommand com = new SqlCommand("select * from login", con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                ee.email = TextBox1.Text;
                string em = rd["Email"].ToString();
                string pass = rd["Password"].ToString();
                if (ee.email == em)
                {
                    ee.Body = pass;
                    ee.Subject = "Password Recovery";
                    //ee.email = em;
                    ee.SendEmail(ee);
                    Response.Write("<script>alert('Email Sent Successfully')</script>");
                }
            }
        }
    }
}
/*Models.Email ee = new Models.Email();
            Models.Connection con = new Models.Connection();
            SqlCommand com = new SqlCommand("select * from login", con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                string em = rd["Email"].ToString();
                string pass = rd["Password"].ToString();
                if (ee.email == em)
                {
                    ee.Body = pass;
                    ee.Subject = "Password Recovery";
                    ee.email = em;
                    ee.SendEmail(ee);
                    Response.Write("<script>alert('Email Sent Successfully')</script>");
                }
            }*/
