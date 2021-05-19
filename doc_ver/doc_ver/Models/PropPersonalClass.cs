using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class PropPersonalClass
    {
        public int P_ID { get; set; }
        public decimal Ppr_Amount { get; set; }
        public int Ppr_Terms { get; set; }
        public decimal Ppr_Proces_Fee { get; set; }
        public decimal Ppr_Roi { get; set; }
        public string Ppr_Repayt_Mode { get; set; }
    }
}