using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeoClinic
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
            if (Session["UserInfo"] == null)
            {
                Label1.Text = "";
                Button2.Visible = false;                
            }
            else
            {
                Label1.Text = Session["UserInfo"].ToString();
                Button1.Visible = false;
            }
        }
        Models.Connection con = new Models.Connection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sdr = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Show()
        {
            con.getConnection();
            cmd.CommandText = "select top 3 * from Blog order by NEWID()";
            cmd.Connection = con.getConnection();
            sdr.SelectCommand = cmd;
            sdr.Fill(ds, "BDescription");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}