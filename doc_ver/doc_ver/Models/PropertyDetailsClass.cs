using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class PropertyDetailsClass
    {
        public int P_ID { get; set; }
        public string Ag_Prop_Type { get; set; }
        public string Ag_Prop_Classif { get; set; }
        public int Ag_Building_Age { get; set; }
        public decimal Ag_Market_Value { get; set; }
        public decimal Ag_Regis_Value { get; set; }
        public decimal Ag_Prop_Land_Area { get; set; }
        public decimal Ag_Buildup_Area { get; set; }
        public string Ag_Prop_Addr { get; set; }
        public string Ag_Landmark { get; set; }
        public int Ag_Pin { get; set; }
        public string Ag_City { get; set; }
        public string Ag_State { get; set; }
        public string Ag_Country { get; set; }
        public string Ag_Rev_Mortage { get; set; }
        public decimal Ag_Lumpsum_Amount { get; set; }
        public string Ag_Annuity_Periodicity { get; set; }
    }
}