<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pages.aspx.cs" Inherits="Aisha_Website_V1.Pages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-4">
        <h1><asp:Literal ID="litPageTitle" runat="server"></asp:Literal></h1>
        <hr />
        <asp:Literal ID="litContent" runat="server"></asp:Literal>
    </div>

</asp:Content>


