<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="Admin-News.aspx.cs" Inherits="Aisha_Website_V1.Admin.Admin_News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


        <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">

            <h2>News Category</h2>

            <asp:Button ID="btnAddNewsCat" runat="server" Text="Add News Category" CssClass="btn btn-success"
               OnClick="btnAddNewsCat_Click" />           

            <asp:GridView ID="GridViewCat" runat="server"
                CssClass="table table-bordered table-striped table-hover table-dark"
                AutoGenerateColumns="False"
                DataKeyNames="nct_id"
                DataSourceID="EDS_NewsCat"
                HeaderStyle-BackColor="#007BFF" 
                HeaderStyle-ForeColor="White">
                

                <Columns>
                    <asp:BoundField DataField="nct_id" HeaderText="ID" ReadOnly="True" />
                    <asp:BoundField DataField="nct_title" HeaderText="Title" />
                    <asp:BoundField DataField="nct_key" HeaderText="key" />
                    <asp:BoundField DataField="nct_lang" HeaderText="Lang" />
                    <asp:BoundField DataField="nct_status" HeaderText="Status" />
                      <asp:HyperLinkField 
            HeaderText="Sub"
            Text="sub"
            DataNavigateUrlFields="nct_key"
            DataNavigateUrlFormatString="Admin-News.aspx?nctkey={0}" />
                     

                </Columns>

            </asp:GridView>

            <asp:EntityDataSource ID="EDS_NewsCat" runat="server"
                ConnectionString="name=AishaDBEntities"
                DefaultContainerName="AishaDBEntities"
                EntitySetName="tbl_news_cat"
                EnableInsert="True" EnableUpdate="True" EnableDelete="True">
            </asp:EntityDataSource>



        </asp:View>
         <asp:View ID="View2" runat="server">
                <h3>Add Category</h3>

            Title:
            <asp:TextBox ID="txtNctTitle" runat="server" CssClass="form-control"></asp:TextBox>
            key
 <asp:TextBox ID="txtNCTKey" runat="server" CssClass="form-control"></asp:TextBox>
 
           

            Status:
            <asp:RadioButtonList ID="rbNctStatus" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">Active</asp:ListItem>
                <asp:ListItem Value="0">Inactive</asp:ListItem>
            </asp:RadioButtonList>

          
            <asp:Button ID="btnSaveNct" runat="server" Text="Save Category"
                CssClass="btn btn-success" OnClick="btnSaveNct_Click" />

            <asp:Button ID="btnCancelNct" runat="server" Text="Cancel"
                CssClass="btn btn-dark" OnClick="btnCancelNct_Click" />

          
            <asp:Label ID="lblNctMsg" runat="server" ForeColor="Red"></asp:Label>
         </asp:View>
        

        <!--grid to news-->

        <asp:View ID="View3" runat="server">


            <h2> News </h2>

            <asp:Button ID="btnAddNews" runat="server" Text="AddNews" OnClick="btnAddNews_Click" />

<asp:GridView ID="GridView1" runat="server"
    AutoGenerateColumns="False"
    DataKeyNames="news_id"
    DataSourceID="EDS_News"
    CssClass="table table-bordered">

    <Columns>
        <asp:BoundField DataField="news_id" HeaderText="ID" ReadOnly="True" />
        <asp:BoundField DataField="news_title" HeaderText="Title" />
        <asp:BoundField DataField="news_lang" HeaderText="Lang" />
        <asp:BoundField DataField="news_body" HeaderText="Body" />
        <asp:BoundField DataField="news_status" HeaderText="Status" />
        <asp:BoundField DataField="news_archive" HeaderText="Archive" />
        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
        


    </Columns>

</asp:GridView>
            <asp:EntityDataSource ID="EDS_News" runat="server"
    ConnectionString="name=AishaDBEntities"
    DefaultContainerName="AishaDBEntities"
    EntitySetName="tbl_news"
    EnableInsert="True" EnableUpdate="True" EnableDelete="True" AutoGenerateWhereClause="true">
                <WhereParameters>
                    <asp:QueryStringParameter QueryStringField="nctkey" Name="nws_cat_key" Type="String"/>
                    <asp:CookieParameter CookieName="lang" Name="news_lang" Type="String"/>
                </WhereParameters>
</asp:EntityDataSource>





        </asp:View>

        <asp:View ID="View4" runat="server">


            Title
    <asp:TextBox ID="txtSubTitle" runat="server" CssClass="form-control"></asp:TextBox>

   
           Body
<asp:TextBox ID="txtbody" runat="server" CssClass="form-control"></asp:TextBox>

    Status
    <asp:RadioButtonList ID="rbSubStatus" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Value="1">Active</asp:ListItem>
        <asp:ListItem Value="0">Inactive</asp:ListItem>
    </asp:RadioButtonList>

    <asp:Button ID="btnSaveSub" runat="server" Text="Save Sub Category"
        CssClass="btn btn-success" OnClick="btnSaveSub_Click" />

    <asp:Button ID="btnCancelSub" runat="server" Text="Cancel"
        CssClass="btn btn-dark" OnClick="btnCancelSub_Click" />

    <asp:Label ID="lblSubMsg" runat="server" ForeColor="Red"></asp:Label>

        </asp:View>
    </asp:MultiView>
</asp:Content>
