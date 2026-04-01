<%@ Page Language="C#" MasterPageFile="~/Admin/DefaultMasterPage.master" AutoEventWireup="true"
    CodeBehind="Admin-Permissions.aspx.cs" Inherits="Aisha_Website_V1.Admin.Admin_Permissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">







<h2 class="mb-4">Permissions Manager</h2>

<!-- Role Dropdown -->
<div class="mb-3">
    <label>Role</label>
    <asp:DropDownList ID="ddlRole" runat="server" CssClass="form-control" AutoPostBack="true"
    OnSelectedIndexChanged="ddlChanged">

        <asp:ListItem Value="">-- Select Role --</asp:ListItem>
        <asp:ListItem Value="1">Admin</asp:ListItem>
        <asp:ListItem Value="2">Webmaster</asp:ListItem>
        <asp:ListItem Value="3">Portal</asp:ListItem>




    </asp:DropDownList>
</div>

<!-- Page Dropdown -->
<div class="mb-3">
    <label>Page</label>
    <asp:DropDownList ID="ddlPage" runat="server" CssClass="form-control" AutoPostBack="true"
    OnSelectedIndexChanged="ddlChanged">
       <%-- <asp:ListItem Value="">-- Select admin page --</asp:ListItem>
         <asp:listitem Value="1">Pages</asp:ListItem>
         <asp:listitem Value="2">News</asp:ListItem>
         <asp:listitem Value="3">Users</asp:ListItem>
         <asp:listitem Value="4">Register</asp:ListItem>--%>
    </asp:DropDownList>
</div>

<!-- Permissions Checkboxes -->
<div class="mb-3">
    <label>Permissions:</label>
    <div>
        <asp:CheckBox ID="chkAdd" runat="server" Text="Add" />
        <asp:CheckBox ID="chkEdit" runat="server" Text="Edit" />
        <asp:CheckBox ID="chkDelete" runat="server" Text="Delete" />
        <asp:CheckBox ID="chkView" runat="server" Text="View" />
        <asp:CheckBox ID="chkRestore" runat="server" Text="Restore" />


    </div>
</div>

<!-- Buttons -->
<asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success me-2" OnClick="btnSave_Click" />
<asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" PostBackUrl="~/Admin/Default.aspx" />

</asp:Content>

