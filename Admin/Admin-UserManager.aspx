<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Admin/DefaultMasterPage.Master" CodeBehind="Admin-UserManager.aspx.cs" Inherits="Aisha_Website_V1.Admin.Admin_UserManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="mb-4">User Manager</h2>

    <div class="mb-3">
        <label>Username</label>
        <asp:TextBox ID="txtUser" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="mb-3">
        <label>Password</label>
        <asp:TextBox ID="txtPass" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="mb-3">
        <label>Confirm Password</label>
        <asp:TextBox ID="txtConfirm" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="mb-3">
        <label>Role</label>
        <asp:DropDownList ID="ddlRole" runat="server" CssClass="form-control">
            <asp:ListItem Value="1">Admin</asp:ListItem>
            <asp:ListItem Value="2">Webmaster</asp:ListItem>
            <asp:ListItem Value="3">Portal</asp:ListItem>
        </asp:DropDownList>
    </div>

    <div class="mb-3">
        <asp:CheckBox ID="chkActive" runat="server" Text="Active" />
    </div>

    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnSave_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" PostBackUrl="~/Admin/Default.aspx" />

</asp:Content>