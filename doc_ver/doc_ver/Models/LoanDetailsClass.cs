using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class LoanDetailsClass
    {
        public int ID { get; set; }
        public string Personal_Interest_Rate { get; set; }
        public string Personal_Loan_Tenure { get; set; }
        public string Personal_Loan_Amount { get; set; }
        public string Personal_Processing_Fees { get; set; }
        public string Education_Interest_Rate { get; set; }
        public string Education_Loan_Type { get; set; }
        public string Education_Loan_Amount { get; set; }
        public string Education_Concession { get; set; }
        public string Home_InterestRate_1 { get; set; }
        public string Home_InterestRate_2 { get; set; }
        public string Home_InterestRate_3 { get; set; }
        public string Home_Processing_Fees { get; set; }
        public string Gold_Min_Loan { get; set; }
        public string Gold_Max_Loan { get; set; }
        public string Gold_Margin { get; set; }
        public string Gold_Processing_Fees { get; set; }
        public string Clients { get; set; }
        public string Loan_Approved { get; set; }
        public string Hours_Support { get; set; }
        public string Hard_Workers { get; set; }
        public string Trusty_City { get; set; }
        public string Trusty_Mail { get; set; }
        public string Trusty_Phone { get; set; }
        public string Trusty_State { get; set; }
        public string Trusty_Country { get; set; }

    }
}