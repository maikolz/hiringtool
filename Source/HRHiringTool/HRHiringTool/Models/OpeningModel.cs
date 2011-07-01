using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRHiringTool.Models
{
    public class OpeningModel
    {
        public bool BodyNav { get; set; }
        public IList<string> Departments { get; set; }
    }
}
