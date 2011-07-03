<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
    <%@ Register src="SkillFilter.ascx" tagname="SkillFilter" tagprefix="uc1" %>
    <%@ Register src="SkillGradeRadioBtns.ascx" tagname="SkillGradeRadioBtns" tagprefix="uc2" %>
<style type="text/css">
    .style10
    {
        width: 52px;
    }
    .style11
    {
        width: 65px;
    }
    .style12
    {
        width: 399px;
    }
</style>
<div style="width:600px; padding:10px 10px 10px 10px; border: solid 1px Black;  ">
    <div style=" width:580px">
        <uc1:SkillFilter ID="SkillFilter1" runat="server" />
    </div>
    <div style=" width:580">
        <table width="100%" cellpadding="0" cellspacing="0">
            <tr>
                <td class="style12">
                    <table width="335px" cellpadding="0" cellspacing="0">
                        <tr>
                                <td align="center" class="style10">
                                    None
                                </td>
                                <td align="center" class="style11">
                                    Basic
                                </td>
                                <td align="center" class="style30">
                                    Intermediate
                                </td>
                                <td align="center" class="style29">
                                    Advance
                                </td>
                                <td align="center" class="style23">
                                    Expert
                                </td>
                        </tr>
                    </table>
                    <div>
                        <uc2:SkillGradeRadioBtns ID="SkillGradeRadioBtns2" runat="server" />            
                    </div>                
                </td>
                <td>
                    
                    <input id="Button1" type="button" value="Insert to Position Skill Set" 
                        style="width: 157px" /></td>
            </tr>
        </table>
    </div>
</div>
