using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HRHiringTool.DataAccess.Model;

namespace HRHiringTool.DataAccess.Classes
{
    class OpeningRepository
    {
        public IQueryable GetNotes(long jobOpening)
        {
            using (var HRHiringToolContext = new HRHiringToolContainer())
            {
                var positionNotes = from notes in HRHiringToolContext.OpeningNotes
                                    where notes.JobOpening.ID_Opening == jobOpening
                                    orderby notes.DateTime descending
                                    select notes;
                return positionNotes;
            }
        }
    }
}
