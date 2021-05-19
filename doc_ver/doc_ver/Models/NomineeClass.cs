using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class NomineeClass
    {
        public int P_ID { get; set; }
        public string Nom_App_Name { get; set; }
        public string Nom_App_Addr { get; set; }
        public string Nom_Name { get; set; }
        public string Nom_Addr { get; set; }
        public string Nom_Relation { get; set; }
        public int Nom_Age { get; set; }
        public DateTime Nom_Dob { get; set; }
        public string Nom_Guar_Name { get; set; }
        public int Nom_Guar_Age { get; set; }
        public string Nom_Guar_Addr { get; set; }
    }
}