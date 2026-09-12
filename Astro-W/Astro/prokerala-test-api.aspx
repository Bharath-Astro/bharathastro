<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prokerala-test-api.aspx.cs" Inherits="prokerala_test_api" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<asp:Button ID="btnGetPanchang" runat="server" Text="Get Panchang" OnClick="btnGetPanchang_Click" />
<asp:Literal ID="litPanchangResult" runat="server"></asp:Literal>



<%--<asp:Button ID="btnGetHoroscope" runat="server"
    Text="Get Horoscope"
    OnClick="btnCallApi_Click" />

<asp:Literal ID="litResult" runat="server"></asp:Literal>--%>

        </div>
    </form>
</body>
</html>
