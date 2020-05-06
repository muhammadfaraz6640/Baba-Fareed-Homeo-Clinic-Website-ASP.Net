using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HomeoClinic.Models
{
    public class Appointment:ICurd<Appointment>
    {
        public int Cid { get; set; }
        public int Did { get; set; }
        public int Uid { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public string Type { get; set; }
        public string Reason { get; set; }
        public string PateintName { get; set; }

        public void Add(Appointment s)
        {
            Models.Connection con = new Connection();
            con.ExecuteQuery("insert into Consultation values('" + s.Date + "','" + s.Time + "','" + s.Type + "','" + s.Reason + "','" + s.Did + "','" + s.PateintName + "','" + s.Uid + "')");
        }

        public void Delete(Appointment s)
        {
            throw new NotImplementedException();
        }

        public List<Appointment> GetIds()
        {
            throw new NotImplementedException();
        }

        public List<Appointment> GetNames()
        {
            throw new NotImplementedException();
        }

        public Appointment Search(Appointment s)
        {
            throw new NotImplementedException();
        }

        public void Update(Appointment s)
        {
            throw new NotImplementedException();
        }
    }
}