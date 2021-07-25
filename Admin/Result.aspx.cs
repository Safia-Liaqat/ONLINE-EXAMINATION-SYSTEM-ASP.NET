using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem.Admin
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
                var Result = db.getResult().ToList();
                gv.DataSource = Result; 
                gv.DataBind();
            }
        }
    }
}