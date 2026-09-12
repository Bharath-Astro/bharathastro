<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JsonViewer.aspx.cs" Inherits="apitest_JsonViewer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JSON Viewer</title>
    <style>
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ccc; padding: 6px; text-align: left; }
        th { background-color: #f2f2f2; }
        .key { font-weight: bold; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div>
            <h2>Generic JSON Viewer</h2>
            <asp:TextBox ID="txtJson" runat="server" TextMode="MultiLine" Rows="10" Columns="80"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnShowJson" runat="server" Text="Show JSON" OnClick="btnShowJson_Click" />
            <br /><br />
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </div>
        </div>
    </form>
</body>
</html>