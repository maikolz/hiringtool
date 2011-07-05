using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HRHiringTool.Classes;
using HRHiringTool.DataAccess.Classes;
using HRHiringTool.DataAccess.Model;

namespace HRHiringTool.Controllers
{
    public class OpeningController : Controller
    {
        public const string NewsFeedConstant = "newsfeed";
        public ArrayList NewsFeed
        {
            get
            {
                if (HttpContext.Application[NewsFeedConstant] != null)
                {
                    return (ArrayList)HttpContext.Application[NewsFeedConstant];
                }
                return new ArrayList();
            }
            set
            {
                HttpContext.Application.Lock();
                HttpContext.Application[NewsFeedConstant] = value;
                HttpContext.Application.UnLock();
            }
        }

        private void UpdateMemoryList(string note)
        {
            if (NewsFeed != null)
            {
                OpeningNote entry = new OpeningNote();
                entry.Note = note;
                entry.IdJobOpening = 1;
                entry.IdUser = 99;
                entry.Timestamp = DateTime.Now;
                entry.UserName = (string)Session["username"];
                NewsFeed.Add(entry);
            }
        }

        private void UpdateListFromDatabase()
        {
            if (NewsFeed != null)
            {   
                NewsFeed.Clear();
                OpeningRepository openingRepository = new OpeningRepository();
                IOrderedQueryable<OpeningNotes> notes = openingRepository.GetNotes(1) as IOrderedQueryable<OpeningNotes>;
                foreach (OpeningNotes openingNotes in notes)
                {
                    OpeningNote entry = new OpeningNote();
                    entry.Note = openingNotes.Note;
                    entry.IdJobOpening = openingNotes.JobOpening.ID_Opening;
                    entry.IdUser = openingNotes.User.ID_User;
                    entry.Timestamp = (DateTime)openingNotes.DateTime;
                    entry.UserName = openingNotes.User.username;
                    NewsFeed.Add(entry);
                }
            }
        }

        public ActionResult UpdateNewsFeed(string entry)
        {
            OpeningRepository openingRepository = new OpeningRepository();
            openingRepository.CreateOpeningNote(1, entry, DateTime.Now, (DataAccess.Model.User)Session["id_user"]);
            UpdateMemoryList(entry);
            //UpdateListFromDatabase();
            return View("OpeningConversationHistory");
        }

        //
        // GET: /Opening/

        public ActionResult Index()
        {
            //NewsFeedConstant
            //UpdateListFromDatabase();
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
