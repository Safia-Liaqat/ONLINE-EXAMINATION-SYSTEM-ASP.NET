using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem.Admin
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Cookies["OnlineExaminationSystem"].Expires = DateTime.Now.AddMinutes(-1);
            Response.Redirect("../login.aspx");
        }
    }
}