<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<HRHiringTool.Models.OpeningModel>"%>
<style type="text/css">
    .style1
    {
        width: 402px;
        height: 28px;
    }
    .style2
    {
        width: 119px;
        height: 28px;
    }
    .style3
    {
        width: 119px;
        height: 32px;
    }
    .style4
    {
        width: 402px;
        height: 32px;
    }
    .style5
    {
        height: 32px;
    }
    .style6
    {
        width: 119px;
        height: 27px;
    }
    .style7
    {
        width: 402px;
        height: 27px;
    }
    .style8
    {
        height: 27px;
    }
    .style12
    {
        width: 163px;
    }
    .style13
    {
        width: 76px;
    }
    .style14
    {
        height: 28px;
    }
    .style15
    {
        height: 32px;
    }
    #txtRemaining
    {
        width: 40px;
    }
    #txtTotalQty
    {
        width: 40px;
    }
    #Button1
    {
        width: 92px;
    }
    #btnUpdate
    {
        width: 79px;
    }
    .style17
    {
        width: 402px;
    }
    .style19
    {
        width: 123px;
    }
    .style20
    {
        width: 124px;
    }
</style>
<div style="height: 199px">
<h1>Opening</h1>

    <div style=" width:725px; border-width:medium; border-color:Black; padding:2;">
    
        <table style="width: 97%; height: 117px;" cellpadding="0px" cellspacing="0px" 
        border="0px" >
            <tr>
                <td class="style3">
                    Department:
                </td>
                <td class="style4">
                </td>
                <td class="style5">
                    <table style="width: 100%;" cellpadding="0px" cellspacing="0px" >
                        <tr>
                            <td class="style13">Status:</td>
                            <td class="style15">
                                <asp:DropDownList ID="ddStatus" runat="server" Height="24px" Width="86px" >
                                </asp:DropDownList>
                            </td>                        
                        </tr>
                     </table>
                </td>                     
            </tr>
            <tr>
                <td class="style6">
                   Position:
                </td>
                <td class="style7">
                    <asp:DropDownList ID="ddPosition" runat="server" Height="27px" Width="367px" >
                    </asp:DropDownList>                
                </td>
                <td class="style8">
                    <table style="width: 100%;" cellpadding="0px" cellspacing="0px" >
                        <tr>
                            <td class="style19">Total Quantity:</td>
                            <td class="style15">
                                <input id="txtTotalQty" type="text" /></td>                            
                        </tr>
                     </table>
                </td>                                             
            </tr>
            <tr>
                <td class="style2">                
                   Opening Date:
                </td>
                <td class="style1">
                    <table style="width: 100%;" cellpadding="0px" cellspacing="0px" >
                        <tr>
                            <td class="style12">
                                <input id="txtOpenDate" type="text" />                            
                            </td>
                            <td class="style13">
                               Deadline:
                            </td>
                            <td>
                                <input id="txtDeadline" type="text" />                                                        
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="style14">
                    <table style="width: 100%; height: 22px;" cellpadding="0px" cellspacing="0px" >
                        <tr>
                            <td class="style20">Remaining:</td>
                            <td class="style15">
                                <input id="txtRemaining" type="text" /></td>                            
                        </tr>
                     </table>
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="style17"></td>
                <td>              
                    <input id="btnUpdate" type="button" value="Update" /></td>
            </tr>
        </table>
    </div>
    
</div>