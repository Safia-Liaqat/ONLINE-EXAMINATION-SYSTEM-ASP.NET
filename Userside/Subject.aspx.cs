using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem.Userside
{
    public partial class Subject : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            using (OnlineExaminationSystemEntities db=new OnlineExaminationSystemEntities())
            {
              
                
                if(Request.QueryString["stid"]!=null)
                {
                 
                    int sbjId = Convert.ToInt32(Request.QueryString["Stid"]);

                    var subj = db.getSbjs(sbjId).ToList();
                    Session["subjectName"] = subj[0].SubjectName;
                    //Response.Write(subj.Count);
                    rv.DataSource = subj;
                    rv.DataBind();
                  
                }
             

               // Session["SubjectName"] = lblsubjctname.Text;
            }

        }

        protected void GVSearch_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}