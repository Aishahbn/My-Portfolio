<%@ Page Title="Departments" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="Aisha_Website_V1.Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Department Management</h3>

    <asp:GridView ID="GridViewDept" runat="server" CssClass="table table-bordered"
        AutoGenerateColumns="False"
        DataKeyNames="dept_id"
        DataSourceID="EDS_Departments"
        AllowPaging="True"
        AllowSorting="True">

        <Columns>
            <asp:BoundField DataField="dept_id" HeaderText="ID" ReadOnly="True" />
            <asp:BoundField DataField="dept_name" HeaderText="Name" />
            <asp:BoundField DataField="dept_status" HeaderText="Status" />

            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
        </Columns>

    </asp:GridView>

    <asp:EntityDataSource ID="EDS_Departments" runat="server"
        ConnectionString="name=CMSModel"
        DefaultContainerName="CMSModel"
        EntitySetName="tbl_Department"
        EnableInsert="True"
        EnableUpdate="True"
        EnableDelete="True">
    </asp:EntityDataSource>

    <hr />

    <h4>Add New Department</h4>

    Name:
    <asp:TextBox ID="txtDeptName" runat="server" CssClass="form-control" />

    <br />

    Status:
    <asp:RadioButtonList ID="rbDeptStatus" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Value="1">Active</asp:ListItem>
        <asp:ListItem Value="0">Inactive</asp:ListItem>
    </asp:RadioButtonList>

    <br />

    <asp:Button ID="btnSaveDept" runat="server" CssClass="btn btn-primary"
        Text="Save" OnClick="btnSaveDept_Click" />

    <br /><br />

    <asp:Label ID="lblDeptMsg" runat="server" ForeColor="Red" />

</asp:Content>
