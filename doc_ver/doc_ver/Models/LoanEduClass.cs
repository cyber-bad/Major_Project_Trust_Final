using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class LoanEduClass
    {
        public int P_ID { get; set; }
        public decimal Edu_Tut_Fees { get; set; }
        public decimal Edu_Living_Expen { get; set; }
        public decimal Edu_Travel_Expen { get; set; }
        public decimal Edu_Other_Expen { get; set; }
        public decimal Edu_Total_Expen { get; set; }
        public decimal Edu_Own_Inc { get; set; }
        public decimal Edu_Scholar_Inc { get; set; }
        public decimal Edu_Other_Inc { get; set; }
        public decimal Edu_Loan_Required { get; set; }
        public string Edu_Disburs_Details { get; set; }
        public string Edu_Mode { get; set; }
        public string Edu_Dd_In_Favour_Of { get; set; }
        public string Edu_Payable_At_For { get; set; }
        public decimal Edu_DD_Amount { get; set; }
        public string Edu_Tt_Swift_Code { get; set; }
        public string Edu_Rtgs_Neft { get; set; }
        public string Edu_University_Ac { get; set; }
    }
}