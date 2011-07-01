using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRHiringTool.Classes
{
    public class Message
    {
        public DateTime Timestamp { get; set; }
        public string Username { get; set; }
        public string Type { get; set; }
        public string Notes { get; set; }
    }
}
