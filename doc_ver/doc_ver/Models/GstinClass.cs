using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class GstinClass
    {
        public int P_ID { get; set; }
        public string Gst_Reg { get; set; }
        public string Gst_Exem { get; set; }
        public string Gst_Exem_Reason { get; set; }
        public DateTime Gst_Exem_date { get; set; }
        public DateTime Gst_Reg_Date { get; set; }
        public string Gst_Reg_Type { get; set; }
        public string Gst_Eco_Zone { get; set; }
        public string Gst_default { get; set; }
        public string Gstin_Addr { get; set; }
        public int Gst_Pin { get; set; }
        public string Gst_City { get; set; }
        public string Gst_State { get; set; }
        public string Gst_Country { get; set; }
    }
}