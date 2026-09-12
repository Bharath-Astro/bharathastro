<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Login | Bharat Astrotalk</title>
    <link rel="icon" href="assets/images/favicon.png" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/fonts.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/login.css" />
</head>
<body class="login-page">
    <main class="login-card" aria-labelledby="loginHeading">
        <img class="login-logo" src="assets/main/logo-25-2.png" alt="Bharat Astrotalk" />
        <h1 id="loginHeading" class="as_heading">Login</h1>
        <p class="login-intro">Welcome back. Sign in to continue.</p>
        <form id="loginForm" runat="server" ClientIDMode="Static" novalidate="novalidate">
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="phoneNumber" Text="Phone Number" />
                <asp:TextBox ID="phoneNumber" runat="server" ClientIDMode="Static" CssClass="form-control"
                    TextMode="Phone" inputmode="numeric" autocomplete="username" aria-required="true"
                    aria-describedby="phoneError" placeholder="Enter phone number" />
                <asp:Label ID="phoneError" runat="server" ClientIDMode="Static" CssClass="login-error" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="password" Text="Password" />
                <asp:TextBox ID="password" runat="server" ClientIDMode="Static" CssClass="form-control"
                    TextMode="Password" autocomplete="current-password" aria-required="true"
                    aria-describedby="passwordError" placeholder="Enter password" />
                <asp:Label ID="passwordError" runat="server" ClientIDMode="Static" CssClass="login-error" />
            </div>
            <asp:Label ID="loginError" runat="server" ClientIDMode="Static" CssClass="login-error login-message"
                role="alert" aria-live="polite" />
            <div class="login-actions">
                <button id="loginButton" type="submit" class="as_btn">Login</button>
            </div>
        </form>
    </main>
    <script src="assets/js/login.js"></script>
</body>
</html>
