<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MatchingBirthDetails.ascx.cs" Inherits="MatchingBirthDetailsControl" %>
<div class="form-group">
    <asp:Label runat="server" AssociatedControlID="txtName" Text="Name" />
    <asp:TextBox runat="server" ID="txtName" CssClass="form-control" MaxLength="100" placeholder="Name" />
</div>
<div class="row">
    <div class="col-md-6 form-group">
        <asp:Label runat="server" AssociatedControlID="txtDate" Text="Birth date" />
        <asp:TextBox runat="server" ID="txtDate" TextMode="Date" CssClass="form-control" />
    </div>
    <div class="col-md-6 form-group">
        <asp:Label runat="server" AssociatedControlID="txtTime" Text="Birth time (24-hour)" />
        <asp:TextBox runat="server" ID="txtTime" TextMode="Time" step="1" CssClass="form-control" />
    </div>
</div>
<div class="form-group">
    <asp:Label runat="server" AssociatedControlID="ddlPlace" Text="Birth place" />
    <asp:DropDownList runat="server" ID="ddlPlace" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="PlaceChanged">
        <asp:ListItem Value="" Text="Select a birth city" />
        <asp:ListItem Value="17.3850,78.4867" Text="Hyderabad, India" />
        <asp:ListItem Value="16.5062,80.6480" Text="Vijayawada, India" />
        <asp:ListItem Value="17.6868,83.2185" Text="Visakhapatnam, India" />
        <asp:ListItem Value="13.6288,79.4192" Text="Tirupati, India" />
        <asp:ListItem Value="12.9716,77.5946" Text="Bengaluru, India" />
        <asp:ListItem Value="13.0827,80.2707" Text="Chennai, India" />
        <asp:ListItem Value="19.0760,72.8777" Text="Mumbai, India" />
        <asp:ListItem Value="28.6139,77.2090" Text="Delhi, India" />
        <asp:ListItem Value="22.5726,88.3639" Text="Kolkata, India" />
        <asp:ListItem Value="custom" Text="Another place (enter coordinates)" />
    </asp:DropDownList>
</div>
<asp:Panel runat="server" ID="pnlCustom" Visible="false">
    <div class="form-group">
        <asp:Label runat="server" AssociatedControlID="txtPlace" Text="Birth place name" />
        <asp:TextBox runat="server" ID="txtPlace" CssClass="form-control" MaxLength="150" placeholder="City, country" />
    </div>
    <div class="row">
        <div class="col-md-6 form-group">
            <asp:Label runat="server" AssociatedControlID="txtLatitude" Text="Latitude" />
            <asp:TextBox runat="server" ID="txtLatitude" CssClass="form-control" MaxLength="20" placeholder="e.g. 17.3850" />
        </div>
        <div class="col-md-6 form-group">
            <asp:Label runat="server" AssociatedControlID="txtLongitude" Text="Longitude" />
            <asp:TextBox runat="server" ID="txtLongitude" CssClass="form-control" MaxLength="20" placeholder="e.g. 78.4867" />
        </div>
    </div>
</asp:Panel>
<div class="form-group">
    <asp:Label runat="server" AssociatedControlID="txtOffset" Text="UTC offset at birth" />
    <asp:TextBox runat="server" ID="txtOffset" CssClass="form-control" MaxLength="6" placeholder="e.g. +05:30" />
    <p class="matching-help">India usually uses +05:30. For other locations or historical dates, enter the offset that applied at birth, including daylight saving time.</p>
</div>
