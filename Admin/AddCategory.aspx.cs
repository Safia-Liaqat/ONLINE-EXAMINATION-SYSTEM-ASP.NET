using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem.Admin
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
              //  var que = db.getClass().ToList();
                if (Request.QueryString["classID"] != null)
                {
                    int ClassID = Convert.ToInt32(Request.QueryString["classID"]);
                    tblClass c = db.tblClasses.FirstOrDefault(v => v.ClassID == ClassID);
                    txtClassName.Text = c.ClassName;
                }
            }
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminCategory.aspx");   
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
                if (Request.QueryString["classID"] == null)
                {
                    tblClass c = new tblClass();
                    c.ClassName = txtClassName.Text;
                    db.tblClasses.Add(c);
                    db.SaveChanges();
                }
                else
                {
                    int ClassID = Convert.ToInt32(Request.QueryString["classID"]);
                    tblClass c = db.tblClasses.FirstOrDefault(v => v.ClassID == ClassID);
                    c.ClassName = txtClassName.Text;
                    db.SaveChanges();
                }
                lblmsg.Text = "Class added succesfully";
            }
        }
    }
}