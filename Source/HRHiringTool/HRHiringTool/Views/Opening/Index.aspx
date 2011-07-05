<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="HRHiringTool.Models" %>
<%@ Register TagPrefix="user" TagName="awareness" Src="~/Views/Shared/UserAwareness.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Opening
</asp:Content>

<asp:Content ID="leftRail" ContentPlaceHolderID="LeftRail" runat="server">
    <span style="font-weight: bold;">HR View</span> <a style="margin-left: 2em" href="">
        Home</a> <span style="font-weight: bold; margin-top: 10px">Menu</span>
    <ul>
        <li><a href="">Candidates</a></li>
        <li><a href="">Positions</a></li>
        <li><a href="">Openings</a></li>
    </ul>
    <%Html.RenderPartial("~/Views/Opening/ActiveOpenings.ascx"); %>
    <user:awareness runat="server" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Opening</h2>
    
    <div align="left">
        <%Html.RenderPartial("~/Views/Opening/OpeningDetails.ascx"); %>
    </div>
    <br />
    <div align="left">
        <%Html.RenderPartial("~/Views/Opening/OpeningCandidatesList.ascx"); %>
    </div>    
    <br />
    <div align="left">
        <%Html.RenderPartial("~/Views/Opening/OpeningConversationHistory.ascx"); %>
    </div>
    
    

</asp:Content>