using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class FinancialClass
    {
        public int P_ID { get; set; }
        public string Fin_Status { get; set; }
        public decimal Fin_Inc_Gross { get; set; }
        public decimal Fin_Inc_Net { get; set; }
        public decimal Fin_Inc_Othr { get; set; }
        public decimal Fin_Inc_Total { get; set; }
        public string Fin_Bank1_Name { get; set; }
        public string Fin_Bank1_Branch { get; set; }
        public string Fin_Bank1_Ac_Type { get; set; }
        public string Fin_Bank1_Ac_No { get; set; }
        public string Fin_Bank2_Name { get; set; }
        public string Fin_Bank2_Branch { get; set; }
        public string Fin_Bank2_Ac_Type { get; set; }
        public string Fin_Bank2_Ac_No { get; set; }
        public decimal Fin_Deposits_Inv { get; set; }
        public decimal Fin_Shares_Inv { get; set; }
        public decimal Fin_Insurance_Inv { get; set; }
        public decimal Fin_Mutual_Funds_Inv { get; set; }
        public decimal Fin_Others_Inv { get; set; }
        public decimal Fin_Total_Inv { get; set; }
    }
}