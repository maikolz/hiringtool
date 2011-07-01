using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HRHiringTool.Classes;

namespace HRHiringTool.Models
{
    public class MessagesModel
    {
        public IList<Message> Messages { get; set; }
        private DateTime LastUpdatedTs { get; set; }

        public IList<Message> GetMessages()
        {
            var result = new List<Message>
                             {
                                 new Message
                                     {
                                         Timestamp = DateTime.Now,
                                         Type = "Position",
                                         Username = "mzumbado",
                                         Notes = "Technical Writer Senior added"
                                     },
                                 new Message
                                     {
                                         Timestamp = DateTime.Now.AddSeconds(1),
                                         Type = "Opening",
                                         Username = "julate",
                                         Notes = "Razorfish - .Net Developer Junior modified"
                                     },
                                 new Message
                                     {
                                         Timestamp = DateTime.Now.AddSeconds(2),
                                         Type = "Opening",
                                         Username = "mzumbado",
                                         Notes = "Razorfish - .Net Developer Senior added"
                                     },
                                 new Message
                                     {
                                         Timestamp = DateTime.Now.AddSeconds(3),
                                         Type = "Opening",
                                         Username = "rmatarrita",
                                         Notes = "IS POOL - Creative engineer added"
                                     },
                                      new Message
                                     {
                                         Timestamp = DateTime.Now.AddSeconds(3),
                                         Type = "Opening",
                                         Username = "rmatarrita",
                                         Notes = "IS POOL - Creative engineer added"
                                     },
                                      new Message
                                     {
                                         Timestamp = DateTime.Now.AddSeconds(3),
                                         Type = "Opening",
                                         Username = "rmatarrita",
                                         Notes = "IS POOL - Creative engineer added"
                                     },
                                      new Message
                                     {
                                         Timestamp = DateTime.Now.AddSeconds(3),
                                         Type = "Opening",
                                         Username = "rmatarrita",
                                         Notes = "IS POOL - Creative engineer added"
                                     },
                                      new Message
                                     {
                                         Timestamp = DateTime.Now.AddSeconds(3),
                                         Type = "Opening",
                                         Username = "rmatarrita",
                                         Notes = "IS POOL - Creative engineer added"
                                     }
                             };
            return result;
        }

       
    }
}
