using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HRHiringTool.Classes;

namespace HRHiringTool.Controllers
{
    public class OpeningController : Controller
    {
        public const string NewsFeedConstant = "newsfeed";
        public Hashtable NewsFeed
        {
            get
            {
                if (HttpContext.Application[NewsFeedConstant] != null)
                {
                    return (Hashtable)HttpContext.Application[NewsFeedConstant];
                }
                return new Hashtable();
            }
            set
            {
                HttpContext.Application.Lock();
                HttpContext.Application[NewsFeedConstant] = value;
                HttpContext.Application.UnLock();
            }
        }

        private void UpdateHash(string note)
        {
            if (NewsFeed != null)
            {
                OpeningNote entry = new OpeningNote();
                entry.Note = note;
                entry.IdJobOpening = 1;
                entry.IdUser = 99;
                entry.Timestamp = DateTime.Now;
                entry.UserName = (string)Session["username"];
                int size = NewsFeed.Count;
                NewsFeed[size] = entry;
            }
        }

        public ActionResult UpdateNewsFeed(string entry)
        {
            UpdateHash(entry);
            return View("OpeningConversationHistory");
        }

        //
        // GET: /Opening/

        public ActionResult Index()
        {
            //NewsFeedConstant
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
