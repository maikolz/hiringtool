using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using HRHiringTool.Classes;
using System.Web.UI;
using System.Collections;

namespace HRHiringTool.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            Session["currenturl"] = Request.Url.ToString();
            Session["username"] = User.Identity.Name;
            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
