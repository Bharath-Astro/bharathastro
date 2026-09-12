<%@ Page Language="C#" AutoEventWireup="true" CodeFile="astrologyapi-sample-2.aspx.cs" Inherits="apitest_astrologyapi_sample_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Astrology API - 2</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Horoscope Dosha – Sample Data</h2>
            <asp:Button ID="btnShowDosha" runat="server" Text="Show Dosha Reports" OnClick="btnShowDosha_Click" />
            <br /><br />

            <h3>1. Simple Manglik</h3>
            <asp:Label ID="lblSimpleManglik" runat="server"></asp:Label><br />

            <h3>2. Manglik</h3>
            <asp:Label ID="lblManglik" runat="server"></asp:Label><br />

            <h3>3. Kalsarpa Details</h3>
            <asp:Label ID="lblKalsarpa" runat="server"></asp:Label><br />

            <h3>4. Sadhesati Current Status</h3>
            <asp:Label ID="lblSadhesatiStatus" runat="server"></asp:Label><br />

            <h3>5. Sadhesati Life Details</h3>
            <asp:Label ID="lblSadhesatiLife" runat="server"></asp:Label><br />

            <h3>6. Pitra Dosha Report</h3>
            <asp:Label ID="lblPitraDosha" runat="server"></asp:Label><br />
        </div>
    </form>
</body>
</html>