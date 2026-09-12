<%@ Application Language="C#" %>
<script runat="server">
    void Application_PreRequestHandlerExecute(object sender, EventArgs e)
    {
        if (Context.Handler is System.Web.UI.Page)
        {
            // Do not retain authenticated pages in shared caches or browser history caches.
            Response.Cache.SetCacheability(System.Web.HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
            Response.Cache.SetRevalidation(System.Web.HttpCacheRevalidation.AllCaches);
        }
    }
</script>
