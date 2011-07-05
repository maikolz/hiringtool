using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRHiringTool.Classes
{
    public class OpeningNote
    {
        public string Note { get; set; }
        public int IdJobOpening { get; set; }
        public int IdUser { get; set; }
        public string UserName { get; set; }
        public DateTime Timestamp { get; set; }
    }
}
