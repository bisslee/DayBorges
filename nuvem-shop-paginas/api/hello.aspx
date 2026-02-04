<%@ Page Language="C#" %>
<script runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        Response.ContentType = "application/json";
        Response.AddHeader("Access-Control-Allow-Origin", "*");
        Response.Write("{\"ok\":true,\"message\":\"hello\",\"api\":\"up\"}");
        Response.End();
    }
</script>
