using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExaminationSystem.Userside
{
    public partial class QuestionPaper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (OnlineExaminationSystemEntities db = new OnlineExaminationSystemEntities())
            {
                if (Session["userID"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                if (IsPostBack)
                    return;
                if (Request.QueryString["stid"] != null)
                {

                    int sbjId = Convert.ToInt32(Request.QueryString["Stid"]);
                    var q = db.QuestionPaper(sbjId).ToList();
                    rv.DataSource = q;
                    rv.DataBind();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int correct_answer = 0;

            foreach (RepeaterItem ri in rv.Items)
            {

                RadioButton rb1 = (RadioButton)ri.FindControl("rdopt1");
                Label rightAns = (Label)ri.FindControl("lblcorrectAns");


                if (rb1.Checked == true)
                {
                    if (rb1.Text.Equals(rightAns.Text))
                    {
                        Label userselectedanswer = (Label)ri.FindControl("LblUserSelected");
                        userselectedanswer.Text = "The selected answer is <b>" + rb1.Text.ToString() + "</br> is correct";
                        userselectedanswer.ForeColor = System.Drawing.Color.Green;
                        correct_answer = correct_answer + 1;
                    }
                    else
                    {
                        Label wrongAns = (Label)ri.FindControl("LblUserSelected");
                        wrongAns.Text = "The selected answer is <b>" + rb1.Text.ToString() + "</br> is Wrong! ";
                        wrongAns.ForeColor = System.Drawing.Color.Red;
                    }
                }


            }
            //////

            /*foreach (RepeaterItem ri in rv.Items)
            {   
                RadioButton rb1 = (RadioButton)ri.FindControl("rdopt1");
                Label rightAns = (Label)ri.FindControl("lblcorrectAns");
                //Response.Write(rb1.Checked);

                

                if (rb1.Checked == true)
                {
                    if (rb1.Text.Equals(rightAns.Text))
                    {
                        Label userselectedanswer = (Label)ri.FindControl("LblUserSelected");
                        userselectedanswer.Text = "The selected answer is <b>" + rb1.Text.ToString() + "</br> is correct";
                        userselectedanswer.ForeColor = System.Drawing.Color.Green;

                    }
                    else
                    {
                        Label wrongAns = (Label)ri.FindControl("LblUserSelected");
                        wrongAns.Text = "The selected answer is <b>" + rb1.Text.ToString() + "</br> is Wrong! ";
                        wrongAns.ForeColor = System.Drawing.Color.Red;
                    }
                }
                
            }*/

            foreach (RepeaterItem ri in rv.Items)
            {

                RadioButton rb2 = (RadioButton)ri.FindControl("rdopt2");
                Label rightAns = (Label)ri.FindControl("lblcorrectAns");


                if (rb2.Checked == true)
                {
                    if (rb2.Text.Equals(rightAns.Text))
                    {
                        Label userselectedanswer = (Label)ri.FindControl("LblUserSelected");
                        userselectedanswer.Text = "The selected answer is <b>" + rb2.Text.ToString() + "</br> is correct";
                        userselectedanswer.ForeColor = System.Drawing.Color.Green;
                        correct_answer = correct_answer + 1;
                    }
                    else
                    {
                        Label wrongAns = (Label)ri.FindControl("LblUserSelected");
                        wrongAns.Text = "The selected answer is <b>" + rb2.Text.ToString() + "</br> is Wrong! ";
                        wrongAns.ForeColor = System.Drawing.Color.Red;
                    }
                }


            }

            foreach (RepeaterItem ri in rv.Items)
            {
                RadioButton rb3 = (RadioButton)ri.FindControl("rdopt3");
                Label rightAns = (Label)ri.FindControl("lblcorrectAns");
                if (rb3.Checked == true)
                {

                    if (rb3.Text.Equals(rightAns.Text))
                    {
                        Label userselectedanswer = (Label)ri.FindControl("LblUserSelected");
                        userselectedanswer.Text = "The selected answer is <b>" + rb3.Text.ToString() + "</br> is correct";
                        userselectedanswer.ForeColor = System.Drawing.Color.Green;
                        correct_answer = correct_answer + 1;
                    }
                    else
                    {
                        Label wrongAns = (Label)ri.FindControl("LblUserSelected");
                        wrongAns.Text = "The selected answer is <b>" + rb3.Text.ToString() + "</br> is Wrong! ";
                        wrongAns.ForeColor = System.Drawing.Color.Red;
                    }
                }


            }

            foreach (RepeaterItem ri in rv.Items)
            {
                RadioButton rb4 = (RadioButton)ri.FindControl("rdopt4");
                Label rightAns = (Label)ri.FindControl("lblcorrectAns");
                if (rb4.Checked == true)
                {

                    if (rb4.Text.Equals(rightAns.Text))
                    {
                        Label userselectedanswer = (Label)ri.FindControl("LblUserSelected");
                        userselectedanswer.Text = "The selected answer <b>" + rb4.Text.ToString() + "</br> is correct";
                        userselectedanswer.ForeColor = System.Drawing.Color.Green;
                        correct_answer = correct_answer + 1;
                    }
                    else
                    {
                        Label wrongAns = (Label)ri.FindControl("LblUserSelected");
                        wrongAns.Text = "The selected answer is <b>" + rb4.Text.ToString() + "</br> is Wrong! ";
                        wrongAns.ForeColor = System.Drawing.Color.Red;
                    }
                }

            }
            lblscore.Text = Convert.ToString(correct_answer);
            Session["Value"] = correct_answer;
            Session["Date"] = DateTime.Now.ToString();
            Response.Redirect("Result.aspx");
            //   Response.Redirect("Result.aspx?id=lblscore");


        }

        protected void btnResult_Click(object sender, EventArgs e)
        {

        }
    }
}

