<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="Admin-Pages.aspx.cs" Inherits="Aisha_Website_V1.Admin.Admin_Pages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <asp:HiddenField ID="hdnId" runat="server" />

  
  <asp:MultiView ID="MultiView1" runat="server">

      <!-- view 1 columns -->
      <asp:View ID="View1" runat="server">
            <h2>pages</h2>
          <asp:Button runat="server" ID="btnAdd" Text="Add" CssClass="btn btn-success" OnClick="btnAddPage_Click" />

          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover table-dark" DataKeyNames="page_id" DataSourceID="EDS_Pages" OnRowCommand="GridView1_RowCommand" HeaderStyle-BackColor="#007BFF" 
              HeaderStyle-ForeColor="White">

 

  
              <Columns>
                  <asp:BoundField DataField="page_id" HeaderText="ID" ReadOnly="True" />
                  <asp:BoundField DataField="page_title" HeaderText="Title" />
                  <asp:BoundField DataField="page_status" HeaderText="Status" />
                  <asp:BoundField DataField="page_key" HeaderText="Key" />
                  <asp:HyperLinkField
                      HeaderText="Sub"
                      Text="sub"
                      DataNavigateUrlFields="page_id"
                      DataNavigateUrlFormatString="Admin-pages.aspx?pageparentid={0}" />





                  <%--edit button--%>
                  <asp:ButtonField CommandName="editPage" Text="Edit" ControlStyle-CssClass="btn btn-success" />
                  <asp:ButtonField CommandName="deletePage" Text="Delete"  ControlStyle-CssClass="btn btn-danger" />
                                 

              </Columns>


          </asp:GridView>

          <asp:EntityDataSource ID="EDS_Pages" runat="server"
              ConnectionString="name=AishaDBEntities"
              DefaultContainerName="AishaDBEntities"
              EntitySetName="tbl_pages"
              EnableInsert="True" EnableUpdate="True" EnableDelete="True" AutoGenerateWhereClause="true">
              <WhereParameters>
                   <asp:QueryStringParameter QueryStringField="pageparentid" DefaultValue="0" Name="page_parent_id" Type="Int16"/>
                  <asp:CookieParameter CookieName="lang" Name="page_lang" Type="String" />
              </WhereParameters>
          </asp:EntityDataSource>

      </asp:View>

      <!-- view 2 Add Page -->
      <asp:View ID="View2" runat="server">

          <h3>Add New Page</h3>
          <div class="row">
              <div class="col-md-3">

                  <%--radio buttons for page and url--%>

                  <%--Page Type (page/url)--%>

                  Page Type:
<asp:RadioButtonList ID="rbPageType" runat="server" RepeatDirection="Horizontal"
    AutoPostBack="true" OnSelectedIndexChanged="rbPageType_SelectedIndexChanged">
    <asp:ListItem Selected="True" Value="page">Page</asp:ListItem>
    <asp:ListItem Value="url">URL</asp:ListItem>
</asp:RadioButtonList>

                  <%--show content when i select page--%>
                   
                  Page Key:
          <asp:TextBox ID="txtPageKey" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
              <div class="col-md-3">
                  Page Title:
                  <asp:TextBox ID="txtPageTitle" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
              <div class="col-md-3">
                  Status
                      <asp:RadioButtonList ID="rbPageStatus" runat="server" RepeatDirection="Horizontal">
                          <asp:ListItem Value="0">Offline</asp:ListItem>


                          <asp:ListItem Value="1">Online</asp:ListItem>
                          <asp:ListItem Value="2">Pending</asp:ListItem>
                      </asp:RadioButtonList>
              </div>
              <div class="col-md-3">
                  Show On Menu:
<asp:CheckBox ID="chkMenu" runat="server" />
              </div>

            
         

                    <div id="divContent" class="col-md-12" runat="server" visible="true">
                      content:
    
    <asp:TextBox ID="contentPage" runat="server" TextMode="MultiLine"
        CssClass="form-control" Rows="20"></asp:TextBox>
</div>

                   <%--hide content when i select url--%>

                  <div id="divURL" runat="server" visible="false">
    URL:
    <asp:TextBox ID="txtPageURL" runat="server" CssClass="form-control"></asp:TextBox>
</div>

 </div>

          <asp:Button ID="btnSavePage" runat="server" Text="Save" CssClass="btn btn-success"
              OnClick="btnSavePage_Click" />

          <asp:Button ID="btnCancelPage" runat="server" Text="Cancel" CssClass="btn btn-dark"
              OnClick="btnCancelPage_Click" />

          <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>

      </asp:View>

  </asp:MultiView>
      
</asp:Content>
