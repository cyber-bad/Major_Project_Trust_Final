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
using System.Net.Http;
using doc_ver.Models;

namespace doc_ver
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["USER_ID"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {

                using (var client = new HttpClient())
                {
                    client.BaseAddress = new Uri("http://trustyloanapi.somee.com/api/");

                    var id = Session["USER_ID"].ToString();

                    //GET Request
                    var responseTask = client.GetAsync("AdminLogin/" + id);
                    responseTask.Wait();

                    var result = responseTask.Result;

                    if (result.IsSuccessStatusCode)
                    {
                        var readTask = result.Content.ReadAsAsync<AdminLoginClass>();
                        readTask.Wait();

                        var logindetails = readTask.Result;

                        
                        Label2.Text = logindetails.Name;

                      

                    }

                }
            }
        }

        protected void KycDoc_Click(object sender, EventArgs e)
        {
            Response.Redirect("KycList.aspx");
        }

        protected void LoanDoc_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoanHomePage.aspx");
        }

        protected void SignOut_Click1(object sender, EventArgs e)
        {
            Session["USER_ID"] = null;
            Response.Redirect("login.aspx");
        }
    }
}