using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HomeoClinic.Models
{
    public class Time:ICurd<Time>
    {
        public int Conid { get; set; }
        public string AppointmentTime { get; set; }

        public void Add(Time s)
        {
            Models.Connection con = new Connection();
            con.ExecuteQuery("insert into ConsultationTime values('" + s.AppointmentTime + "')");
        }

        public void Delete(Time s)
        {
            throw new NotImplementedException();
        }

        public List<Time> GetIds()
        {
            throw new NotImplementedException();
        }

        public List<string> GetNames()
        {
            Models.Connection con = new Connection();
            List<string> a = new List<string>();
            string query = "select Ctime from ConsultationTime";
            SqlCommand com = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                AppointmentTime = rd["Ctime"].ToString();
                a.Add(AppointmentTime);
                AppointmentTime = "";
            }
            rd.Close();
            return a;
        }

        public Time Search(Time s)
        {
            throw new NotImplementedException();
        }

        public void Update(Time s)
        {
            throw new NotImplementedException();
        }

        List<Time> ICurd<Time>.GetNames()
        {
            throw new NotImplementedException();
        }
    }
}