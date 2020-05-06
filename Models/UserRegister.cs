using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HomeoClinic.Models
{
    public class UserRegister
    {
        public int Uid { get; set; }
        public string UName { get; set; }
        public string UGender { get; set; }
        public string UEmail { get; set; }
        public string UPass { get; set; }        
        public string UContact { get; set; }

        public string role = "User";

        public void signUp(UserRegister a)
        {
            Connection gcon = new Connection();
            // gcon.getConnection();
            gcon.ExecuteQuery("insert into UserReg values ('" + a.UName + "','" + a.UGender + "','" + a.UEmail + "','" + a.UPass + "','" + a.role + "','" + a.UContact + "')");
            gcon.ExecuteQuery("insert into login values('" + a.UEmail + "','" + a.UPass + "','" + a.role + "')");
        }
        public List<string> GetNames()
        {
            Models.Connection con = new Connection();
            List<string> a = new List<string>();
            string query = "select UName from UserReg";
            SqlCommand com = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                UName = rd["UName"].ToString();
                a.Add(UName);
                UName = "";
            }
            rd.Close();
            return a;
        }


    }
}