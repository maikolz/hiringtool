<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="HRHiringTool.Models" %>
<%@ Register TagPrefix="user" TagName="awareness" Src="~/Views/Shared/UserAwareness.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Opening
</asp:Content>

<asp:Content ID="leftRail" ContentPlaceHolderID="LeftRail" runat="server">
    <span style="font-weight: bold;">HR View</span> <a style="margin-left: 1em" href="">
        <img alt="" src="../../Images/Home.jpg" style="width: 23px; height: 26px" />Home</a> <span style="font-weight: bold; margin-top: 10px">Menu</span>
        <a href="">
            <img alt="Candidates" src="../../Images/Candidates.jpg" /> Candidates</a>
        <a href="">
            <img alt="Positions" src="../../Images/positions.jpg" /> Positions</a>
        <a href="/Opening/">
        <img alt="Opening" src="../../Images/openning.jpg" style="width: 23px; height: 22px" /> Openings
        </a>
        <br />
    <%Html.RenderPartial("~/Views/Opening/ActiveOpenings.ascx"); %>
    <br />
    <user:awareness runat="server" />
    <br />
    <a href="">
        <img alt="Skills" src="../../Images/skills.jpg" style="height: 42px; width: 38px" /> 
    Skills &amp; Categories</a> 
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Opening
        <img alt="" src="../../Images/openning.jpg" style="width: 29px; height: 22px" /></h2>
    
    <div align="left">
        <%Html.RenderPartial("~/Views/Opening/OpeningDetails.ascx"); %>
    </div>
    <br />
    <div align="left">
        <%Html.RenderPartial("~/Views/Opening/OpeningCandidatesList.ascx"); %>
    </div>    
    <br />
    <div align="left">
        <%Html.RenderPartial("~/Views/Opening/OpeningNewsFeedSection.ascx"); %>
    </div>
    
    

</asp:Content>