<%@ Page Title="Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Aisha_Website_V1.Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Employee Management</h3>

    <asp:GridView ID="GridViewEmp" runat="server"
        AutoGenerateColumns="False"
        CssClass="table table-bordered"
        DataKeyNames="id"
        DataSourceID="EDS_Employee"
        AllowPaging="True" 
        AllowSorting="True">

        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="dob" HeaderText="Birthdate" DataFormatString="{0:yyyy-MM-dd}" />
            <asp:BoundField DataField="major" HeaderText="Major" />
            <asp:BoundField DataField="dept_id" HeaderText="Dept ID" />
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
        </Columns>

    </asp:GridView>

    <asp:EntityDataSource ID="EDS_Employee" runat="server"
        ConnectionString="name=AishaDBEntities"
        DefaultContainerName="AishaDBEntities"
        EntitySetName="tbl_Employee"
        EnableInsert="True" EnableUpdate="True" EnableDelete="True">
    </asp:EntityDataSource>

    <hr />

    <h4>Add Employee</h4>

    Name:

    <asp:TextBox ID="txtEmpName" runat="server" CssClass="form-control" />

    Birthdate:
    <asp:TextBox ID="txtEmpDob" runat="server" CssClass="form-control" TextMode="Date" />

    Major:
    <asp:TextBox ID="txtEmpMajor" runat="server" CssClass="form-control" />

    Department:
    <asp:DropDownList ID="ddlDept" runat="server" CssClass="form-control"
        DataSourceID="EDS_DeptList"
        DataTextField="dept_name"
        DataValueField="dept_id">
    </asp:DropDownList>

    <asp:EntityDataSource ID="EDS_DeptList" runat="server"
        ConnectionString="name=AishaDBEntities"
        DefaultContainerName="AishaDBEntities"
        EntitySetName="tbl_Department">
    </asp:EntityDataSource>


    <asp:Button ID="btnSaveEmp" runat="server"
        Text="Save" CssClass="btn btn-primary"
        OnClick="btnSaveEmp_Click" />


    <asp:Label ID="lblEmpMsg" runat="server" ForeColor="Red" />

</asp:Content>
