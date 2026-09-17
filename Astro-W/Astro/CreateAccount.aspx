<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="CreateAccount" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Create Account | Bharat Astrotalk</title>
    <link rel="icon" href="assets/images/favicon.png" />
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/fonts.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="assets/css/login.css" />
</head>
<body class="login-page signup-page">
    <main class="login-card" aria-labelledby="accountHeading">
        <img class="login-logo" src="assets/main/logo-25-2.png" alt="Bharat Astrotalk" />
        <h1 id="accountHeading" class="as_heading">Create your account</h1>
        <p class="login-intro">Sign up to explore Bharat Astrotalk.</p>
        <p class="auth-note">Demo registration: accounts are saved on this server. Email ownership is not verified.</p>
        <form id="loginForm" runat="server" ClientIDMode="Static" novalidate="novalidate" data-auth-form="true">
            <asp:HiddenField ID="authToken" runat="server" ClientIDMode="Static" />
            <asp:HiddenField ID="authAction" runat="server" ClientIDMode="Static" Value="password" />
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="email" Text="Email address" />
                <asp:TextBox ID="email" runat="server" ClientIDMode="Static" CssClass="form-control" TextMode="Email"
                    autocomplete="email" aria-required="true" aria-describedby="emailError" MaxLength="254"
                    data-error="emailError" data-required="Please enter your email address." data-email="true" placeholder="Enter your email" />
                <asp:Label ID="emailError" runat="server" ClientIDMode="Static" CssClass="login-error" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="password" Text="Password" />
                <asp:TextBox ID="password" runat="server" ClientIDMode="Static" CssClass="form-control" TextMode="Password"
                    autocomplete="new-password" aria-required="true" aria-describedby="passwordHelp passwordError"
                    data-error="passwordError" data-required="Please enter your password." data-password="true" placeholder="Enter password" />
                <p id="passwordHelp" class="auth-note">Use 12-128 characters.</p>
                <asp:Label ID="passwordError" runat="server" ClientIDMode="Static" CssClass="login-error" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="confirmPassword" Text="Confirm password" />
                <asp:TextBox ID="confirmPassword" runat="server" ClientIDMode="Static" CssClass="form-control" TextMode="Password"
                    autocomplete="new-password" aria-required="true" aria-describedby="confirmError"
                    data-error="confirmError" data-required="Please confirm your password." data-confirm="password" placeholder="Confirm password" />
                <asp:Label ID="confirmError" runat="server" ClientIDMode="Static" CssClass="login-error" />
            </div>
            <asp:Label ID="loginError" runat="server" ClientIDMode="Static" CssClass="login-error login-message" role="alert" aria-live="polite" />
            <div class="login-actions">
                <button id="loginButton" type="submit" class="as_btn" data-busy="Creating account...">Create Account</button>
            </div>
            <div class="auth-divider"><span>OR</span></div>
            <button type="submit" name="action" value="google" class="google-button" data-busy="Connecting...">Continue with Google</button>
            <asp:Label ID="googleNotice" runat="server" CssClass="auth-note" />
        </form>
        <p class="auth-footer">Already have an account? <asp:HyperLink ID="loginLink" runat="server" CssClass="as_orange" Text="Login" /></p>
    </main>
    <script src="assets/js/login.js"></script>
</body>
</html>
