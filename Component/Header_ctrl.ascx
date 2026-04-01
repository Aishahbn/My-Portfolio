<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header_ctrl.ascx.cs" Inherits="Aisha_Website_V1.Component.Header_ctrl" %>
         <style>
      footer {
          background-color: #7a4e34;
          color: white;
          padding: 20px;
          align-item: center;
      }

          footer img {
              width: 100px;
              height: auto;
          }

      a {
          color: #fff;
          text-decoration: none;
          margin-right: 10px;
      }

      .menu {
          border-collapse: collapse;
          background-color: #4d230b;
          color: #fff;
           
      }
      .nav-link{
          color:#fff;
          font-size:22px;
      }

          .menu > ul {
              display: flex;
          }

      ul {
          list-style: none;
      }

      .content {
          font-size: 20px;
          margin-bottom: 200px;
          padding: 10px;
      }
  </style>
  <nav class="navbar navbar-expand-lg menu">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">
      <img src="/images/logo.jpg" alt="TAG Logo" height="40">
    </a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <asp:Repeater ID="rptMenu" runat="server" OnItemDataBound="rptMenu_ItemDataBound">
          <ItemTemplate>
            <li runat="server" id="liItem" class="nav-item dropdown">
              <a runat="server" id="lnkMenu" class="nav-link" href=''>
                <%# Eval("page_title") %>
              </a>
              <asp:Repeater ID="rptSubMenu" runat="server" OnItemDataBound="rptSubMenu_ItemDataBound"
                DataSource='<%# GetSubPages(Convert.ToInt32(Eval("page_id"))) %>'>
                <HeaderTemplate><ul class="dropdown-menu"></HeaderTemplate>
                <ItemTemplate>
                  <li><a class="dropdown-item" runat="server" id="linksub" href=''><%# Eval("page_title") %></a></li>
                </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>


              </asp:Repeater>
            </li>
          </ItemTemplate>
        </asp:Repeater> 
      </ul>
    </div>
  </div>
</nav>