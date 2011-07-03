<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
    <%@ Register src="SkillSet.ascx" tagname="SkillSet" tagprefix="uc1" %>
    <%@ Register src="SkillAddToPosition.ascx" tagname="SkillAddToPosition" tagprefix="uc2" %>
    
<div>
    <h1>Position</h1>
    <div>
        <uc1:SkillSet ID="SkillSet1" runat="server" />               
    </div>
    <br />
    <div>
        <uc2:SkillAddToPosition ID="SkillAddToPosition" runat="server" />               
    </div>


</div>