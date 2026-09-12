<%@ Page Language="C#" AutoEventWireup="true" CodeFile="horoscope-api.aspx.cs" Inherits="horoscope_api" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily Horoscope</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Daily Horoscope</h1>
    
    <asp:Button ID="btnGetHoroscope" runat="server" Text="Get Horoscope for Aries" OnClick="btnGetHoroscope_Click" />
    
    <table>
        <tr>
            <th>Sign</th>
            <th>Horoscope</th>
        </tr>
        <asp:Literal ID="litHoroscope" runat="server"></asp:Literal>
    </table>
    </form>
</body>
</html>