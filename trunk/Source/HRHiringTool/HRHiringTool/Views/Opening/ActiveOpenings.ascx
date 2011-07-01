<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<HRHiringTool.Models.OpeningModel>" %>
<div id="active-openings">
<span style="font-weight: bold;">Active Openings</span>
<span style="margin-top: 10px">IS Pool</span>
<%var rss = string.Empty;
    if (Model!=null)
       rss = Model.BodyNav ? "opening-rss":"";%>
<ul>
<li><a class="<%=rss %>" href="">QA(2)</a></li>
<li><a class="<%=rss %>" href="">Project Manager(1)</a></li>
<li><a class="<%=rss %>" href="">Tech Lead(1)</a></li>
</ul>
<span>Whirlpool</span>
<ul>
<li><a class="<%=rss %>" href="">QA(1)</a></li>
<li><a class="<%=rss %>" href="">.Net Developer(3)</a></li>
</ul>
</div>

