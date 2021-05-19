using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class LoanAppliedDetailsGoldClass
    {
        public int P_ID { get; set; }
        public string Gold_ID { get; set; }
        public decimal Gold_Amount { get; set; }
        public decimal Gold_Rate { get; set; }
        public int Gold_Tenure { get; set; }
        public decimal Gold_Emi { get; set; }
        public decimal Gold_Last_Emi { get; set; }
        public decimal Gold_Interest { get; set; }
    }
}