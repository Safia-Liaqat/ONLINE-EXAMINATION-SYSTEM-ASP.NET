using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["OnlineExaminationSystem"]!=null)
            {
                Session["userID"] = Response.Cookies["OnlineExaminationSystem"]["userID"];
                Session["FirstName"] = Response.Cookies["OnlineExaminationSystem"]["FirstName"];
                Session["LastName"] = Response.Cookies["OnlineExaminationSystem"]["LastName"];
                Session.Timeout = 720;
                if (Txtemail.Text == "safialiaqat211@gmail.com" && txtPassword.Text == "safia")
                {
                    Response.Redirect("~/Admin/Dashboard.aspx");
                }
                else
                {
                    Response.Redirect("~/Userside/Class.aspx");

                }
            }
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
        public string MyEncryptstring(string StrEncrypted)
        {
            byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(StrEncrypted);
            string encrypted = Convert.ToBase64String(b);
            return encrypted;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            
            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
                if(Txtemail.Text== "testadmin@gmail.com" && txtPassword.Text== "dGVzdGFkbWluMjExQA==")
                {
                    var login = db.aminlogin().ToList();
                    Session["userID"] = login[0].LoginID;
                    Session["FirstName"] = login[0].FirstName;
                    Session["LastName"] = login[0].LastName;
                    Session.Timeout = 720;
                    Response.Cookies["OnlineExaminationSystem"]["userID"] = login[0].LoginID.ToString();
                    Response.Cookies["OnlineExaminationSystem"]["FirstName"] = login[0].FirstName;
                    Response.Cookies["OnlineExaminationSystem"]["LastName"] = login[0].LastName;
                    Response.Cookies["OnlineExaminationSystem"].Expires = DateTime.Now.AddDays(1);
                    Response.Redirect("~/Admin/Dashboard.aspx");
                    
                }
              
                var query = db.SPLogin(Txtemail.Text, MyEncryptstring(txtPassword.Text)).ToList();
                if (query.Count > 0)
                {
                    Session["userID"] = query[0].LoginID;
                    Session["userFirstName"] = query[0].FirstName;
                    Session["userLastName"] = query[0].LastName;
                    Session.Timeout = 720;
                    Response.Cookies["OnlineExaminationSystem"]["userID"] = query[0].LoginID.ToString();
                    Response.Cookies["OnlineExaminationSystem"]["FirstName"] = query[0].FirstName;
                    Response.Cookies["OnlineExaminationSystem"]["LastName"] = query[0].LastName;
                    Response.Cookies["OnlineExaminationSystem"].Expires = DateTime.Now.AddDays(1);
                    Response.Redirect("~/Userside/Class.aspx");
                }
                else
                {
                    lblmsg.Text = "Inavlid Email or Pasword";
                    
                }
                
            }
        }
    }
}