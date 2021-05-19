using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class ForgotPasswordClass
    {
        public int ID { get; set; }
        public int P_ID { get; set; }
        public string U_ID { get; set; }
        public DateTime RequestDateTime { get; set; }
    }
}