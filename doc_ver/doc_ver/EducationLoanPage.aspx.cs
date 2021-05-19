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
using System.Net.Mail;

namespace doc_ver
{
    public partial class EducationLoanPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {

                Response.Redirect("login.aspx");

            }
            else
            {

                String PAN_NUM = String.Empty;
                PAN_NUM = Request.QueryString["PanNum"];

                Label1.Text = PAN_NUM;


                String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
                SqlConnection sqlcon = new SqlConnection(constring);

                String squery = "select * from EducationLoan " +
                    " where PAN_NO = '" + Label1.Text + "'";
                SqlCommand cmd = new SqlCommand(squery, sqlcon);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                if (dt.Rows.Count > 0)
                {

                    name.Text = dt.Rows[0]["FULL_NAME"].ToString();
                    fatherName.Text = dt.Rows[0]["FatherName"].ToString();
                    motherName.Text = dt.Rows[0]["MotherName"].ToString();
                    dob.Text = dt.Rows[0][4].ToString();
                    gender.Text = dt.Rows[0][5].ToString();
                    shadi.Text = dt.Rows[0][6].ToString();
                    citizenship.Text = dt.Rows[0][7].ToString();
                    resident.Text = dt.Rows[0][8].ToString();
                    occupation.Text = dt.Rows[0][9].ToString();
                    Number.Text = dt.Rows[0][10].ToString();
                    email.Text = dt.Rows[0][11].ToString();
                    PanNo.Text = Label1.Text;


                    PhotoStatusLabel.Text = "Verified";
                    SignStatusLabel.Text = "Verified";

                    IncomeDocStatusLabel.Text = dt.Rows[0]["IncomeDocStatus"].ToString();
                    AdmissionpDocStatusLabel.Text = dt.Rows[0]["AdmissionDocStatus"].ToString();
                    DemandDocStatusLabel.Text = dt.Rows[0]["DemandDocStatus"].ToString();
                    SscDocStatusLabel.Text = dt.Rows[0]["SscDocStatus"].ToString();
                    HscDocStatusLabel.Text = dt.Rows[0]["HscDocStatus"].ToString();
                    DegreeDocStatusLabel.Text = dt.Rows[0]["DegreeDocStatus"].ToString();

                    IncomeDocName.Text = dt.Rows[0]["IncomeDocName"].ToString();
                    IncomeNum.Text = dt.Rows[0]["IncomeDocNumber"].ToString();
                    IncomeDate.Text = dt.Rows[0]["IncomeIssueDate"].ToString();
                    IncomeAuthority.Text = dt.Rows[0]["IncomeIssueAuthority"].ToString();

                    AdmissionDocName.Text = "College Admission Letter";
                    AdmissionNum.Text = dt.Rows[0]["AdmissionDocNum"].ToString();
                    AdmissionDate.Text = dt.Rows[0]["AdmissionDate"].ToString();

                    DegreeDocName.Text = "College Demand Letter";
                    DemandNum.Text = dt.Rows[0]["DemandDocNum"].ToString();
                    DemandDate.Text = dt.Rows[0]["DemandDocDate"].ToString();
                    DemandCollegeName.Text = dt.Rows[0]["DemandDocCollege"].ToString();

                    SscDocName.Text = "SSC Marksheet";
                    SscMarksheetNum.Text = dt.Rows[0]["SscDocNum"].ToString();
                    SscPercent.Text = dt.Rows[0]["SscPercent"].ToString();
                    SscRollNum.Text = dt.Rows[0]["SscRollNum"].ToString();

                    HscDocName.Text = "HSC Marksheet";
                    HscMarksheetNumber.Text = dt.Rows[0]["HscDocNum"].ToString();
                    HscPercentage.Text = dt.Rows[0]["HscPercent"].ToString();
                    HscRollNum.Text = dt.Rows[0]["HscRollNum"].ToString();

                    DegreeDocName.Text = "Latest Degree";
                    DegreeNum.Text = dt.Rows[0]["DegreeDoc"].ToString();
                    DegreeAutho.Text = dt.Rows[0]["DegreeDocNum"].ToString();


                    Photo.ImageUrl = "~/Images/pho.jpg";
                    Photo_1.ImageUrl = "~/Images/pho.jpg";

                    Sign.ImageUrl = "~/Images/sig.jpg";
                    Sign_1.ImageUrl = "~/Images/sig.jpg";

                    IncomeDoc.ImageUrl = "~/Images/inc.jpg";
                    IncomeDoc_1.ImageUrl = "~/Images/inc.jpg";

                    AdmissionDoc.ImageUrl = "~/Images/adm.jpg";
                    AdmissionDoc_1.ImageUrl = "~/Images/adm.jpg";

                    DemandDoc.ImageUrl = "~/Images/adm.jpg";
                    DemandDoc_1.ImageUrl = "~/Images/adm.jpg";

                    SscDoc.ImageUrl = "~/Images/ssc.jpg";
                    SscDoc_1.ImageUrl = "~/Images/ssc.jpg";

                    HscDoc.ImageUrl = "~/Images/noimage.jpg";
                    HscDoc_1.ImageUrl = "~/Images/noimage.jpg";

                    DegreeDoc.ImageUrl = "~/Images/poly.jpg";
                    DegreeDoc_1.ImageUrl = "~/Images/poly.jpg";




                }
                else
                {



                    name.Text = "";
                    fatherName.Text = "";
                    motherName.Text = "";
                    dob.Text = "";
                    gender.Text = "";
                    shadi.Text = "";
                    citizenship.Text = "";
                    resident.Text = "";
                    occupation.Text = "";

                    Number.Text = "";
                    email.Text = "";


                }

                sqlcon.Close();
                sda.Dispose();

            }


        }

        protected void IncomeDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {

            IncomeDocStatusLabel.Text = IncomeDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE EducationLoan SET IncomeDocStatus='" + IncomeDocStatusLabel.Text + "'" +
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

            String squery = "UPDATE EducationLoan SET IncomeDocStatus='" + IncomeDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void IncomeNotVerify_TextChanged(object sender, EventArgs e)
        {

        }

        protected void AdmissionpDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            AdmissionpDocStatusLabel.Text = AdmissionpDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE EducationLoan SET AdmissionDocStatus='" + AdmissionpDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void AdmissionVerify_Click(object sender, EventArgs e)
        {
            AdmissionpDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE EducationLoan SET AdmissionDocStatus='" + AdmissionpDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void AdmissionNotVerify_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DemandDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            DemandDocStatusLabel.Text = DemandDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE EducationLoan SET DemandDocStatus='" + DemandDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void DemandVerify_Click(object sender, EventArgs e)
        {
            DemandDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE EducationLoan SET DemandDocStatus='" + DemandDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void DemandNotVerify_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SscDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            SscDocStatusLabel.Text = SscDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE EducationLoan SET SscDocStatus='" + SscDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void SscVerify_Click(object sender, EventArgs e)
        {
            SscDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE EducationLoan SET SscDocStatus='" + SscDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void SscNotVerify_TextChanged(object sender, EventArgs e)
        {

        }

        protected void HscDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            HscDocStatusLabel.Text = HscDropDown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE EducationLoan SET HscDocStatus='" + HscDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void HscVerify_Click(object sender, EventArgs e)
        {
            HscDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE EducationLoan SET HscDocStatus='" + HscDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void HscNotVerify_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DegreeDropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            DegreeDocStatusLabel.Text = DegreeDropdown.SelectedValue;

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE EducationLoan SET DegreeDocStatus='" + DegreeDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void DegreeVerify_Click(object sender, EventArgs e)
        {
            DegreeDocStatusLabel.Text = "Verified";

            String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(constring);

            String squery = "UPDATE EducationLoan SET DegreeDocStatus='" + DegreeDocStatusLabel.Text + "'" +
                " where PAN_NO = '" + Label1.Text + "'";

            SqlCommand cmd = new SqlCommand(squery, sqlcon);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
        }

        protected void DegreeNotVerify_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {

            if (IncomeDocStatusLabel.Text == "Verified" && AdmissionpDocStatusLabel.Text == "Verified" && DemandDocStatusLabel.Text == "Verified" && SscDocStatusLabel.Text == "Verified" && HscDocStatusLabel.Text == "Verified")

            {
                OverallStatus.Text = "Verified";



                String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
                SqlConnection sqlcon = new SqlConnection(constring);

                String squery = "UPDATE EducationLoan SET OverAllStatus='" + OverallStatus.Text + "' " +
                    " where PAN_NO = '" + Label1.Text + "'";

                SqlCommand cmd = new SqlCommand(squery, sqlcon);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                var fromAddress = new MailAddress("paulangelina88@gmail.com", "From Trust");
                var toAddress = new MailAddress(email.Text, "To Client");
                const string fromPassword = "Angelinapaul88";
                const string subject = "Home Loan Status";
                const string body = "Hello, Your all Education Loan Documents Verified Successfully ! ";

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

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('All Documents Verified '); window.location = '" + Page.ResolveUrl("~/EducationLoanList.aspx") + "';", true);


            }

            else
            {
                OverallStatus.Text = "Pending";


                String constring = ConfigurationManager.ConnectionStrings["forchashConnectionString"].ConnectionString;
                SqlConnection sqlcon = new SqlConnection(constring);

                String squery = "UPDATE EducationLoan SET OverAllStatus='" + OverallStatus.Text + "' " +
                    " where PAN_NO = '" + Label1.Text + "'";

                SqlCommand cmd = new SqlCommand(squery, sqlcon);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                var fromAddress = new MailAddress("paulangelina88@gmail.com", "From Trust");
                var toAddress = new MailAddress(email.Text, "To Client");
                const string fromPassword = "Angelinapaul88";
                const string subject = "Home Loan Status";
                const string body = "Hello, Your all Education Loan Documents Not Verified Successfully ! ";

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

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('All Documents Not Verified '); window.location = '" + Page.ResolveUrl("~/EducationLoanList.aspx") + "';", true);

            }


        }
    }
}