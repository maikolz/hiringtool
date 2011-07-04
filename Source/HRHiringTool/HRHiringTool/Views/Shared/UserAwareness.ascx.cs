using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HRHiringTool.Classes;
using System.Collections;

namespace HRHiringTool.Views.Shared
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        public const string awareness = "awareness";
        public Hashtable UserAwareness
        {
            get
            {
                if (Application[awareness] != null)
                    return (Hashtable)Application[awareness];
                else
                    return new Hashtable();
            }
            set
            {
                Application[awareness] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateHash();
        }

        private void UpdateHash()
        {
            if (UserAwareness != null)
            {
                User user;
                if (UserAwareness.ContainsKey(Session["username"]))
                {
                    user = (User)UserAwareness[Session["username"]];
                }
                else
                {
                    user = new User();
                }
                user.CurrentUrl = (string)Session["currenturl"];
                user.Timestamp = DateTime.Now;
                UserAwareness[Session["username"]] = user;
            }

        }
    }
}