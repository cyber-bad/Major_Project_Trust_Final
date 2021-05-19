using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class NriClass
    {
        public int P_ID { get; set; }
        public string Nri_Country_Name { get; set; }
        public int Nri_Country_Code { get; set; }
        public string Nri_Tax_Resid { get; set; }
        public string Nri_Jurid_Resid { get; set; }
        public string Nri_Tin { get; set; }
        public string Nri_Birth_Country { get; set; }
        public string Nri_Birth_City { get; set; }
        public string Nri_Jur_Addr { get; set; }
        public string Nri_City { get; set; }
        public string Nri_State { get; set; }
        public int Nri_Zip_Post_Code { get; set; }
        public int Nri_Iso { get; set; }
    }
}