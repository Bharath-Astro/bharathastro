<%@ Page Language="C#" AutoEventWireup="true" CodeFile="divineapi-sample-3.aspx.cs" Inherits="apitest_divineapi_sample_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Birth Details</title>
    <style>
        table { border-collapse: collapse; width: 60%; }
        th, td { border: 1px solid #ccc; padding: 6px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div>
            <h2>Birth Details</h2>
            <asp:Button ID="btnShowDetails" runat="server" Text="Show Details" OnClick="btnShowDetails_Click" />
            <br /><br />
            <asp:Literal ID="litDetails" runat="server"></asp:Literal>
        </div>
        </div>
    </form>
</body>
</html>