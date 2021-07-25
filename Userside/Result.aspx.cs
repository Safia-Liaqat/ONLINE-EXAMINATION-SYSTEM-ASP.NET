using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem.Userside
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userID"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }

            //score.Text = Request.QueryString["id"].ToString();
            score.Text = Session["value"].ToString();
            //  lbluserfirstname.Text = Session["userFirstName"].ToString();
            // lbllastname.Text = Session["userLastName"].ToString();
            lblusername.Text= String.Concat(this.Session["userFirstName"].ToString() , this.Session["userLastName"].ToString());
            lblsubjectname.Text = Session["SubjectName"].ToString();
            Lbldate.Text = Session["Date"].ToString();
          
            using(OnlineExaminationSystemEntities db=new OnlineExaminationSystemEntities())
            {
                tblfinalResult r = new tblfinalResult();
                r.SubjctName = Session["SubjectName"].ToString();
                r.UserFirstName = Session["userFirstName"].ToString();
                r.UserLastName = this.Session["userLastName"].ToString();
                r.Score = Convert.ToInt32(Session["value"]);
                r.Date= Convert.ToDateTime(Session["Date"]);
                db.tblfinalResults.Add(r);
                db.SaveChanges();
            } 
        }
      
    }
}