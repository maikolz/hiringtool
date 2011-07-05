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
    </style>
<div>
    <div style=" padding: 4px; width:100%; border:1px solid Black;">
    
        <table style="width: 100%; border-color:White;" cellpadding="0px" cellspacing="3px" 
        border="0px" >
            <tr>
                <td >
                    Department:
                </td>
                <td >
                    <select name="ddDepartment" style=" width:100%">
                      <option>Dev Department</option>
                      <option>QA Department</option>
                      <option>HR Department</option>
                      <option>IT Department</option>
                    </select>
                </td>
                <td >
                    <table style="width: 100%;" cellpadding="0px" cellspacing="0px" >
                        <tr>
                            <td >Status:</td>
                            <td align="right" >
                                <select name="ddStatus">
                                  <option>Open</option>
                                  <option>Closed</option>
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
                      <option>Junior .Net Developer</option>
                      <option>Senior .Net Developer</option>
                      <option>Junior QA</option>
                    </select>
                </td>
                <td >
                    <table style="width: 100%;" cellpadding="0px" cellspacing="0px" >
                        <tr>
                            <td >Total Quantity:</td>
                            <td align="right" >
                                <input id="txtTotalQty" type="text" value="3" /></td>                            
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
                                <input style=" width:110px;" id="txtOpenDate" value="06/06/2011"  type="text" />                            
                                &nbsp;&nbsp;&nbsp;Deadline:&nbsp;
                                <input style=" width:110px;"id="txtDeadline" value="07/07/2011" type="text" />                                                        
                            </td>
                        </tr>
                    </table>
                </td>
                <td >
                    <table style="width: 100%; height: 22px;" cellpadding="0px" cellspacing="0px" >
                        <tr>
                            <td >Remaining:</td>
                            <td align="right" >
                                <input id="txtRemaining" type="text" value="2"  /></td>                            
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