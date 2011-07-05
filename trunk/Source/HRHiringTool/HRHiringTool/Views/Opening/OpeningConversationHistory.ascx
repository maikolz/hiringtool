<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="HRHiringTool.Classes" %>
<div style="width: 100%" align="right">
    <div align="left" style="font-weight: bold">
        Conversation History</div>
    <p>
        <textarea id="feedarea" rows="5" style="vertical-align: text-top; width: 100%">[12/04/2012 7:34:00] José: Fernando tiene una calificación muy baja en la revisión de destrezas técnicas que hizo el Líder técnico, sin embargo aparece como sugerencia con alta puntuación para Analista de Negocio. Estoy reasignándolo a como candidato a ese puesto.
[15/04/2012 7:34:00] Ileana: Gente, estoy agregando a Maikol Zumbado como candidato pero todavía no se le ha hecho la entrevista preliminar. Si alguno tiene chance de hacerla esta semana por favor procedan.
[16/04/2012 7:34:00] Lucía: Ya se entrevistó a Rolando Matarrita. Pasa a entrevista técnica con el líder del departamento.

    <%
        Object entries;
        Application.Lock();
        entries = ((Hashtable)Application["newsfeed"]).Clone();
        Application.UnLock();
        foreach (var entry in ((Hashtable)entries).Values)
        {
            if (((OpeningNote)entry).UserName != null)
            {%>
                [<%=((OpeningNote)entry).Timestamp %>] <%=((OpeningNote)entry).UserName %>: <%=((OpeningNote)entry).Note %>
                <%=System.Environment.NewLine %>            
          <%}
        } 
    %>


</textarea></p>
    <br />
    <textarea id="newentry" rows="4" style="vertical-align: text-top; width: 100%">Add Entry...</textarea><br />
    <input id="addentry" type="button" value="Add Entry" onclick="AddEntry()"/>
</div>
<script type="text/javascript" language="javascript">

    function AddEntry() {
        var entry = document.getElementById("newentry").value;
        UpdateNewsFeed(entry);
    }
    function UpdateNewsFeed(newEntry) {
        $.ajax({
            type: 'POST',
            url: '<%= Url.Action("UpdateNewsFeed", "Opening") %>',
            data: { entry: newEntry },
            success: function(response) {
                /*assign retrieved data*/
            $('#feedarea').html(response);
            }
        });
    }
</script>
