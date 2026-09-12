<%@ Page Language="C#" AutoEventWireup="true" CodeFile="astrologyapi-sample-1.aspx.cs" Inherits="apitest_astrologyapi_sample_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Astrology API - 1</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Astrology API – Basic Astro Details</h2>
            <asp:Button ID="btnShowDetails" runat="server" Text="Show All Details" OnClick="btnShowDetails_Click" />
            <br /><br />

            <h3>1. Birth Details</h3>
            <asp:Label ID="lblBirthDetails" runat="server"></asp:Label><br />

            <h3>2. Astro Details</h3>
            <asp:Label ID="lblAstroDetails" runat="server"></asp:Label><br />

            <h3>3. Planets</h3>
            <asp:Label ID="lblPlanets" runat="server"></asp:Label><br />

            <h3>4. Planets Extended</h3>
            <asp:Label ID="lblPlanetsExtended" runat="server"></asp:Label><br />

            <h3>5. Bhav Madhya</h3>
            <asp:Label ID="lblBhavMadhya" runat="server"></asp:Label><br />

            <h3>6. Ghat Chakra</h3>
            <asp:Label ID="lblGhatChakra" runat="server"></asp:Label><br />

            <h3>7. Ayanamsha</h3>
            <asp:Label ID="lblAyanamsha" runat="server"></asp:Label><br />
        </div>
    </form>
</body>
</html>