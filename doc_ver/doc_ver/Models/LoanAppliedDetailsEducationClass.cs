using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class LoanAppliedDetailsEducationClass
    {
        public int P_ID { get; set; }
        public string Edu_ID { get; set; }
        public decimal Edu_Amount { get; set; }
        public decimal Edu_Rate { get; set; }
        public int Edu_Tenure { get; set; }
        public decimal Edu_Emi { get; set; }
        public decimal Edu_Last_Emi { get; set; }
        public decimal Edu_Interest { get; set; }
    }
}