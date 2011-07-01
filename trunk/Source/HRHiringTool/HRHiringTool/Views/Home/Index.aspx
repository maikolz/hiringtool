<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="title" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>
<asp:Content ID="leftRail" ContentPlaceHolderID="LeftRail" runat="server">
    <span style="font-weight: bold;">HR View</span> <a style="margin-left: 2em" href="">
        Home</a> <span style="font-weight: bold; margin-top: 10px">Menu</span>
    <ul>
        <li><a href="">Candidates</a></li>
        <li><a href="">Positions</a></li>
        <li><a href="">Openings</a></li>
    </ul>
    <%Html.RenderPartial("~/Views/Opening/ActiveOpenings.ascx", new HRHiringTool.Models.OpeningModel {BodyNav=true}); %>
</asp:Content>
<asp:Content ID="main" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Welcome to the HR Hiring Tool</h2>
    <div style="margin-left: 4em;margin-top:2em;">
        <%Html.RenderPartial("~/Views/Opening/ActiveOpenings.ascx"); %>
    </div>
    <div >
        <%Html.RenderPartial("~/Views/Opening/OpeningDetails.ascx"); %>    
    </div>

</asp:Content>
