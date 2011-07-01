<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
    <%@ Register src="OpeningCandidate.ascx" tagname="OpeningCandidate" tagprefix="uc1" %>
    <div >
        <span style="font-weight:bold;">
            Applying Candidates</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="btnViewSuggestions" type="button" value="View Suggestions" />
    </div>
<div style="border: 1px solid Black;">
<uc1:OpeningCandidate ID="OpeningCandidate1" runat="server" />
</div>


