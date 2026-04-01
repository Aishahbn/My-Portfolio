<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Aisha_Website_V1.Login" %>


<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f5f2;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .login-box {
        background-color:#c8b7a6;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.2);
        width: 350px;
        color: #3d2e2a;
    }

    .login-box h2 {
        text-align: center;
        margin-bottom: 30px; 
    }

    .login-box label {
        font-weight: bold;
        margin-top: 10px;
        display: block;
    }
     

    .login-box .btn-primary {
        width: 100%;
        padding: 10px;
        border-radius: 5px;
        background-color: #8e6d55;
        border: none;
        color: #fff;
        font-weight: bold;
        cursor: pointer;
    }

    .login-box .btn-primary:hover {
        background-color: #71543e;
    }

    .login-box .lblMsg {
        display: block;
        text-align: center;
        margin-top: 10px;
    }
</style>

</head>
<body>

    <form runat="server">
        <div class="login-box">

        <h2>TAG Global</h2>

            <!--validation for username-->
            <label for="txtUser">Username:</label>
        <asp:TextBox ID="txtUser" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator 
    runat="server"
    ControlToValidate="txtUser"
    ErrorMessage="* required"
    ForeColor="Red" />


            <!--validation for password-->
       <label for="txtPass">Password:</label>
       <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
       <asp:RequiredFieldValidator 
    runat="server"
    ControlToValidate="txtPass"
    ErrorMessage="* required"
    ForeColor="Red" />


        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary mt-4"
            OnClick="btnLogin_Click" />

        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>

    <asp:PlaceHolder runat="server">
       <%: Scripts.Render("~/Scripts/bootstrap.js") %>
   </asp:PlaceHolder>
    </form>
</body>
</html>
