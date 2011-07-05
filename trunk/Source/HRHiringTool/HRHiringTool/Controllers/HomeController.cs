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
        
        public const string Awareness = "awareness";
        public Hashtable UserAwareness
        {
            get
            {
                if (HttpContext.Application[Awareness] != null)
                    return (Hashtable)this.HttpContext.Application[Awareness];
                return new Hashtable();
            }
            set
            {
                HttpContext.Application.Lock();
                HttpContext.Application[Awareness] = value;
                HttpContext.Application.UnLock();
            }
        }
        public ActionResult Index()
        {
            
            Session["currenturl"] = Request.Url.ToString();
            if (User.Identity.IsAuthenticated)
                Session["username"] = User.Identity.Name;
            else
                Session["username"] = "Guest_" + Session.SessionID;
            Session["sessionId"] = Session.SessionID;
            UpdateHash();
            return View();
        }

        public  ActionResult UpdateUsers()
        {
            UpdateHash();
            return View("UserAwareness");
        }
        private void UpdateHash()
        {
            if (UserAwareness != null)
            {
                User user;
                if (UserAwareness.ContainsKey(Session.SessionID))
                {
                    user = (User)UserAwareness[Session.SessionID];
                }
                else
                {
                    user = new User();
                }
                user.Username = (string)Session["username"];
                user.CurrentUrl = (string)Session["currenturl"];
                user.Timestamp = DateTime.Now;
                UserAwareness[Session.SessionID] = user;
            }
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
