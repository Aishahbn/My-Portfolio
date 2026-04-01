<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Aisha_Website_V1.Admin.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%: Page.Title %> </title>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="/Admin"><img src="../images/logo.jpg" alt="TAG Logo" width="50%"  /></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                          <asp:Repeater ID="rpMenu" runat="server">
      <ItemTemplate>
          <li class="nav-item">
              <a class="nav-link" href='<%# Eval("url") %>'>
                  <%# Eval("page_name") %>
                  </a>
               </li>
             </ItemTemplate>
           </asp:Repeater>


                    </ul>
                    <div class="d-flex">
                        <asp:Label ID="lblUser" class="nav-link" runat="server" Text=""></asp:Label>
                        <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-dark" OnClick="btnLogout_Click" />
                    </div>
                </div>
            </div>
        </nav>

        <div class="container body-content">
        </div>
    </form>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/Scripts/bootstrap.js") %>
    </asp:PlaceHolder>
</body>
</html>
