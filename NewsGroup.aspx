<%@ Page Title="News" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewsGroup.aspx.cs" Inherits="Aisha_Website_V1.NewsGroup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-4">
    <h1><asp:Literal ID="litCatTitle" runat="server"></asp:Literal></h1>
    <hr />

    <div class="row">
        <asp:Repeater ID="rptNews" runat="server">
            <ItemTemplate>
                <div class="col-md-4 mb-4">
                    <div class="card news-card shadow-sm h-100">

                        <%--<img src='<%# Eval("news_image") %>' class="card-img-top" alt="news-image" />--%>

                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("news_title") %></h5>

                            <p class="card-text">
                                <%# Eval("news_body").ToString().Length > 120 
                                        ? Eval("news_body").ToString().Substring(0,120) + "..."
                                        : Eval("news_body") %>
                            </p>

                            <a href='News.aspx?id=<%# Eval("news_id") %>&lang=<%# Eval("news_lang") %>'
                               class="btn btn-primary mt-auto">
                                Read More
                            </a>
                        </div>

                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</div>


</asp:Content>
