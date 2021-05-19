using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class PropGoldClass
    {
        public int P_ID { get; set; }
        public decimal Gpr_Loan_Amount { get; set; }
        public int Gpr_Tenure_Months { get; set; }
        public DateTime Gpr_Payment_Date { get; set; }
        public string Gpr_Int_Pay_Mode { get; set; }
        public string Gpr_Disburs_Mode { get; set; }
    }
}