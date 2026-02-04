<%@ Page Language="C#" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Web.Script.Serialization" %>
<script runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        Response.ContentType = "application/json";
        Response.AddHeader("Access-Control-Allow-Origin", "*");
        Response.AddHeader("Access-Control-Allow-Methods", "POST, OPTIONS");
        Response.AddHeader("Access-Control-Allow-Headers", "Content-Type");

        if (Request.HttpMethod == "OPTIONS")
        {
            Response.StatusCode = 204;
            Response.End();
            return;
        }

        if (Request.HttpMethod != "POST")
        {
            Response.StatusCode = 405;
            Response.Write("{\"ok\":false,\"error\":\"Método não permitido\"}");
            Response.End();
            return;
        }

        string body;
        using (var reader = new StreamReader(Request.InputStream))
            body = reader.ReadToEnd();

        if (string.IsNullOrWhiteSpace(body))
        {
            Response.StatusCode = 400;
            Response.Write("{\"ok\":false,\"error\":\"Body vazio\"}");
            Response.End();
            return;
        }

        var serializer = new JavaScriptSerializer();
        var data = serializer.Deserialize<FeedbackDto>(body);
        if (data == null || string.IsNullOrWhiteSpace(data.comment))
        {
            Response.StatusCode = 400;
            Response.Write("{\"ok\":false,\"error\":\"Comentário obrigatório\"}");
            Response.End();
            return;
        }

        var cs = ConfigurationManager.ConnectionStrings["FeedbackDb"];
        var connStr = (cs != null) ? cs.ConnectionString : null;
        if (string.IsNullOrEmpty(connStr))
        {
            Response.StatusCode = 500;
            Response.Write("{\"ok\":false,\"error\":\"Connection string não configurada. Verifique Web.config.\"}");
            Response.End();
            return;
        }

        try
        {
            using (var conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (var cmd = new SqlCommand(
                    "INSERT INTO dbo.feedback_paginas (page_id, page_url, comment) VALUES (@pageId, @pageUrl, @comment)", conn))
                {
                    cmd.Parameters.AddWithValue("@pageId", (object)data.pageId ?? DBNull.Value);
                    cmd.Parameters.AddWithValue("@pageUrl", (object)data.pageUrl ?? DBNull.Value);
                    cmd.Parameters.AddWithValue("@comment", data.comment);
                    cmd.ExecuteNonQuery();
                }
            }
            Response.StatusCode = 200;
            Response.Write("{\"ok\":true}");
        }
        catch (Exception ex)
        {
            Response.StatusCode = 500;
            Response.Write("{\"ok\":false,\"error\":\"Erro ao gravar: " + HttpUtility.JavaScriptStringEncode(ex.Message) + "\"}");
        }
        Response.End();
    }

    public class FeedbackDto
    {
        public string pageId { get; set; }
        public string pageUrl { get; set; }
        public string comment { get; set; }
    }
</script>
