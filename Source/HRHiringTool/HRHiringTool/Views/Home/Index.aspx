<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="HRHiringTool.Models" %>
<%@ Register TagPrefix="user" TagName="awareness" Src="~/Views/Shared/UserAwareness.ascx" %>


<asp:Content ID="title" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>
<asp:Content ID="leftRail" ContentPlaceHolderID="LeftRail" runat="server">
    <span style="font-weight: bold;">HR View</span> <a style="margin-left: 1em" href="">
        <img alt="" src="../../Images/Home.jpg" style="width: 23px; height: 26px" />Home</a> <span style="font-weight: bold; margin-top: 10px">Menu</span>
        <a href="">
            <img src="../../Images/Candidates.jpg" /> Candidates</a>
        <a href="">
            <img src="../../Images/positions.jpg" /> Positions</a>
        <a href="/Opening/">
        <img alt="" src="../../Images/openning.jpg" style="width: 23px; height: 22px" /> Openings
        </a>
        <br />

    <%Html.RenderPartial("~/Views/Opening/ActiveOpenings.ascx"); %>
    <br />
    <%Html.RenderPartial("~/Views/Shared/UserAwareness.ascx"); %>
    <br />
    <a href="">
        <img src="../../Images/skills.jpg" style="height: 42px; width: 38px" /> 
    Skills &amp; Categories</a> 
    
</asp:Content>
<asp:Content ID="main" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Welcome to the HR Hiring Tool
    </h2>
    <div style="margin-left: 4em;margin-top:2em;">
        <%Html.RenderPartial("~/Views/Opening/ActiveOpenings.ascx", new HRHiringTool.Models.OpeningModel { BodyNav = true }); %>
    </div>
    <div>
    <%Html.RenderPartial("~/Views/Shared/LatestUpdates.ascx",new MessagesModel{Messages = new MessagesModel().GetMessages()}); %>
    </div>
    

</asp:Content>
