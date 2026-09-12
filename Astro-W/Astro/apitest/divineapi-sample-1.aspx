<%@ Page Language="C#" AutoEventWireup="true" CodeFile="divineapi-sample-1.aspx.cs" Inherits="apitest_divineapi_sample_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Match Making – Basic Astro Details</title>
    <style>
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Match Making – Sample Data</h2>
            <asp:Button ID="Button1" runat="server" Text="Show Match Details" OnClick="btnShowMatch_Click" />
            <br /><br />

            <asp:Literal ID="litTable" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>