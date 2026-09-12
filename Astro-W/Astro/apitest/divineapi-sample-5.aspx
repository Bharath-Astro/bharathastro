<%@ Page Language="C#" AutoEventWireup="true" CodeFile="divineapi-sample-5.aspx.cs" Inherits="apitest_divineapi_sample_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Match Making APIs</title>
    <style>
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ccc; padding: 6px; text-align: left; vertical-align: top; }
        th { background-color: #f2f2f2; }
        .section { margin-top: 20px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Match Making APIs</h1>
        <asp:Button runat="server" ID="btnMatchMaking" Text="Show Match Making Details" OnClick="btnMatchMaking_Click" />
        <div>
        <div>
            <h2>1. Ashtakoot Milan</h2>
            <asp:Literal ID="litComparison" runat="server"></asp:Literal>
        </div>
        <div>
            <h2>2. Dashakoot Milan</h2>
            <asp:Literal ID="litComparisonDashakoot" runat="server"></asp:Literal>
        </div>
        <div>
            <h2>3. Nav Pancham Yoga</h2>
            <asp:Literal ID="litNavPanchamYoga" runat="server"></asp:Literal>
        </div>
        <div>
            <h2>4. Matching Basic Astro Details</h2>
            <asp:Literal ID="litTable4" runat="server"></asp:Literal>
        </div>
        <div>
            <h2>5. Matching Planetary Positions</h2>
            <asp:Literal ID="litPlanetsTable" runat="server"></asp:Literal>
        </div>
        <div>
            <h2>6. Matching Vimshottari Dasha</h2>
            <asp:Literal ID="litMatchingVimshottariDasha" runat="server"></asp:Literal>
        </div>
        <div>
            <h2>7. Matching Manglik Dosha</h2>
            <asp:Literal ID="litMatchingManglikDosha" runat="server"></asp:Literal>
        </div>
        <div>
            <h2>8. Matching Horoscope Chart</h2>
            <p>This is unable to show at present. Sample SVG is not available.</p>
        </div>
        </div>
    </form>
</body>
</html>
