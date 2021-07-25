using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem.Admin
{
    public partial class Questions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            getclass();
            getsubject();
            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
                if (Request.QueryString["questionID"] != null)
                {
                    int questionID = Convert.ToInt32(Request.QueryString["questionID"]);
                    tblQuestion q = db.tblQuestions.FirstOrDefault(v => v.QuestionID == questionID);
                    txtQuestions.Text = q.Questions;
                      txtop1.Text= q.opt1;
                     txtopt2.Text = q.opt2;
                      Txtop3.Text= q.opt3;
                     Txtopt4.Text = q.opt4;
                      Txtanswer.Text= q.Answer;
                    ddlClass.SelectedValue = q.classID.ToString();
                    ddlsubject.SelectedValue = q.SubjectID.ToString();
                }
            }


        }
        protected void getclass()
        {
            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
                var getclass = db.getClass().ToList();
                ddlClass.DataSource = getclass;
                ddlClass.DataTextField = "ClassName";
                ddlClass.DataValueField = "ClassID";
                ddlClass.DataBind();
            }

        }
        protected void getsubject()
        {
            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
                var getsubject = db.spSubject().ToList();
                ddlsubject.DataSource = getsubject;
                ddlsubject.DataTextField = "SubjectName";
                ddlsubject.DataValueField = "SubjectID";
                ddlsubject.DataBind();

            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
                if (Request.QueryString["questionID"] == null)
                {
                    tblQuestion q = new tblQuestion();
                    q.Questions = txtQuestions.Text;
                    q.opt1 = txtop1.Text;
                    q.opt2 = txtopt2.Text;
                    q.opt3 = Txtop3.Text;
                    q.opt4 = Txtopt4.Text;
                    q.Answer = Txtanswer.Text;
                    q.classID = Convert.ToInt32(ddlClass.SelectedValue);
                    q.SubjectID = Convert.ToInt32(ddlsubject.SelectedValue);
                    db.tblQuestions.Add(q);
                    db.SaveChanges();
                }
                else
                {
                    int questionID = Convert.ToInt32(Request.QueryString["questionID"]);
                    tblQuestion q = db.tblQuestions.FirstOrDefault(v => v.QuestionID == questionID); q.Questions = txtQuestions.Text;
                    q.Questions = txtQuestions.Text;
                    q.opt1 = txtop1.Text;
                    q.opt2 = txtopt2.Text;
                    q.opt3 = Txtop3.Text;
                    q.opt4 = Txtopt4.Text;
                    q.Answer = Txtanswer.Text;
                    q.classID = Convert.ToInt32(ddlClass.SelectedValue);
                    q.SubjectID = Convert.ToInt32(ddlsubject.SelectedValue);

                    db.SaveChanges();
                }
                lblmsg.Text = "Question Added successfully";



            }
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Questions.aspx");
        }
    }
}