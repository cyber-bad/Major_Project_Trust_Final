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
using System.Net.Mail;

namespace doc_ver
{
    public partial class KycVideoAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["USER_ID"] == null)
            {

                Response.Redirect("login.aspx");

            }
            else
            {

                String PAN_NUM = String.Empty;
                PAN_NUM = Request.QueryString["PAN_NUM"];

                Label1.Text = PAN_NUM;


                String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
                SqlConnection sqlcon = new SqlConnection(constring);

                String squery = "select * from PersonKYC " +
                    " where PAN_NO = '" + Label1.Text + "'";
                SqlCommand cmd = new SqlCommand(squery, sqlcon);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                if (dt.Rows.Count > 0)
                {

                    name.Text = dt.Rows[0]["FULL_NAME"].ToString();
                    motherName.Text = dt.Rows[0][3].ToString();
                    dob.Text = dt.Rows[0][4].ToString();
                    gender.Text = dt.Rows[0][5].ToString();
                    resident.Text = dt.Rows[0][8].ToString();
                    occupation.Text = dt.Rows[0][9].ToString();
                    email.Text = dt.Rows[0]["Email"].ToString();
                    PanNo.Text = Label1.Text;


                    PhotoStatusLabel.Text = dt.Rows[0]["PhotoStatus"].ToString();
                    SignStatusLabel.Text = dt.Rows[0]["SignatureStatus"].ToString();

                    IdentityDocName.Text = dt.Rows[0]["IdentityDocName"].ToString();
                    IdentityNumber.Text = dt.Rows[0]["IdentityDocNumber"].ToString();
                    IdentityDocStatusLabel.Text = dt.Rows[0]["IdentityDocStatus"].ToString();

                    IncomeDocName.Text = dt.Rows[0]["IncomeDocName"].ToString();
                    IncomeNum.Text = dt.Rows[0]["IncomeDocNumber"].ToString();
                    IncomeDate.Text = dt.Rows[0]["IncomeDocDate"].ToString();
                    IncomeDocStatusLabel.Text = dt.Rows[0]["IncomeDocStatus"].ToString();

                    AddressDocName.Text = dt.Rows[0]["AddressDocName"].ToString();
                    AddressNum.Text = dt.Rows[0]["AddressDocNumber"].ToString();
                    AddressAuthority.Text = dt.Rows[0]["AddressDocAuthority"].ToString();
                    AddressDocStatusLabel.Text = dt.Rows[0]["AddressDocStatus"].ToString();



                    Photo.ImageUrl = "~/Images/pho.jpg";
                    Photo_1.ImageUrl = "~/Images/pho.jpg";

                    Sign.ImageUrl = "~/Images/sig.jpg";
                    Sign_1.ImageUrl = "~/Images/sig.jpg";

                    IdentityDoc.ImageUrl = "~/Images/aad.jpg";
                    IdentityDoc_1.ImageUrl = "~/Images/aad.jpg";

                    IncomeDoc.ImageUrl = "~/Images/inc.jpg";
                    IncomeDoc_1.ImageUrl = "~/Images/inc.jpg";

                    AddressDoc.ImageUrl = "~/Images/pan.jpg";
                    AddressDoc_1.ImageUrl = "~/Images/pan.jpg";



                }
                else
                {



                    name.Text = "";
                    motherName.Text = "";
                    dob.Text = "";
                    gender.Text = "";
                    resident.Text = "";
                    occupation.Text = "";
                    email.Text = "";


                }

                sqlcon.Close();
                sda.Dispose();




            }

        }

        protected void PhotoDropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            PhotoStatusLabel.Text = PhotoDropdown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE PersonKYC SET PhotoStatus='" + PhotoStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void PhotoVerified_Click(object sender, EventArgs e)
        {
            PhotoStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE PersonKYC SET PhotoStatus='" + PhotoStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void PhotoNotVerified_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SignDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            SignStatusLabel.Text = SignDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE PersonKYC SET SignatureStatus='" + SignStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void SignVerify_Click(object sender, EventArgs e)
        {
            SignStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE PersonKYC SET SignatureStatus='" + SignStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void SignNotVerify_TextChanged(object sender, EventArgs e)
        {

        }


        protected void IdentityDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            IdentityDocStatusLabel.Text = IdentityDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE PersonKYC SET IdentityDocStatus='" + IdentityDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void IdentityVerify_Click(object sender, EventArgs e)
        {
            IdentityDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE PersonKYC SET IdentityDocStatus='" + IdentityDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void IdentityNotVerify_TextChanged(object sender, EventArgs e)
        {

        }

        protected void IncomeDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            IncomeDocStatusLabel.Text = IncomeDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE PersonKYC SET IncomeDocStatus='" + IncomeDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void IncomeVerify_Click(object sender, EventArgs e)
        {
            IncomeDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE PersonKYC SET IncomeDocStatus='" + IncomeDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void IncomeNotVerify_TextChanged(object sender, EventArgs e)
        {

        }

        protected void AddresstDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            AddressDocStatusLabel.Text = AddresstDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE PersonKYC SET AddressDocStatus='" + AddressDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void AddressVerify_Click(object sender, EventArgs e)
        {
            AddressDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE PersonKYC SET AddressDocStatus='" + AddressDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void AddresstNotVerify_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (PhotoStatusLabel.Text == "Verified" && SignStatusLabel.Text == "Verified" && IdentityDocStatusLabel.Text == "Verified" && IncomeDocStatusLabel.Text == "Verified" && AddressDocStatusLabel.Text == "Verified")

            {
                OverallStatus.Text = "Verified";



                String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
                SqlConnection sqlcon = new SqlConnection(constring);

                String squery = "UPDATE PersonKYC SET OverAllStatus='" + OverallStatus.Text + "', PhotoStatus='" + PhotoStatusLabel.Text + "', SignatureStatus='" + SignStatusLabel.Text + "', IdentityDocStatus='" + IdentityDocStatusLabel.Text + "', IncomeDocStatus='" + IncomeDocStatusLabel.Text + "', AddressDocStatus='" + AddressDocStatusLabel.Text + "' " +
                    " where PAN_NO = '" + Label1.Text + "'";

                SqlCommand cmd = new SqlCommand(squery, sqlcon);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);


                var fromAddress = new MailAddress("paulangelina88@gmail.com", "From Trust");
                var toAddress = new MailAddress(email.Text, "To Client");
                const string fromPassword = "Angelinapaul88";
                const string subject = "KYC Status";
                const string body = "Hello, Your KYC Documents verified Successfully ! ";

                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                    Timeout = 20000
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body
                })
                {
                    smtp.Send(message);
                }


                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('All Documents Verified '); window.location = '" + Page.ResolveUrl("~/KycList.aspx") + "';", true);

            }

            else
            {
                OverallStatus.Text = "Pending";


                String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
                SqlConnection sqlcon = new SqlConnection(constring);

                String squery = "UPDATE PersonKYC SET OverAllStatus='" + OverallStatus.Text + "' " +
                    " where PAN_NO = '" + Label1.Text + "'";

                SqlCommand cmd = new SqlCommand(squery, sqlcon);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);


                var fromAddress = new MailAddress("paulangelina88@gmail.com", "From Trust");
                var toAddress = new MailAddress(email.Text, "To Client");
                const string fromPassword = "Angelinapaul88";
                const string subject = "KYC Status";
                const string body = "Hello, Your all KYC Documents Not Verified Successfully ! ";

                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                    Timeout = 20000
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body
                })
                {
                    smtp.Send(message);
                }

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('All Documents Not Verified'); window.location = '" + Page.ResolveUrl("~/KycList.aspx") + "';", true);


            }
        }

        protected void VideoKyc_Click(object sender, EventArgs e)
        {
            string name = Label1.Text;

            Label1.Text = name;

            Response.Redirect("KycVideoAdmin.aspx?PAN_NUM=" + name);
        }
    }
}