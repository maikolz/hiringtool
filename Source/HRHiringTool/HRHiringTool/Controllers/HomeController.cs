using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using HRHiringTool.Classes;

namespace HRHiringTool.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
           
            //if (Roles.IsUserInRole(HRConstants.Admin))
                   
            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
