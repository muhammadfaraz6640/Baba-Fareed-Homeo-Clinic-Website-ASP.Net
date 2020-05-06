using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeoClinic
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetNames();
            }
            if (Session["AdminInfo"] == null)
            {
                Label3.Text = "";
                Button8.Visible = false;
                Response.Write("<script>alert('Please Login First')</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label3.Text = Session["AdminInfo"].ToString();
                Button8.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string gender = "";
            Models.Doctor doc = new Models.Doctor();
            doc.Name = TextBox1.Text;
            doc.Email = TextBox2.Text;
            doc.Contact = TextBox3.Text;
            if (RadioButton1.Checked)
            {
                gender = "Male";
            }
            else if (RadioButton2.Checked)
            {
                gender = "Female";
            }
            doc.Gender = gender;
            doc.Qualification = TextBox4.Text;
            doc.PicPath = Label1.Text;
            doc.Add(doc);
            Response.Write("<script>alert('Successfully Entered')</script>");
            ct.ClearTextbox(TextBox1, TextBox2, TextBox3, TextBox4);
            Image1.ImageUrl = "";
            Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/Doctor/") + filename);
            Image1.ImageUrl = "~/Images/Doctor/" + filename;
            Label1.Text = "~/Images/Doctor/" + filename;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Models.Time t = new Models.Time();
            t.AppointmentTime = TextBox5.Text;
            t.Add(t);
            Response.Write("<script>alert('Entered Successfully')</script>");
            ct.ClearTextbox(TextBox5);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                string filename = Path.GetFileName(FileUpload2.FileName);
                FileUpload2.PostedFile.SaveAs(Server.MapPath("~/Images/Blogs/") + filename);
                Image2.ImageUrl = "~/Images/Blogs/" + filename;
                Label2.Text = "~/Images/Blogs/" + filename;
            }
        }
        Models.ClearText ct = new Models.ClearText();
        protected void Button5_Click(object sender, EventArgs e)
        {
            
            Models.Blog blog = new Models.Blog();
            blog.BlogName = TextBox6.Text;
            blog.Description = TextBox7.Text;
            blog.DateTime = DateTime.Now;
            blog.BlogPath = Label2.Text;
            blog.Add(blog);
            Response.Write("<script>alert('Successfully Entered')</script>");
            ct.ClearTextbox(TextBox6, TextBox7);
            Image2.ImageUrl = "";
            Label2.Text = "";
        }
        public void GetNames()
        {

            DropDownList1.Items.Clear();
            DropDownList1.Items.Insert(0, "--select user Name--");
            foreach (var item in u.GetNames())
            {
                DropDownList1.Items.Add(Convert.ToString(item));
            }
        }
        Models.UserRegister u = new Models.UserRegister();
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Models.Connection con = new Models.Connection();
            string query = "select UEmail from UserReg where UName = '" + DropDownList1.Text + "'";
            SqlCommand com = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                u.UEmail = rd["UEmail"].ToString();
            }
            TextBox8.Text = u.UEmail;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Models.Email em = new Models.Email();
            em.Subject = TextBox9.Text;
            em.Body = TextBox10.Text;
            em.email = TextBox8.Text;
            em.SendEmail(em);
            Response.Write("<script>alert('Send Successfully')</script>");
            ct.ClearTextbox(TextBox8, TextBox9, TextBox10);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Models.AdminRegister ad = new Models.AdminRegister();
            ad.Name = TextBox11.Text;
            ad.Email = TextBox12.Text;
            ad.Password = TextBox13.Text;
            ad.signUp(ad);
            Response.Write("<script>alert('Successfully Regsitered')</script>");
            ct.ClearTextbox(TextBox11, TextBox12, TextBox13);
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}