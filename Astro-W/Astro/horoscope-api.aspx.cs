using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class horoscope_api : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    // Button click handler
    protected void btnGetHoroscope_Click(object sender, EventArgs e)
    {
        string zodiacSign = "aries"; // You can change this to dynamic input if needed
        string horoscopeData = GetDailyHoroscope(zodiacSign);

        // Display the horoscope in the table
        litHoroscope.Text = horoscopeData;
    }

    // Method to get daily horoscope for a zodiac sign
    private string GetDailyHoroscope(string zodiacSign)
    {
        // Replace with your actual API access token
        string accessToken = nsp_BATClass.BATClass.GetAccessToken();

        // Build the API URL with the desired zodiac sign
        string apiUrl = "https://api.prokerala.com/v2/astrology/horoscope?sign="+zodiacSign;

        // Create an HTTP request to fetch data
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(apiUrl);
        request.Method = "GET";
        request.Headers.Add("Authorization", "Bearer " + accessToken); // Add Bearer token for authentication
        request.Accept = "application/json"; // Expecting JSON response

        try
        {
            // Send the request and get the response
            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (StreamReader reader = new StreamReader(response.GetResponseStream()))
            {
                string jsonResponse = reader.ReadToEnd(); // Get the response content

                // Parse the response and extract the relevant data
                return ParseHoroscope(jsonResponse);
            }
        }
        catch (WebException ex)
        {
            // Handle error response if any (e.g., API failure)
            using (StreamReader reader = new StreamReader(ex.Response.GetResponseStream()))
            {
                return "Error: " + reader.ReadToEnd();
            }
        }
    }

    // Method to parse the horoscope JSON response and generate HTML table rows
    private string ParseHoroscope(string jsonResponse)
    {
        // For simplicity, assume the response structure is something like:
        // {"status": "OK", "data": {"sign": "Aries", "horoscope": "Today's horoscope..."}}

        // Basic parsing - you can improve this based on the exact structure of the response
        dynamic json = Newtonsoft.Json.JsonConvert.DeserializeObject(jsonResponse);

        string sign = json.data.sign;
        string horoscope = json.data.horoscope;

        // Create a table row with the extracted horoscope data
        return "<tr><td>"+sign+"</td><td>"+horoscope+"</td></tr>";
    }
}