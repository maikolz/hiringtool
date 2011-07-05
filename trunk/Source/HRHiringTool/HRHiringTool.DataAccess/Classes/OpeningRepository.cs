using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HRHiringTool.DataAccess.Model;

namespace HRHiringTool.DataAccess.Classes
{
    public class OpeningRepository
    {
        public static long noteid = 1;
        public IQueryable GetNotes(long jobOpening)
        {
            using (var HRHiringToolContext = new HRHiringToolContainer())
            {
                var positionNotes = from notes in HRHiringToolContext.OpeningNotes
                                    where notes.JobOpening.ID_Opening == jobOpening
                                    orderby notes.DateTime ascending
                                    select notes;
                return positionNotes;
            }
        }

        public void CreateOpeningNote(int openingId, string text, DateTime timestamp, User userid)
        {
            using (var HRHiringToolContext = new HRHiringToolContainer())
            {                
                OpeningNotes newNote = OpeningNotes.CreateOpeningNotes(noteid++);
                newNote.DateTime = timestamp;
                newNote.Note = text;
                newNote.User = userid;
                HRHiringToolContext.AddToOpeningNotes(newNote);
            }
        }
    }
}
