<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<HRHiringTool.Models.OpeningModel>" %>
<div id="active-openings">
<span style="font-weight: bold;">Active Openings</span>
<span style="margin-top: 10px">IS Pool</span>
<%var rss = string.Empty;
    if (Model!=null)
       rss = Model.BodyNav ? "opening-rss":"rr";%>
<ul>
<li><a href="">QA(2)</a><a class="<%=rss %>" href=""></a></li>
<li><a href="">Project Manager(1)</a><a class="<%=rss %>" href=""></a></li>
<li><a href="">Tech Lead(1)</a><a class="<%=rss %>" href=""></a></li>
</ul>
<span>Whirlpool</span>
<ul>
<li><a href="">QA(1)</a><a class="<%=rss %>" href=""></a></li>
<li><a href="">.Net Developer(3)</a><a class="<%=rss %>" href=""></a></li>
</ul>
</div>

