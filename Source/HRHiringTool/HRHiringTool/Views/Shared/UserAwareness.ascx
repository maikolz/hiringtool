<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="HRHiringTool.Classes" %>
<div id="user-awareness">
    <%
        Object users;
        Application.Lock();
        users = ((Hashtable)Application["awareness"]).Clone();
        Application.UnLock();
        var me = (User)((Hashtable)users)[Session.SessionID];
    %>
    <span style="background-image: url('../../Images/online.gif');float:left;width:10px;height:10px;margin-right:5px;margin-top:2px"></span><span>Me:
        <%=me.CurrentUrl.Substring(me.CurrentUrl.LastIndexOf("/")) == "/" ? "Home" : me.CurrentUrl.Substring(me.CurrentUrl.LastIndexOf("/")).TrimStart('/')%>
    </span>
    <%
        foreach (var user in ((Hashtable)users).Values)
        {
            if (((User)user).Username == null || ((User)user).SessionId == Session.SessionID)
                continue;
            if (((User)user).Timestamp.AddMinutes(10) < DateTime.Now)
                continue;
            if (((User)user).Timestamp.AddSeconds(5) < DateTime.Now)
            {%>
    <span style="background-image: url('../../Images/offline.png');float:left;width:10px;height:10px;margin-right:5px;margin-top:2px"></span><span>
        <%=((User)user).Username.Length > 10 ? ((User)user).Username.Substring(0, 10):((User)user).Username %>
    </span>
    <%}
            else
            {%>
    <span style="background-image: url('../../Images/online.gif');float:left;width:10px;height:10px;margin-right:5px;margin-top:2px"></span><span>
        <%=((User)user).Username.Length > 10 ? ((User)user).Username.Substring(0, 10):((User)user).Username %>
        :
        <%=((User)user).CurrentUrl.Substring(((User)user).CurrentUrl.LastIndexOf("/")) == "/" ? "Home" : ((User)user).CurrentUrl.Substring(((User)user).CurrentUrl.LastIndexOf("/")).TrimStart('/')%></span>
    <% 
        }
        } %>
</div>

<script type="text/javascript" language="javascript">


    function UpdateUsers() {
        $.ajax({
            type: 'POST',
            url: '<%= Url.Action("UpdateUsers", "Home") %>',
            data: { url: location.href },
            success: function(response) {
                /*assign retrieved data*/
                $('#user-awareness').html(response);
            }
        });
    }

    function timer() {
        UpdateUsers();

    }

    $(document).ready(function() {
        UpdateUsers();
    });
</script>

