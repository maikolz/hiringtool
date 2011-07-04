using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HRHiringTool.DataAccess.Classes
{
    class CandidateData
    {
        HRHiringTool.DataAccess.Model.HRHiringToolContainer objectContext = new HRHiringTool.DataAccess.Model.HRHiringToolContainer();

        public IList<CandidateData> getCandidateData( long openingId )
        {
            IList<CandidateData> returnValue = new List<CandidateData>();
            // objectContext.Candidate.Select(); ADD LINQ query that obtains candidate data for the opening Id
            return returnValue;
        }
    }
}
