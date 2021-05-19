using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Drawing;
using System.Net;
using System.Collections.Specialized;
using System.Configuration;

namespace doc_ver
{
    public partial class LoanHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["USER_ID"] == null)
            {
                Response.Redirect("login.aspx");

            }

        }

        protected void PersonalLoanBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeLoanList.aspx");
        }

        protected void HomeLoanBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeLoanList.aspx");
        }

        protected void EducationLoanBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EducationLoanList.aspx");
        }

        protected void GoldLoanBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeLoanList.aspx");
        }
    }
}