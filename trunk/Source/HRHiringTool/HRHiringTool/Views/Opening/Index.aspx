<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HRHiringTool.Views.Opening.Index" %>

<%@ Import Namespace="HRHiringTool.Models" %>
<%@ Register Src="OpeningDetails.ascx" TagName="OpeningDetails" TagPrefix="uc1" %>
<%@ Register Src="OpeningCandidatesList.ascx" TagName="OpeningCandidatesList" TagPrefix="uc2" %>
<%@ Register Src="OpeningConversationHistory.ascx" TagName="OpeningConversationHistory"
    TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:OpeningDetails ID="OpeningDetails1" runat="server" /><br />
        <uc2:OpeningCandidatesList ID="OpeningCandidatesList1" runat="server" /><br />
        <uc3:OpeningConversationHistory ID="OpeningConversationHistory1" runat="server" />
    </div>
    </form>
</body>
</html>
