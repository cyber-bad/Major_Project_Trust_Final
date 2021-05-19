using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class EmpGoldClass
    {
        public int P_ID { get; set; }
        public string Ge_Occ_Type { get; set; }
        public string Ge_Org_Type { get; set; }
        public string Ge_Emp_Buss_Name { get; set; }
        public string Ge_Designation { get; set; }
        public int Ge_Curr_Work_Years { get; set; }
        public int Ge_Total_work_Years { get; set; }
        public decimal Ge_Net_Ann_Inc { get; set; }
    }
}