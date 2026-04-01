<%@ Page Title="News" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Aisha_Website_V1.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container mt-4">

    <h1>News</h1>

    <h2><asp:Literal ID="litnewsTitle" runat="server"></asp:Literal></h2>
 

  <p>  <asp:Literal ID="litnewsContent" runat="server"></asp:Literal></p>

</div>

 


</asp:Content>



