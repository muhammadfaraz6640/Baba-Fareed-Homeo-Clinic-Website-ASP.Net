using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HomeoClinic.Models
{
    public class Blog:ICurd<Blog>
    {
        public int Bid { get; set; }
        public string BlogName { get; set; }
        public string Description { get; set; }
        public DateTime DateTime { get; set; }        
        public string BlogPath { get; set; }

        public void Add(Blog s)
        {
            Models.Connection con = new Connection();
            con.ExecuteQuery("insert into Blog values ('" + s.BlogName + "','" +s.Description + "','" + s.BlogPath + "','" + s.DateTime + "')");
        }

        public void Delete(Blog s)
        {
            throw new NotImplementedException();
        }

        public List<Blog> GetIds()
        {
            throw new NotImplementedException();
        }

        public List<Blog> GetNames()
        {
            throw new NotImplementedException();
        }

        public Blog Search(Blog s)
        {
            throw new NotImplementedException();
        }

        public void Update(Blog s)
        {
            throw new NotImplementedException();
        }
    }
}