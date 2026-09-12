<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test-1.aspx.cs" Inherits="apitest_test_1" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Astrology Birth Details</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Astrology API Integration</h2>
            <asp:Button ID="btnGetDetails" runat="server" Text="Get Birth Details" OnClick="btnGetDetails_Click" />
            <br /><br />
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>