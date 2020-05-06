using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Data.SqlClient;
namespace HomeoClinic.Models
{
    public class Email { 
    public string email { get; set; }    
    public string Body { get; set; }
    public string Subject { get; set; }
        Connection con = new Connection();
        public void SendEmail(Email e)
        {
            con.getConnection();
            SqlCommand com = new SqlCommand("select * from login", con.con);
            SqlDataReader rd = com.ExecuteReader();            
            SmtpClient clientDetails = new SmtpClient();
            clientDetails.Port = 587;
            clientDetails.Host = "smtpout.secureserver.net"; //"smtp-mail.outlook.com";
            clientDetails.EnableSsl = true;
            clientDetails.DeliveryMethod = SmtpDeliveryMethod.Network;
            clientDetails.UseDefaultCredentials = false;
            clientDetails.Credentials = new NetworkCredential("doctor@babafareedhomeoclinic.com", "Fatcow123");
            MailMessage mailDetails = new MailMessage();
            mailDetails.From = new MailAddress("doctor@babafareedhomeoclinic.com");
            mailDetails.To.Add(e.email);
            mailDetails.Subject = e.Subject;
            mailDetails.Body = e.Body;
            clientDetails.Send(mailDetails);                            
        }
    }
}
