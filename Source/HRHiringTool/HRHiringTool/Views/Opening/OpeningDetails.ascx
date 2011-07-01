<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<HRHiringTool.Models.OpeningModel>"%>
<div>
<h1>Opening</h1>
    <asp:DropDownList ID="ddDepartment" runat="server" DataSourceID="<%=Model.Departments %>" >
    </asp:DropDownList>
</div>