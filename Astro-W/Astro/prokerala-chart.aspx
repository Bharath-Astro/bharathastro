<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="prokerala-chart.aspx.cs" Inherits="prokerala_chart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section class="as_breadcrum_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <%--<h1>Checkout</h1>--%> 

<%--                        <ul class="breadcrumb"> 
                            <li><a href="#">Home</a></li>
                            <li>Checkout</li>
                        </ul>--%>
                    </div>
                </div>
            </div>
        <!--</div>-->
        </section>
      
        <section class="as_checkout_wrapper as_padderBottom80 as_padderTop80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-sm-12 col-xs-12 offset-lg-1">
                        <div class="checkout_wrapper_box">




        <div>
            <h2>Chart</h2>
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

            <asp:Literal ID="litPanchang" runat="server"></asp:Literal>
<div style="background-color:#EEEEEE; margin:10px;">

            <asp:Literal ID="litChart" runat="server"></asp:Literal>

</div>
    
        </div>




                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>

