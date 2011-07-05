<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<HRHiringTool.Models.OpeningModel>"%>
<style type="text/css">    
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
        width: 310px;
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
        width: 92px;
    }
    .style22
    {
        width: 62px;
    }
    .style23
    {
        width: 121px;
    }
</style>
<div>
<h2>Opening</h2>

    <div style=" padding: 4px; width:100%; border:1px solid Black;">
    
        <table style="width: 100%; border-color:White;" cellpadding="0px" cellspacing="3px" 
        border="0px" >
            <tr>
                <td >
                    Department:
                </td>
                <td >
                    <select name="ddDepartment" style=" width:100%">
                      <option>department 1</option>
                      <option>department 2</option>
                      <option>department 3</option>
                      <option>department 4</option>
                    </select>
                </td>
                <td >
                    <table style="width: 100%;" cellpadding="0px" cellspacing="0px" >
                        <tr>
                            <td >Status:</td>
                            <td align="right" >
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
                <td >
                   Position:
                </td>
                <td >
                    <select name="ddStatus" style="width:100%">
                      <option>Junior Developer</option>
                      <option>Senior Developer</option>
                      <option>Junior QA</option>
                    </select>
                </td>
                <td >
                    <table style="width: 100%;" cellpadding="0px" cellspacing="0px" >
                        <tr>
                            <td >Total Quantity:</td>
                            <td align="right" >
                                <input id="txtTotalQty" type="text" /></td>                            
                        </tr>
                     </table>
                </td>                                             
            </tr>
            <tr>
                <td >                
                   Opening Date:
                </td>
                <td >
                    <table style="width: 100%;" cellpadding="0px" cellspacing="0px" >
                        <tr>
                            <td >
                                <input style=" width:110px;" id="txtOpenDate" type="text" />                            
                               Deadline:
                                <input style=" width:110px;"id="txtDeadline" type="text" />                                                        
                            </td>
                        </tr>
                    </table>
                </td>
                <td >
                    <table style="width: 100%; height: 22px;" cellpadding="0px" cellspacing="0px" >
                        <tr>
                            <td >Remaining:</td>
                            <td align="right" >
                                <input id="txtRemaining" type="text" /></td>                            
                        </tr>
                     </table>
                </td>
            </tr>
            <tr>
                <td ></td>
                <td ></td>
                <td align="right">              
                    <input id="btnUpdate" type="button" value="Update" />
                </td>
            </tr>
        </table>
    </div>
    
</div>