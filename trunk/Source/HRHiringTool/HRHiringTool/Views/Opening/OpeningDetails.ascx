<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<HRHiringTool.Models.OpeningModel>"%>
<style type="text/css">
    .style1
    {
        width: 360px;
        height: 28px;
    }
    .style2
    {
        width: 96px;
        height: 28px;
    }
    .style3
    {
        width: 96px;
        height: 32px;
    }
    .style4
    {
        width: 360px;
        height: 32px;
    }
    .style5
    {
        height: 32px;
    }
    .style6
    {
        width: 96px;
        height: 27px;
    }
    .style7
    {
        width: 360px;
        height: 27px;
    }
    .style8
    {
        height: 27px;
    }
    .style12
    {
        width: 141px;
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
        width: 360px;
    }
    .style19
    {
        width: 123px;
    }
    .style20
    {
        width: 124px;
    }
    .style21
    {
        width: 96px;
    }
</style>
<div style="height: 199px">
<h1>Opening</h1>

    <div style=" width:600px; border-width:medium; border-color:Black; padding:1;">
    
        <table style="width: 100%; height: 124px;" cellpadding="0px" cellspacing="0px" 
        border="0px" >
            <tr>
                <td class="style3">
                    Department:
                </td>
                <td class="style4">
                    <select name="ddDepartment" style=" width:350px">
                      <option>department 1</option>
                      <option>department 2</option>
                      <option>department 3</option>
                      <option>department 4</option>
                    </select>
                </td>
                <td class="style5">
                    <table style="width: 100%;" cellpadding="0px" cellspacing="0px" >
                        <tr>
                            <td class="style13">Status:</td>
                            <td class="style15">
                                <select name="ddStatus">
                                  <option>Open</option>
                                  <option>Close</option>
                                  <option>On Hold</option>
                                </select>
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
                    <select name="ddStatus" style="width:350px">
                      <option>Junior Developer</option>
                      <option>Senior Developer</option>
                      <option>Junior QA</option>
                    </select>
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
                <td class="style21"></td>
                <td class="style17"></td>
                <td>              
                    <input id="btnUpdate" type="button" value="Update" /></td>
            </tr>
        </table>
    </div>
    
</div>