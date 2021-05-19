using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class DeclarClass
    {
        public int P_ID { get; set; }
        public string Dec_Place { get; set; }
        public DateTime Dec_Date { get; set; }
        public byte[] Dec_App_Photo { get; set; }
        public byte[] Dec_App_Sign { get; set; }
    }
}