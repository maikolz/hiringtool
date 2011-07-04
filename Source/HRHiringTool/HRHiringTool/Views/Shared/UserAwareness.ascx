<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserAwareness.ascx.cs" Inherits="HRHiringTool.Views.Shared.WebUserControl1" %>
<div>
<%foreach (HRHiringTool.Classes.User item in UserAwareness.Values)
  {%>
  <span><%=item.Timestamp%><%= item.Username%><%= item.CurrentUrl%></span>
      <%
  } %>
</div>