using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRHiringTool.Classes
{
    public class OpeningNote
    {
        public string Note { get; set; }
        public long IdJobOpening { get; set; }
        public long IdUser { get; set; }
        public string UserName { get; set; }
        public DateTime Timestamp { get; set; }
    }
}
