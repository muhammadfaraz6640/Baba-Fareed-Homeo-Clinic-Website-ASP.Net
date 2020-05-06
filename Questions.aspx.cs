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
    public partial class Questions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserInfo"] == null)
            {
                Label1.Text = "";
                Button3.Visible = false;
                Response.Write("<script>alert('Please Login First')</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Text = Session["UserInfo"].ToString();
                Button2.Visible = false;
            }

        }
      
       
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Question ques = new Models.Question();
            ques.DateQuest = DateTime.Now.ToString();
            string query = "select Uid from UserReg where UEmail = '" + Session["UserInfo"].ToString() + "'";
            ques.Quest = TextBox1.Text;
            Models.Connection con = new Models.Connection();
            SqlCommand com5 = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com5.ExecuteReader();
            while (rd.Read())
            {
                ques.Uid = Convert.ToInt32(rd["Uid"]);
            }
            ques.Add(ques); 
            Response.Write("<script>alert('Published...Please wait for the reply')</script>");
            Models.ClearText ct = new Models.ClearText();
            ct.ClearTextbox(TextBox1);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}