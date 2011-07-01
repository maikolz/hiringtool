<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<HRHiringTool.Models.MessagesModel>" %>
<div id="updates-text" style="border: 1px solid rgb(51, 51, 51); margin-top: 30px; margin-right: 30px; height: 150px; overflow: auto;">
    <div style="margin: 0 15px">
        <%foreach (var message in Model.Messages)
          {%>
        <div style="margin: 5px 0;">
            <span style="font-weight:bold;">[<%=message.Timestamp%>] </span><span  style="font-weight:bold;">
                <%=message.Username %>
                : </span><span>
                    <%=message.Type %>
                </span><span>
                    <%=message.Notes  %>
                </span>
        </div>
        <%} %>
    </div>
</div>
