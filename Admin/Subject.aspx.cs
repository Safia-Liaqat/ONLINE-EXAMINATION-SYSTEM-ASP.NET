using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem.Admin
{
    public partial class Subject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fillsubject();
        }
        protected void fillsubject()
        {
            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
                var Subject = db.GetSubject().ToList();
                GV.DataSource = Subject;
                GV.DataBind();
            }
        }
        protected void GV_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="edit")
            {
                Response.Redirect("SubjectSetUp.aspx?SubjID=" + e.CommandArgument);
            }
            else if(e.CommandName=="delete")
            {
                int SubjectID = Convert.ToInt32(e.CommandArgument);
                using(OnlineExaminationSystemEntities db=new OnlineExaminationSystemEntities())
                {
                    db.deletesubj(SubjectID);

                }
                fillsubject();
            }
        }
    }
}