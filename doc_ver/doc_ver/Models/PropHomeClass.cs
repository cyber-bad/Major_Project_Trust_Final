using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class PropHomeClass
    {
        public int P_ID { get; set; }
        public string Pr_Loan_For { get; set; }
        public decimal Pr_Amount { get; set; }
        public int Pr_Terms { get; set; }
        public string Pr_Loan_Purpose { get; set; }
        public string Pr_Loan_Prod_Categ { get; set; }
        public string Pr_Repay_Mode { get; set; }
    }
}