<%@ Page Language="C#" AutoEventWireup="true" CodeFile="divineapi-sample-2.aspx.cs" Inherits="apitest_divineapi_sample_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Match Making – Planetary Positions</title>
    <style>
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ccc; padding: 6px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Planetary Positions – Comparison</h2>
            <asp:Button ID="btnShowPlanets" runat="server" Text="Show Planetary Positions" OnClick="btnShowPlanets_Click" />
            <br /><br />
            <asp:Literal ID="litPlanetsTable" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>