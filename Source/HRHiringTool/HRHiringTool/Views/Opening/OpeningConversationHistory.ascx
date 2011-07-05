<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div style="width:100%" align="right">
    <div align="left" style="font-weight:bold">
        Conversation History</div>
    <p>
        <textarea id="converstaion" rows="5" style="vertical-align: text-top;width:100%">[12/04/2012 7:34:00] José: Fernando tiene una calificación muy baja en la revisión de destrezas técnicas que hizo el Líder técnico, sin embargo aparece como sugerencia con alta puntuación para Analista de Negocio. Estoy reasignándolo a como candidato a ese puesto.
[15/04/2012 7:34:00] Ileana: Gente, estoy agregando a Maikol Zumbado como candidato pero todavía no se le ha hecho la entrevista preliminar. Si alguno tiene chance de hacerla esta semana por favor procedan.
[16/04/2012 7:34:00] Lucía: Ya se entrevistó a Rolando Matarrita. Pasa a entrevista técnica con el líder del departamento.
</textarea></p>
    <br />
    <textarea id="newentry" rows="4" style="vertical-align: text-top;width:100%">Add Entry...
</textarea><br />
    <input id="addentry" type="button" value="Add Entry" /></div>
