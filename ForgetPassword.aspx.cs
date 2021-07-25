using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

namespace ExaminationSystem
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string MyDecryptstring(string encrstring)
        {
            byte[] b;
            string decrypted;
            try
            {
                b = Convert.FromBase64String(encrstring);
                decrypted = System.Text.ASCIIEncoding.ASCII.GetString(b);
            }
            catch (FormatException fe)
            {
                decrypted = "";
            }
            return decrypted;
        }

        protected void btnpasword_Click(object sender, EventArgs e)
        {
            //String con = ConfigurationManager.ConnectionStrings["OnlineExaminationSystem"].ConnectionString;
            String con= "Data Source=DESKTOP-S57J0OV\\SQLEXPRESS; Initial Catalog=OnlineExaminationSystem; Integrated Security=True";//ab theek hai?
            
            SqlConnection sqlconn = new SqlConnection(con);
            String sqlquery = "Select EmailAdress,Pasword from [dbo].[tblLogin] where EmailAdress=@email";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@email", txtemail.Text);
            sqlconn.Open();
            SqlDataReader sdr = sqlcomm.ExecuteReader();

            if(sdr.Read())
            
            {
                String username = sdr["EmailAdress"].ToString();
                String Password= MyDecryptstring(sdr["Pasword"].ToString());  //------------------------here we go!---------------------------------------//
                MailMessage m = new MailMessage("safialiaqat211@gmail.com", txtemail.Text);
                m.Subject = "Your passowrd!";
                m.Body = String.Format("Hello :  <h1>{0}</h1>  is your Email Id <br/> your Password is <h1>{1}</h1>", username, Password);
                m.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "ignitedeveloperstech@gmail.com";
                nc.Password = "1touchandiignite";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                smtp.Send(m);
                lblmsg.Text = "Your password has been sent to your" + txtemail.Text;

            }
            else
            {
                lblmsg.Text = "this email is not in our database";
            }
      

    }
    }
}