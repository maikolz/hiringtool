<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
    <%@ Register src="SkillGradeRadioBtns.ascx" tagname="SkillGradeRadioBtns" tagprefix="uc1" %>


<style type="text/css">
    .style2
    {
        width: 100px;
    }
    .style10
    {
        width: 322px;
    }
    .style11
    {
        width: 100px;
    }
    </style>
<div style="width:565px">
    <form id="frmSkillLine" action="SkillLine.ascx" style=" width:100%;"  runat=server>
        <table width="100%" cellpadding="0px" cellspacing="0px"> 
            <tr>
                <td class="style2">
                    <asp:Label ID="txtCategory" runat="server" Text="Languages"></asp:Label>
                </td>
                <td class="style11">
                    <asp:Label ID="txtSkill" runat="server" Text="English"></asp:Label>
                </td>
                <td class="style10">
                    <div>
                        <uc1:SkillGradeRadioBtns ID="SkillGradeRadioBtns1" runat="server" />
                    </div>                
                </td>
                <td align="center">                   
                        <asp:Button ID="btnEliminar" runat="server" Text="X" Height="21px" 
                            Width="39px" />
                </td>        
            </tr>
        </table>
    </form>
</div>



