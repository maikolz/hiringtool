<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="HRHiringTool.Classes" %>
        <div id="feedarea" style="vertical-align: text-top; text-align:left; width: 100%">
        <!--
<p>[12/04/2012 7:34:00] José: Fernando tiene una calificación muy baja en la revisión de destrezas técnicas que hizo el Líder técnico, sin embargo aparece como sugerencia con alta puntuación para Analista de Negocio. Estoy reasignándolo a como candidato a ese puesto.</p>
<p>[15/04/2012 7:34:00] Ileana: Gente, estoy agregando a Maikol Zumbado como candidato pero todavía no se le ha hecho la entrevista preliminar. Si alguno tiene chance de hacerla esta semana por favor procedan.</p>
<p>[16/04/2012 7:34:00] Lucía: Ya se entrevistó a Rolando Matarrita. Pasa a entrevista técnica con el líder del departamento.</p>
-->
    <%
        Object entries;
        Application.Lock();
        entries = ((ArrayList)Application["newsfeed"]).Clone();
        Application.UnLock();
        foreach (var entry in ((ArrayList)entries))
        {
            if (((OpeningNote)entry).UserName != null)
            {%>
                <p style="text-align:left">
                <span class="timestamp">[<%=((OpeningNote)entry).Timestamp %>]</span><span class="username"> <%=((OpeningNote)entry).UserName %>:</span> <%=((OpeningNote)entry).Note %>
                </p>
          <%}
        } 
    %>


</div>
<script type="text/javascript" language="javascript">

    function AddEntry() {
        var entryTextArea = document.getElementById("newentry");
        entryTextArea.scrollTop = entryTextArea.clientHeight;
        UpdateNewsFeed(entryTextArea.value);
        entryTextArea.value = "";
    }
    function UpdateNewsFeed(newEntry) {
        $.ajax({
            type: 'POST',
            url: '<%= Url.Action("UpdateNewsFeed", "Opening") %>',
            data: { entry: newEntry },
            success: function(response) {
                /*assign retrieved data*/
            $('#feedarea').html(response);
            var feedArea = document.getElementById("feedarea");
            feedArea.scrollTop = feedArea.clientHeight;
            }
        });
    }
</script>
