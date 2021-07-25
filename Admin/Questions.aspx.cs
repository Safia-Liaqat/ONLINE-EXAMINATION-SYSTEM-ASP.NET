using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem.Admin
{
    public partial class Questions1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using(OnlineExaminationSystemEntities db=new OnlineExaminationSystemEntities())
            {
                var questions = db.Questions().ToList();
                GV.DataSource = questions;
                GV.DataBind();
            }
        }

        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GV_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="edit")
            {
                Response.Redirect("QuestionSetUp.aspx?questionID="+e.CommandArgument);
            }
            else if(e.CommandName == "delete")
            {
                int questionID = Convert.ToInt32(e.CommandArgument);
                using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
                {
                    db.deleteQuestion(questionID);
                }
                using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
                {
                    var questions = db.Questions().ToList();
                    GV.DataSource = questions;
                    GV.DataBind();
                }
            }
        }
/*
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if(txtSearch.Text!=null)
            {
                using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
                {
                    var search = db.Searchsubject(txtSearch.Text).ToList();
                    if (search.Count>0)
                    {
                        GVSearch.DataSource = search;
                        GVSearch.DataBind();
                        GVSearch.Visible = true;
                        lblSearch.Visible = false;
                    }
                    else
                    {
                        GVSearch.Visible = false;
                        lblSearch.Visible = true;
                        lblSearch.Text = " The Search Term " + txtSearch.Text + " Not Found";
                    }
                }

                }
        }

*/
    }
}