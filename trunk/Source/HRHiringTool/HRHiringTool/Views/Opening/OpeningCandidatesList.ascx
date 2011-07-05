<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Register Src="OpeningCandidate.ascx" TagName="OpeningCandidate" TagPrefix="uc1" %>

<script type="text/javascript" language="javascript">
    function takeAction() {
        var selectBox = document.getElementById("SelectActions");
        selectBox.style.visibility = "visible";
        var spanTakeAction = = document.getElementById("takeaction");
        spanTakeAction.style.visibility = "hidden";
    }
    function actionDone() {
        var selectBox = document.getElementById("SelectActions");
        selectBox.style.visibility = "hidden";
        var spanTakeAction = = document.getElementById("takeaction");
        spanTakeAction.style.visibility = "visible";
    }
</script>

<div>
    <span style="font-weight: bold;">Applying Candidates</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
        id="btnViewSuggestions" type="button" value="View Suggestions" />
</div>
<div style="border: 1px solid Black;">
    <uc1:OpeningCandidate ID="OpeningCandidate1" runat="server" candidateID="1" />
    <table>
        <tr>
            <td rowspan="3">
                <img alt="IMAGE HERE" src="Views/Opening/silueta.png" height="100%" width="100%" />
            </td>
            <td style="font-weight: bold">
                Menganito De Tal
            </td>
            <td>
                <span style="font-family: Wingdings;"></span><span style="font-family: Arial;">5555-1111</span>
            </td>
            <td>
                <a href="mailto:">menganito@detal.com</a>
            </td>
        </tr>
        <tr>
            <td>
                Score: [<a href="http://www.scorenowhere.com">90%</a>]
            </td>
            <td>
                Current Status:
            </td>
            <td style="font-weight: bold">
                HR Interview Scheduled
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0" class="style2">
                    <tr>
                        <td width="50%">
                            <span style="text-align: left"><a href="">Rate</a></span>
                        </td>
                        <td width="50%">
                            <span style="text-align: right"><a href="">Resume</a></span>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <a href="http://www.nowhere.com">View History</a>
            </td>
            <td>
                Take Action<span style="font-family: 'Wingdings 3'">q</span>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td rowspan="3">
                <img alt="IMAGE HERE" src="Views/Opening/silueta.png" height="100%" width="100%" />
            </td>
            <td style="font-weight: bold">
                Juan Pérez
            </td>
            <td>
                <span style="font-family: Wingdings;"></span><span style="font-family: Arial;">5555-1111</span>
            </td>
            <td>
                <a href="mailto:">juan.perez@gmail.com</a>
            </td>
        </tr>
        <tr>
            <td>
                Score: [<a href="http://www.scorenowhere.com">90%</a>]
            </td>
            <td>
                Current Status:
            </td>
            <td style="font-weight: bold">
                Initial Contact
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0" class="style2">
                    <tr>
                        <td width="50%">
                            <span style="text-align: left"><a href="">Rate</a></span>
                        </td>
                        <td width="50%">
                            <span style="text-align: right"><a href="">Resume</a></span>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <a href="http://www.nowhere.com">View History</a>
            </td>
            <td>
                <span id="takeaction" onclick="takeAction();" onmouseover="document.body.style.cursor='pointer'" onmouseout="document.body.style.cursor='auto'">
                Take Action<span style="font-family: 'Wingdings 3'">q</span></span>
                <select id="SelectActions" onchange="actionDone()" name="SelectActions" style="visibility: hidden">
                    <option>Schedule HR Interview</option>
                    <option>Discard</option>
                    <option>Offer Job</option>
                    <option>Assign to another Opening</option>
                </select>
            </td>
        </tr>
    </table>
</div>
