using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class LoanAppliedDetailsPersonalClass
    {
        public int P_ID { get; set; }
        public string Per_ID { get; set; }
        public decimal Per_Amount { get; set; }
        public decimal Per_Rate { get; set; }
        public int Per_Tenure { get; set; }
        public decimal Per_Emi { get; set; }
        public decimal Per_Last_Emi { get; set; }
        public decimal Per_Interest { get; set; }
    }
}