<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="HRHiringTool.Classes" %>
<div id="user-awareness">
    <%
        Object users;
        Application.Lock();
        users = ((Hashtable)Application["awareness"]).Clone();
        Application.UnLock();
        foreach (var user in ((Hashtable)users).Values)
        {%>
    <%if (((User)user).Timestamp.AddSeconds(5) < DateTime.Now)
      {%>
       User offline: <%=((User)user).Username %>   
      <%}
      else
      {%>
    <span>
        <%=((User)user).Timestamp%>:
        <%=((User)user).Username%>
        :
        <%=((User)user).CurrentUrl%></span>
    <% 
        }
        } %>
</div>

<script type="text/javascript" language="javascript">


    function UpdateUsers() {
        $.ajax({
            type: 'POST',
            url: '<%= Url.Action("UpdateUsers", "Home") %>',
            data: {},
            success: function(response) {
                /*assign retrieved data*/
                $('#user-awareness').html(response);
            }
        });
    }

    function timer() {
        UpdateUsers();
        setTimeout('timer', 1000);
    }

    $(document).ready(function() {
        timer();
    });
</script>

