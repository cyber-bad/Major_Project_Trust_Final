using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace doc_ver.Models
{
    public class LoginDetailsClass
    {
        public int ID { get; set; }
        public string First_Name { get; set; }
        public string Last_Name { get; set; }
        public string Mail { get; set; }
        public string Pan { get; set; }
        public string Pass { get; set; }
        public long Contact { get; set; }
    }
}