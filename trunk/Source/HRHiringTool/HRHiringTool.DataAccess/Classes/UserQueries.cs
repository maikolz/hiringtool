using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HRHiringTool.DataAccess.Model;

namespace HRHiringTool.DataAccess.Classes
{
    public class UserQueries
    {
        public static User GetUserId(string username)
        {
            using (var HRHiringToolContext = new HRHiringToolContainer())
            {
                var iduser = from user in HRHiringToolContext.User
                                    where user.username == username                                    
                                    select user;
                return iduser.FirstOrDefault();
            }
        }
    }
}
