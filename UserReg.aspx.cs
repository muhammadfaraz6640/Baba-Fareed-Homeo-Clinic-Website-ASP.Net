using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeoClinic
{
    public partial class UserReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string gender = "";
            Models.Connection con = new Models.Connection();
            Models.UserRegister user = new Models.UserRegister();
            user.UName = TextBox1.Text;
            user.UEmail = TextBox2.Text;
            user.UPass = TextBox3.Text;
            if(RadioButton1.Checked)
            {
                gender = "Male";
            }
            else if(RadioButton2.Checked)
            {
                gender = "Female";
            }
            user.UGender = gender;
            user.UContact = TextBox4.Text;
            user.signUp(user);
            Models.Email em = new Models.Email();
            em.email = TextBox2.Text;
            em.Subject = "Thank You So Much For Registration";
            em.Body = "testing Body"; //will be changed later
            em.SendEmail(em);
            Response.Write("<script>alert('Successfully Regsitered...check Your mail')</script>");
            Models.ClearText ct = new Models.ClearText();
            ct.ClearTextbox(TextBox1,TextBox2,TextBox3,TextBox4);
        }
    }
}