using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem.Admin
{
    public partial class AdminCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getCategory();
        }
        protected void getCategory()
        {
            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
                var category = db.getClass().ToList();
                GV.DataSource = category;
                GV.DataBind();
            }
        }

        protected void GV_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
       
        }

        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="edit")
            {
                Response.Redirect("AddCategory.aspx?classID=" + e.CommandArgument);
            }
            else if(e.CommandName=="Delete")
                    {
                int ClassID = Convert.ToInt32(e.CommandArgument);
                using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
                {
                    db.removeClass(ClassID);
                }
                getCategory();

            }
          
        }

        protected void lnkAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCategory.aspx");
            }
    }
}