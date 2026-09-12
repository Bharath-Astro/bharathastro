using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prokerala_test_api : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetPanchang_Click(object sender, EventArgs e)
    {
        // Display the JSON response in Literal control
        litPanchangResult.Text = Server.HtmlEncode(GetPanchangCorrect());
    }
    public static string GetPanchangCorrect()
    {
        string token = nsp_BATClass.BATClass.GetAccessToken();

        string datetime = "2014-01-01T10:30:00+05:30";
        string coordinates = "17.3850,78.4867";
        string ayanamsa = "1";

        string apiUrl = "https://api.prokerala.com/v2/astrology/panchang" +
                        "?datetime=" + Uri.EscapeDataString(datetime) +
                        "&coordinates=" + Uri.EscapeDataString(coordinates) +
                        "&ayanamsa=" + ayanamsa;

        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(apiUrl);
        request.Method = "GET";
        request.Headers.Add("Authorization", "Bearer " + token);
        request.Accept = "application/json";

        try
        {
            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (StreamReader reader = new StreamReader(response.GetResponseStream()))
            {
                return reader.ReadToEnd();
            }
        }
        catch (WebException ex)
        {
            if (ex.Response != null)
            {
                using (StreamReader reader = new StreamReader(ex.Response.GetResponseStream()))
                {
                    return reader.ReadToEnd();
                }
            }
            return ex.Message;
        }
    }


}