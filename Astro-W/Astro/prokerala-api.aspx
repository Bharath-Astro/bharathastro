<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prokerala-api.aspx.cs" Inherits="prokerala_api" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Prokerala API Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Prokerala API Results</h2>
            
<asp:DropDownList ID="ddlApis" runat="server">

    <asp:ListItem Value="calendar">Calendar</asp:ListItem>
    <asp:ListItem Value="Panchang1">Panchang</asp:ListItem>
    <asp:ListItem Value="PA">Panchang Advanced</asp:ListItem>


    <asp:ListItem Value="panchang">Daily Panchang</asp:ListItem>
    <asp:ListItem Value="auspicious">Auspicious Periods</asp:ListItem>
    <asp:ListItem Value="choghadiya">Choghadiya</asp:ListItem>
    <asp:ListItem Value="Kundli">Kundli</asp:ListItem>
<%--    <asp:ListItem Value="yogas">Yogas</asp:ListItem>
    <asp:ListItem Value="chandrashtama">Chandrashtama Periods</asp:ListItem>



    <asp:ListItem Value="chart">Birth Chart (Rasi)</asp:ListItem>
    <asp:ListItem Value="mangal">Mangal Dosha</asp:ListItem>
    <asp:ListItem Value="matchmaking">Matchmaking Compatibility</asp:ListItem>
    <asp:ListItem Value="ashtakavarga">Ashtakavarga Chart</asp:ListItem>
    <asp:ListItem Value="sade_sati">Sade Sati</asp:ListItem>
    <asp:ListItem Value="papa_samyam">Papa Samyam</asp:ListItem>
    <asp:ListItem Value="kaal_sarp">Kaal Sarp Dosha</asp:ListItem>


    <asp:ListItem Value="natal">Natal Chart (Western)</asp:ListItem>
    <asp:ListItem Value="transit">Transit Chart</asp:ListItem>
    <asp:ListItem Value="synastry">Synastry Chart</asp:ListItem>


    <asp:ListItem Value="num_name">Numerology (Name)</asp:ListItem>
    <asp:ListItem Value="num_number">Numerology (Number)</asp:ListItem>--%>


    <asp:ListItem Value="BirthDetails">Birth Details</asp:ListItem>


<%--    <asp:ListItem Value="panchang">Daily Panchang</asp:ListItem>


    <asp:ListItem Value="report_horoscope">PDF Report - Horoscope</asp:ListItem>
    <asp:ListItem Value="report_matchmaking">PDF Report - Matchmaking</asp:ListItem>
    <asp:ListItem Value="report_transit">PDF Report - Transit</asp:ListItem>


    <asp:ListItem Value="batch_matchmaking">Batch Matchmaking</asp:ListItem>--%>
</asp:DropDownList>


<asp:Button ID="btnFetch" runat="server" Text="Fetch API Result" OnClick="btnFetch_Click" />
<asp:Literal ID="litResults" runat="server"></asp:Literal>

<asp:GridView ID="gvResults" runat="server" AutoGenerateColumns="true"></asp:GridView>



        </div>
    </form>
</body>
</html>