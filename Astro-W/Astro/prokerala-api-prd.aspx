<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prokerala-api-prd.aspx.cs" Inherits="prokerala_api_prd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Prokerala API PRD</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Prokerala API Results (with credits)</h2>
            
<asp:DropDownList ID="ddlApis" runat="server">
    <asp:ListItem Value="Panchang1">Panchang</asp:ListItem>
    <asp:ListItem Value="PA">Panchang Advanced</asp:ListItem>
    <asp:ListItem Value="panchang">Daily Panchang</asp:ListItem>
    <asp:ListItem Value="BirthDetails">Birth Details</asp:ListItem>
</asp:DropDownList>
<br />
            ayanamsa: <asp:DropDownList runat="server" ID="ddlAyanamsa">
                <asp:ListItem Value="1">Lahiri</asp:ListItem>
                <asp:ListItem Value="3">Raman</asp:ListItem>
                <asp:ListItem Value="5">KP astrology</asp:ListItem>
                     </asp:DropDownList>
<br />
<%--coordinates: <asp:TextBox ID="txtCoordinates" runat="server" Placeholder="lat,long"></asp:TextBox>--%>
<div>
    <h3>Select Location</h3>
    <asp:DropDownList ID="ddlCoordinates" runat="server">
        <asp:ListItem Text="Hyderabad" Value="17.3850,78.4867"></asp:ListItem>
        <asp:ListItem Text="Mumbai" Value="19.0760,72.8777"></asp:ListItem>
        <asp:ListItem Text="Delhi" Value="28.6139,77.2090"></asp:ListItem>
        <asp:ListItem Text="Kolkata" Value="22.5726,88.3639"></asp:ListItem>
        <asp:ListItem Text="Chennai" Value="13.0827,80.2707"></asp:ListItem>
        <asp:ListItem Text="Toronto" Value="43.651070,-79.347015"></asp:ListItem>
        <asp:ListItem Text="Dubai" Value="25.276987,55.296249"></asp:ListItem>
        <asp:ListItem Text="Mexico City" Value="19.4326,-99.1332"></asp:ListItem>
        <asp:ListItem Text="Chicago" Value="41.8781,-87.6298"></asp:ListItem>
    </asp:DropDownList>
</div>

<br />
<div>
    <h3>Date and Time Input</h3>

    Year: <asp:TextBox ID="txtYear" runat="server" Width="80px" Placeholder="YYYY" Text="2026"></asp:TextBox>
    <br />

    Month: <asp:DropDownList ID="ddlMonth" runat="server"></asp:DropDownList>
    <br />

    Day: <asp:DropDownList ID="ddlDay" runat="server"></asp:DropDownList>
    <br />

    Hour: <asp:DropDownList ID="ddlHour" runat="server"></asp:DropDownList>
    <br />

    Minute: <asp:DropDownList ID="ddlMinute" runat="server"></asp:DropDownList>
    <br />

    Second: <asp:DropDownList ID="ddlSecond" runat="server"></asp:DropDownList>
    <br />
</div>

<br />

            <br />
<asp:Button ID="btnFetch" runat="server" Text="Fetch API Result" OnClick="btnFetch_Click" />
<asp:Literal ID="litResults" runat="server"></asp:Literal>

<asp:GridView ID="gvResults" runat="server" AutoGenerateColumns="true"></asp:GridView>
        </div>
    </form>
</body>
</html>
