using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      
        public string MyEncryptstring(string StrEncrypted)
        {
            byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(StrEncrypted);
            string encrypted = Convert.ToBase64String(b);
            return encrypted;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
                tblLogin u = new tblLogin();
                u.FirstName = TxtFirstName.Text;
                u.LastName = TxtLastName.Text;
                u.EmailAdress = Txtemail.Text;
                u.Pasword = MyEncryptstring(txtPassword.Text);
                db.tblLogins.Add(u);
                db.SaveChanges();
                lblmsg.Text = "Account Created successfully";

            }
        }
    }
}