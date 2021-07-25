using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Data.SqlClient;
//namespace System.Data.Common;

namespace ExaminationSystem.Userside
{
    public partial class Class : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            using(OnlineExaminationSystemEntities db=new OnlineExaminationSystemEntities())
            {
                var c = db.getClass().ToList();
                rv.DataSource = c;
                rv.DataBind();
                
            }
         
        }
    }

       
    }
