using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem.Userside
{
    public partial class UserSide : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userID"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}