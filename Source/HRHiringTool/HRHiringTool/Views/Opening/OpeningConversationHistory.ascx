<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div>
    <h2>
        Conversation History</h2>
    <p>
        <textarea id="converstaion" cols="80" rows="5">[12/04/2012 7:34:00] José: Fernando tiene una calificación muy baja en la revisión de destrezas técnicas que hizo el Líder técnico, sin embargo aparece como sugerencia con alta puntuación para Analista de Negocio. Estoy reasignándolo a como candidato a ese puesto.
[15/04/2012 7:34:00] Ileana: Gente, estoy agregando a Maikol Zumbado como candidato pero todavía no se le ha hecho la entrevista preliminar. Si alguno tiene chance de hacerla esta semana por favor procedan.
[16/04/2012 7:34:00] Lucía: Ya se entrevistó a Rolando Matarrita. Pasa a entrevista técnica con el líder del departamento.
</textarea></p>
    <br />
    <textarea id="newentry" cols="80" rows="4" style="vertical-align: text-top">Add Entry...
</textarea><br />
    <input id="addentry" type="button" value="Add Entry" /></div>
