<%@ Page Language="C#" AutoEventWireup="true" CodeFile="divineapi-sample-4.aspx.cs" Inherits="apitest_divineapi_sample_4" %>

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
        <div>
            <h2>1. Ashtakoot Milan</h2>
            <asp:Button ID="btnShowComparison" runat="server" Text="Show Comparison" OnClick="btnShowComparison_Click" />
            <br /><br />
            <asp:Literal ID="litComparison" runat="server"></asp:Literal>
        </div>
        <div>
            <h2>2. Dashakoot Milan</h2>
            <asp:Button ID="btnDashakoot" runat="server" Text="Show Comparison" OnClick="btnDashakoot_Click" />
            <br /><br />
            <asp:Literal ID="litComparisonDashakoot" runat="server"></asp:Literal>
        </div>
        <div>
            <h2>3. Nav Pancham Yoga</h2>
            <asp:Button ID="btnNavPanchamYoga" runat="server" Text="Show" OnClick="btnNavPanchamYoga_Click" />
            <br /><br />
            <asp:Literal ID="litNavPanchamYoga" runat="server"></asp:Literal>
        </div>
        <div>
            <h2>4. Matching Basic Astro Details</h2>
            <a href="divineapi-sample-1.aspx" target="_blank">Click here</a>
        </div>
        <div>
            <h2>5. Matching Planetary Positions</h2>
            <a href="divineapi-sample-2.aspx" target="_blank">Click here</a>
        </div>
        <div>
            <h2>6. Matching Vimshottari Dasha</h2>
            <asp:Button ID="btnMatchingVimshottariDasha" runat="server" Text="Show" OnClick="btnMatchingVimshottariDasha_Click" />
            <br /><br />
            <asp:Literal ID="litMatchingVimshottariDasha" runat="server"></asp:Literal>
        </div>
        <div>
            <h2>7. Matching Manglik Dosha</h2>
            <asp:Button ID="btnMatchingManglikDosha" runat="server" Text="Show" OnClick="btnMatchingManglikDosha_Click" />
            <br /><br />
            <asp:Literal ID="litMatchingManglikDosha" runat="server"></asp:Literal>
        </div>
        <div>
            <h2>8. Matching Horoscope Chart</h2>
            <p>This is unable to show at present. Sample SVG is not available.</p>
        </div>
    </form>
</body>
</html>