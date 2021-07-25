using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem.Admin
{
    public partial class StudentSetUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
                if (IsPostBack) return;
                    var getclass = db.getClass().ToList();
                    ddlClass.DataSource = getclass;
                    ddlClass.DataTextField = "ClassName";
                    ddlClass.DataValueField = "ClassID";
                    ddlClass.DataBind();
                

                if(Request.QueryString["SubjID"]!=null)
                {
                    int subjectID = Convert.ToInt32(Request.QueryString["SubjID"]);
                    tblSubject s = db.tblSubjects.FirstOrDefault(v => v.SubjectID == subjectID);
                    txtSubject.Text = s.SubjectName;
                    ddlClass.SelectedValue = s.ClassID.ToString();
                }
            }
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
                if (Request.QueryString["subjID"] == null)
                {
                    tblSubject s = new tblSubject();
                    s.SubjectName = txtSubject.Text;
                    s.ClassID = Convert.ToInt32(ddlClass.SelectedValue);
                    db.tblSubjects.Add(s);
                    db.SaveChanges();
                }
                else
                {
                    int subjectID = Convert.ToInt32(Request.QueryString["SubjID"]);
                    tblSubject s = db.tblSubjects.FirstOrDefault(v => v.SubjectID == subjectID);
                    s.SubjectName = txtSubject.Text;
                    s.ClassID = Convert.ToInt32(ddlClass.SelectedValue);
                     db.SaveChanges();
                }
                lblmsg.Text = "subject Added";

            }
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Subject.aspx");
        }
    }
}