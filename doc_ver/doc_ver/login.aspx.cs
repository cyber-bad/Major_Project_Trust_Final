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
using System.Configuration;
using System.Collections.Specialized;
using System.Net.Http;
using doc_ver.Models;

namespace doc_ver
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }

            if (Session["USER_ID"] != null)
            {
                Session.Remove("USER_ID");
                Session.RemoveAll();
            }
        }

        protected void logIn_Click(object sender, EventArgs e)
        {


            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("http://trustyloanapi.somee.com/api/");

                //GET Request
                var responseTask = client.GetAsync("AdminLogin");
                responseTask.Wait();

                var result = responseTask.Result;
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<AdminLoginClass[]>();
                    readTask.Wait();

                    var logindetails = readTask.Result;

                    foreach (var logindetail in logindetails)
                    {
                        if (email.Text == logindetail.Email && Password.Text == logindetail.Password)
                        {
                            Session["USER_ID"] = logindetail.ID;
                            Response.Redirect("dashboard.aspx");
                        }
                    }

                    Label1.Text = "Invalid Credentials";
                    email.Text = "";
                    Password.Text = "";
                }
                else
                {
                    Label1.Text = "Invalid Credentials";
                    email.Text = "";
                    Password.Text = "";
                }
            }


        }
    }
}