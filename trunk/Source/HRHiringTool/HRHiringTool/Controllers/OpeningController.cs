using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HRHiringTool.DataAccess.Model;

namespace HRHiringTool.Controllers
{
    public class OpeningController : Controller
    {

        //
        // GET: /Opening/

        public ActionResult Index()
        {
            //Awareness
            if (Request.Url != null) Session["currenturl"] = Request.Url;
            if (User.Identity.IsAuthenticated)
                Session["username"] = User.Identity.Name;
            else
                Session["username"] = "Guest_" + Session.SessionID;
            Session["sessionId"] = Session.SessionID;
            //Awareness
            return View();
        }

        //
        // GET: /Opening/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Opening/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Opening/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Opening/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Opening/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Opening/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Opening/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
