using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRHiringTool.Classes
{
    public class User
    {
        public string Username { get; set; }
        public string CurrentUrl { get; set; }
        public string SessionId { get; set; }
        public DateTime Timestamp { get; set; }


    }
}
