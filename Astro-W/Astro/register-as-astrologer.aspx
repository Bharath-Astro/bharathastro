<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register-as-astrologer.aspx.cs" Inherits="register_as_astrologer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><a href="Default.aspx">Go home</a>
<div style="width: 700px; margin: 20px auto; font-family: Arial;">
    <h2>Astrologer Registration</h2>

    <asp:Panel ID="pnlForm" runat="server">
        <table cellpadding="8" cellspacing="0" width="100%">
            <tr>
                <td>First Name</td>
                <td><asp:TextBox ID="txtFirstName" runat="server" MaxLength="64" /></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><asp:TextBox ID="txtLastName" runat="server" MaxLength="64" /></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="1">Male</asp:ListItem>
                        <asp:ListItem Value="2">Female</asp:ListItem>
                        <asp:ListItem Value="3">Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Date of Birth</td>
                <td><asp:TextBox ID="txtDOB" runat="server" TextMode="Date" /></td>
            </tr>
            <tr>
                <td>Languages</td>
                <td><asp:TextBox ID="txtLanguages" runat="server" MaxLength="256" /></td>
            </tr>
            <tr>
                <td>Skills</td>
                <td><asp:TextBox ID="txtSkills" runat="server" MaxLength="256" /></td>
            </tr>
            <tr>
                <td>Email ID</td>
                <td><asp:TextBox ID="txtEmail" runat="server" MaxLength="128" /></td>
            </tr>
            <tr>
                <td>Mobile Number</td>
                <td><asp:TextBox ID="txtMobile" runat="server" MaxLength="16" /></td>
            </tr>
            <tr>
                <td>Phone Using</td>
                <td><asp:TextBox ID="txtPhoneUsing" runat="server" MaxLength="32" /></td>
            </tr>
            <tr>
                <td>Total Years of Experience</td>
                <td><asp:TextBox ID="txtExp" runat="server" TextMode="Number" /></td>
            </tr>
            <tr>
                <td>Specializations</td>
                <td><asp:TextBox ID="txtSpecializations" runat="server" MaxLength="128" /></td>
            </tr>
            <tr>
                <td>Languages Best</td>
                <td><asp:TextBox ID="txtLanguagesBest" runat="server" MaxLength="128" /></td>
            </tr>
<tr>
    <td>Profile Image</td>
    <td>
        <asp:FileUpload ID="fuProfileImage" runat="server" />
    </td>
</tr>
<tr>
    <td colspan="2" align="center">
        <asp:Label ID="lblMessage" runat="server" CssClass="text-info"></asp:Label>
    </td>
</tr>

            <tr>
                <td colspan="2" align="right">
                    <asp:Button ID="btnSubmit" runat="server" Text="Register Astrologer" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>

    </asp:Panel>
</div>

        </div>
    </form>
</body>
</html>
