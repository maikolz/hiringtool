<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
    <%@ Register src="SkillLine.ascx" tagname="SkillLine" tagprefix="uc1" %>

<style type="text/css">
    .style23
    {
        width: 59px;
        font-size: x-small;
    }
    .style24
    {
        width: 91px;
        text-align: center;
    }
    .style25
    {
        width: 53px;
        font-size: x-small;
    }
    .style29
    {
        width: 60px;
        font-size: x-small;
    }
    .style30
    {
        width: 91px;
        font-size: x-small;
    }
    .style31
    {
        width: 96px;
        text-align: left;
    }
    .style33
    {
        width: 201px;
        font-size: medium;
        font-weight: bold;
    }
    .style34
    {
        font-style: normal;
    }
</style>
<div>
    <div style="border: 1px solid Black; width:600px; padding:5px 0px 5px 5px " >
        <p>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="Text1" type="text" style="width:300px" onclick="return Text1_onclick()" /></p>
        <div style="width:565px">
            <table width="100%" cellpadding="0px" cellspacing="0px"> 
                <tr>
                    <td class="style33">
                    Position Skills Set
                    </td>
                    <td style="text-align: center">
                        <b>Level</b>
                    </td>
                </tr>
            </table>
        </div>
        
        <div style="width:565px">
            <table width="100%" cellpadding="0px" cellspacing="0px" 
                style="font-weight: 700; font-style: italic"> 
                <tr>
                    <td class="style31" >
                        Category
                    </td>
                    <td class="style24" >
                        Skill
                    </td>
                    <td align="center" class="style25">
                        <span class="style34">None
                    </td>
                    <td align="center" class="style23">
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
                    <td align="center">
                    </td>        
                </tr>
            </table>

        </div>
        <div>
            <uc1:SkillLine ID="SkillLine1" runat="server" />
        </div>
    </div>

</div>

