using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HomeoClinic.Models
{
    public class Question:ICurd<Question>
    {
        public int Qid { get; set; }
        public int Uid { get; set; }
        public string Quest { get; set; }
        public string DateQuest  { get; set; }

        public void Add(Question s)
        {
            Models.Connection con = new Connection();
            con.ExecuteQuery("insert into Question values('" + s.Quest + "','" + s.DateQuest + "','" + s.Uid + "')");
        }

        public void Delete(Question s)
        {
            throw new NotImplementedException();
        }

        public List<Question> GetIds()
        {
            throw new NotImplementedException();
        }

        public List<Question> GetNames()
        {
            throw new NotImplementedException();
        }

        public Question Search(Question s)
        {
            throw new NotImplementedException();
        }

        public void Update(Question s)
        {
            throw new NotImplementedException();
        }
    }
}