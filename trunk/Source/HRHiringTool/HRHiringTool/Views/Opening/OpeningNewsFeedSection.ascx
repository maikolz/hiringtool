<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Register src="OpeningConversationHistory.ascx" tagname="OpeningConversationHistory" tagprefix="uc1" %>
<style type="text/css">
    .timestamp
    {
    	font-style:italic;
    	color:Gray;        
    }
    .username
    {
    	font-weight:bold;
    }
</style>
<div style="width: 100%" align="right">
    <div align="left" style="font-weight: bold">
        Conversation History</div>
    <p style=" padding-left:0px; ">&nbsp;<uc1:OpeningConversationHistory 
            ID="OpeningConversationHistory1" runat="server" />
    <br />
    <textarea id="newentry" rows="4" onfocus="removeHelperTextOnce();" style="vertical-align: text-top; font-style: italic; width: 100%">Add Entry...</textarea><br />
    <input id="addentry" type="button" value="Add Entry" onclick="AddEntry()"/>
</div>
<script type="text/javascript" language="javascript">
    function removeHelperTextOnce() {
        var textArea = document.getElementById("newentry");
        if (textArea.value == "Add Entry...") {
            textArea.value = "";
            textArea.style.fontStyle = "normal";
        }
    }

</script>