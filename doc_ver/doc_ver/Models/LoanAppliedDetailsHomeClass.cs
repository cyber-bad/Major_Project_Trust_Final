using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class LoanAppliedDetailsHomeClass
    {
        public int P_ID { get; set; }
        public string Home_ID { get; set; }
        public decimal Home_Amount { get; set; }
        public decimal Home_Rate { get; set; }
        public int Home_Tenure { get; set; }
        public decimal Home_Emi { get; set; }
        public decimal Home_Last_Emi { get; set; }
        public decimal Home_Interest { get; set; }
    }
}