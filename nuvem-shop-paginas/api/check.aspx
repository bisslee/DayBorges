<%@ Page Language="C#" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Web.Script.Serialization" %>
<script runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        Response.ContentType = "application/json; charset=utf-8";
        Response.ContentEncoding = System.Text.Encoding.UTF8;
        Response.AddHeader("Access-Control-Allow-Origin", "*");

        var result = new Dictionary<string, object> {
            { "ok", false },
            { "message", "" },
            { "database", "236_iza_reborn" }
        };

        var cs = ConfigurationManager.ConnectionStrings["FeedbackDb"];
        var connStr = (cs != null) ? cs.ConnectionString : null;
        if (string.IsNullOrEmpty(connStr))
        {
            result["message"] = "Connection string não configurada (Web.config)";
            Response.Write(new JavaScriptSerializer().Serialize(result));
            Response.End();
            return;
        }

        try
        {
            using (var conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (var cmd = new SqlCommand("SELECT GETUTCDATE() AS data_utc, GETDATE() AS data_local", conn))
                using (var reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        result["ok"] = true;
                        result["message"] = "Acesso a base OK";
                        result["data_utc"] = reader["data_utc"].ToString();
                        result["data_local"] = reader["data_local"].ToString();
                    }
                }
            }
        }
        catch (Exception ex)
        {
            result["message"] = "Erro: " + ex.Message;
        }

        Response.Write(new JavaScriptSerializer().Serialize(result));
        Response.End();
    }
</script>
