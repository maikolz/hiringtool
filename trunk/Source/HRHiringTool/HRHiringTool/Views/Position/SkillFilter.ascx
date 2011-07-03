<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>


<style type="text/css">
    .style1
    {
        width: 364px;
    }
    .style2
    {
        width: 104px;
    }
    #Button1
    {
        width: 86px;
        margin-left: 7px;
    }
</style>
<div style="width:575px; height: 131px;">
<form id="frmSkillFilter" runat="server">
    <table width="100%" cellpadding="0px" cellspacing="0px">
        <tr>
            <td class="style2">Category:</td>        
            <td>
                <select name="ddCategory" style=" width:458px;">
                  <option>Languages</option>
                  <option>Programing Languages</option>
                  <option>Software Development and Design</option>
                  <option>Web</option>
                </select>
            </td>        
        </tr>
        
        <tr>
            <td class="style2">Skill Name:</td>        
            <td>
                <table width="100%" cellpadding="0px" cellspacing="0px">
                    <tr>
                        <td class="style1">
                            <input style="width:97%" id="Text1" type="text" />
                        </td>        
                        <td>
                            <input id="Button1" type="button" value="Add New" /></td>        
                    </tr>
                </table>            
            </td>        
        </tr>
        <tr>
            <td class="style2">Available Skills</td>
            <td></td>
        </tr>
    </table>
    <div>
        <asp:GridView ID="GridView1" runat="server" Width="486px" BorderStyle="Solid" >
        </asp:GridView>
    </div>
</form>
    
</div>

