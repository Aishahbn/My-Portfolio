<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="Admin-AdminPage.aspx.cs" Inherits="Aisha_Website_V1.Admin.Admin_AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<asp:HiddenField ID="hdnId" runat="server" />

  
  <asp:MultiView ID="MultiView1" runat="server">



      <!-- View 1: Grid -->
        <asp:View ID="View1" runat="server">

            <h2>Admin Pages </h2>

            <asp:Button ID="btnAdd" runat="server" Text="Add New Page"
                CssClass="btn btn-success mb-3" OnClick="btnAdd_Click" />

            <%--Archive--%>
            <asp:Button ID="btnArchive" runat="server" Text="Archive Pages"
                 CssClass="btn btn-warning mb-3" OnClick="btnArchive_Click" />


            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False"
                CssClass="table table-dark table-striped"
                DataKeyNames="id" OnRowCommand="GridView1_RowCommand"
                DataSourceID="EDS_AdminPages">

                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="page_name" HeaderText="Page Name" />
                    <asp:BoundField DataField="url" HeaderText="URL" />
                    <asp:BoundField DataField="status" HeaderText="Status" />
                    <asp:BoundField DataField="archive" HeaderText="Archive" />

                    <asp:ButtonField CommandName="editRow" Text="Edit"
                        ControlStyle-CssClass="btn btn-primary btn-sm" />

                   <%--10/12/2025--%>
                    <asp:ButtonField CommandName="deleteRow" Text="Delete"
                        ControlStyle-CssClass="btn btn-danger btn-sm" />
 

                    





                </Columns>

            </asp:GridView>

             <asp:EntityDataSource ID="EDS_AdminPages" runat="server"
                ConnectionString="name=AishaDBEntities"
                DefaultContainerName="AishaDBEntities"
                EntitySetName="tbl_admin_page"
                EnableInsert="True" EnableUpdate="True" EnableDelete="True"
                Where="it.archive = false">
            </asp:EntityDataSource>

        </asp:View>


            

        <!-- View 2: Add/Edit -->
        <asp:View ID="View2" runat="server">

            <h3>Add / Edit Page</h3>

            Page Name:
            <asp:TextBox ID="txtPageName" runat="server" CssClass="form-control"></asp:TextBox>

            URL:
            <asp:TextBox ID="txtUrl" runat="server" CssClass="form-control"></asp:TextBox>

            Status:
            <asp:RadioButtonList ID="rbStatus" runat="server">
                <asp:ListItem Value="1">Online</asp:ListItem>
                <asp:ListItem Value="0">Offline</asp:ListItem>
            </asp:RadioButtonList>

           

            <asp:Button ID="btnSave" runat="server" Text="Save"
                CssClass="btn btn-success" OnClick="btnSave_Click" />

            <asp:Button ID="btnCancel" runat="server" Text="Cancel"
                CssClass="btn btn-secondary" OnClick="btnCancel_Click" />

        </asp:View>



      <%--archive page--%>

       <!-- View 3: archive -->

      <asp:View ID="View3_Archive" runat="server">
    <h3>Archived Pages</h3>

                  


    <asp:GridView ID="gvArchive" runat="server" AutoGenerateColumns="False"
        CssClass="table table-dark table-striped"
        DataKeyNames="id" OnRowCommand="gvArchive_RowCommand"
        DataSourceID="EDS_Archive">

        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" />
            <asp:BoundField DataField="page_name" HeaderText="Page Name" />
            <asp:BoundField DataField="url" HeaderText="URL" />

            <asp:ButtonField CommandName="restoreRow" Text="Restore"
                ControlStyle-CssClass="btn btn-success btn-sm" />

            <asp:ButtonField CommandName="removeRow" Text="Remove"
                ControlStyle-CssClass="btn btn-danger btn-sm" />
        </Columns>

    </asp:GridView>

    <asp:EntityDataSource ID="EDS_Archive" runat="server"
        ConnectionString="name=AishaDBEntities"
        DefaultContainerName="AishaDBEntities"
        EntitySetName="tbl_admin_page"
        Where="it.archive = true">
    </asp:EntityDataSource>

</asp:View>










    </asp:MultiView>

</asp:Content>
