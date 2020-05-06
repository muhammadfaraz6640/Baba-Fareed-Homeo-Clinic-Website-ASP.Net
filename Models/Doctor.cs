using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HomeoClinic.Models
{
    public class Doctor:ICurd<Doctor>
    {
        public int Did { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Contact { get; set; }       
        public string Gender { get; set; }
        public string PicPath { get; set; }
        public string Qualification { get; set; }

        public void Add(Doctor s)
        {
            Models.Connection con1 = new Connection();
            con1.ExecuteQuery("insert into Doctor values('" + s.Name + "','" + s.Email + "','" + s.Gender + "','" + s.Qualification + "','" + s.PicPath + "','" + s.Contact + "')");
        }

        public void Delete(Doctor s)
        {
            throw new NotImplementedException();
        }

        public List<Doctor> GetIds()
        {
            throw new NotImplementedException();
        }

        public List<string> GetNames()
        {
            Models.Connection conn = new Connection();
            List<string> a = new List<string>();
            string query = "select DocName from Doctor";
            SqlCommand com10 = new SqlCommand(query, conn.getConnection());
            SqlDataReader rd = com10.ExecuteReader();
            while (rd.Read())
            {
                Name = rd["DocName"].ToString();
                a.Add(Name);
                Name = "";
            }
            rd.Close();
            return a;
        }

        public Doctor Search(Doctor s)
        {
            throw new NotImplementedException();
        }

        public void Update(Doctor s)
        {
            throw new NotImplementedException();
        }

        List<Doctor> ICurd<Doctor>.GetNames()
        {
            throw new NotImplementedException();
        }
    }
}