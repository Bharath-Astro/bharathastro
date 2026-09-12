<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="t_Default" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" ID="txtText1" TextMode="MultiLine" Columns="120" Rows="16"></asp:TextBox>
            Translate to <asp:DropDownList runat="server" ID="ddlTransTo">
                <asp:ListItem Value="te">Telugu</asp:ListItem>
                <asp:ListItem Value="">Hindi</asp:ListItem>
<asp:ListItem Value="bn">Bengali</asp:ListItem>
<asp:ListItem Value="ta">Tamil</asp:ListItem>
<asp:ListItem Value="kn">Kannada</asp:ListItem>
<asp:ListItem Value="ml">Malayalam</asp:ListItem>
<asp:ListItem Value="mr">Marathi</asp:ListItem>
<asp:ListItem Value="gu">Gujarati</asp:ListItem>
<asp:ListItem Value="pa">Punjabi</asp:ListItem>
<asp:ListItem Value="ur">Urdu</asp:ListItem>
<asp:ListItem Value="as">Assamese</asp:ListItem>
<asp:ListItem Value="or">Odia (Oriya)</asp:ListItem>

                         </asp:DropDownList>
            <asp:Button runat="server" ID="btnTranslate" Text="Translate" OnClick="btnTranslate_Click" />
            <br /><div id="contentDiv" runat="server"></div>
        </div>
    </form>
</body>
</html>
