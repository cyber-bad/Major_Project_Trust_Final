using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class HomeDetailsClass
    {
        public int P_ID { get; set; }
        public string Prop_Type { get; set; }
        public string Prop_Trans_Type { get; set; }
        public string Prop_Builder_Name { get; set; }
        public string Prop_Project_Name { get; set; }
        public string Prop_Building_Name { get; set; }
        public decimal Prop_Land_Area { get; set; }
        public decimal Prop_Cost { get; set; }
        public string Prop_Addr { get; set; }
        public string Prop_Landmark { get; set; }
        public int Prop_Pin { get; set; }
        public string Prop_City { get; set; }
        public string Prop_State { get; set; }
        public string Prop_Country { get; set; }
        public string Prop_Ownership { get; set; }
        public string Prop_Seller_Name { get; set; }
        public string Prop_Seller_Addr { get; set; }
        public string Prop_Const_Stage { get; set; }
        public decimal Prop_Pur_Con_Cost { get; set; }
        public decimal Prop_Reg_Cost { get; set; }
        public decimal Prop_Total_Cost { get; set; }
        public decimal Prop_Stamp_Cost { get; set; }
        public decimal Prop_Other_Cost { get; set; }
        public decimal Prop_Own_Contrib { get; set; }
    }
}