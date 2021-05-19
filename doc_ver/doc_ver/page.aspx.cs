using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace doc_ver
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] == null)
            {

                Label1.Text = "123";

            }
            else
            {

                String PAN_NUM = String.Empty;
                PAN_NUM = Request.QueryString["PAN_NUM"];

                Label1.Text = PAN_NUM;

            }
        }








    }
}