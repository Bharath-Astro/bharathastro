<%@ Page Language="C#" AutoEventWireup="true" CodeFile="panchang-test.aspx.cs" Inherits="panchang_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnFetch" runat="server" Text="Fetch API Result" OnClick="btnFetch_Click" />
<asp:Literal ID="litResults" runat="server"></asp:Literal>

<asp:GridView ID="gvResults" runat="server" AutoGenerateColumns="true"></asp:GridView>
        </div>


        <div>
<asp:Label ID="lblTithi" runat="server" /><br />
<asp:Label ID="lblMonthAmanta" runat="server" /><br />
<asp:Label ID="lblMonthPurnimanta" runat="server" /><br />
<asp:Label ID="lblDay" runat="server" /><br />
<asp:Label ID="lblSamvat" runat="server" /><br />
<asp:Label ID="lblNakshatra" runat="server" /><br />
<asp:Label ID="lblYoga" runat="server" /><br />
<asp:Label ID="lblKarana" runat="server" /><br />
<asp:Label ID="lblSunrise" runat="server" /><br />
<asp:Label ID="lblSunset" runat="server" /><br />
<asp:Label ID="lblMoonrise" runat="server" /><br />
<asp:Label ID="lblMoonset" runat="server" /><br />


        </div>
    </form>
</body>
</html>
