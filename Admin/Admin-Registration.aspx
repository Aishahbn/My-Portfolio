<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/DefaultMasterPage.master" CodeBehind="Admin-Registration.aspx.cs" Inherits="Aisha_Website_V1.Admin.Admin_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <asp:HiddenField ID="hdnId" runat="server" />

    <asp:MultiView ID="MultiView1" runat="server">

      <%-- VIEW 1: Grid--%>
        <asp:View ID="View1" runat="server">
            <h2>Registration Requests</h2>

            <asp:Button runat="server" ID="btnAdd" Text="Add" CssClass="btn btn-success mb-3"
                OnClick="btnAdd_Click" />

            <asp:GridView ID="gvRegs" runat="server"
                CssClass="table table-bordered table-striped table-hover"
                AutoGenerateColumns="false"
                DataKeyNames="reg_id"
                OnRowCommand="gvRegs_RowCommand">

                <Columns>

                    <asp:BoundField DataField="reg_id" HeaderText="ID" />
                    <asp:BoundField DataField="full_name" HeaderText="Full Name" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="status" HeaderText="Status" />

                    <%--EDIT--%>
                    <asp:ButtonField CommandName="editRow" Text="Edit"
                        ControlStyle-CssClass="btn btn-primary btn-sm" />

                    <%--DELETE--%>

                    <asp:ButtonField CommandName="deleteRow" Text="Delete"
                        ControlStyle-CssClass="btn btn-danger btn-sm" />

                </Columns>

            </asp:GridView>
        </asp:View>

      <%-- VIEW 2: EDIT FORM--%>
        <asp:View ID="View2" runat="server">

            <h3>Edit Request</h3>

            <div class="row">

                <div class="col-md-6">
                    Full Name:
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-6">
                    Email:
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-6 mt-3">
                    Phone:
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-6 mt-3">
                    Address:
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" />
                </div>

                <div class="col-md-6 mt-3">

                    Certificate:
                    <asp:DropDownList ID="ddlCert" runat="server" CssClass="form-control">
                        <asp:ListItem>Bachelor</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
                        <asp:ListItem>Doctorate</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="col-md-6 mt-3">
                    Gender:
                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="col-md-6 mt-3">
                    Date of Birth:
                    <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date" />
                </div>

               <%--STATUS--%>
                <div class="col-md-6 mt-4">
                    <h5>Status</h5>
                    <asp:RadioButtonList ID="rbStatus" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="Pending" Selected="True">Pending</asp:ListItem>
                        <asp:ListItem Value="Approved">Approved</asp:ListItem>
                        <asp:ListItem Value="Rejected">Rejected</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

            </div>

            <%--BUTTONS--%>
            <asp:Button ID="btnSave" runat="server" Text="Save"
                CssClass="btn btn-success mt-3" OnClick="btnSave_Click" />

            <asp:Button ID="btnCancel" runat="server" Text="Cancel"
                CssClass="btn btn-dark mt-3" OnClick="btnCancel_Click" />

        </asp:View>

    </asp:MultiView>

</asp:Content>
















    <%--<h2 class="mb-4">Registration Requests</h2>

    <asp:GridView ID="gvRegs" runat="server" CssClass="table table-bordered table-striped"
        AutoGenerateColumns="False">

        <Columns>
            <asp:BoundField DataField="reg_id" HeaderText="ID" />
            <asp:BoundField DataField="full_name" HeaderText="Full Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="status" HeaderText="Status" />

            <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <a class="btn btn-primary btn-sm"
                       href='Admin-Registration-Edit.aspx?id=<%# Eval("reg_id") %>'>Edit</a>

                    <a class="btn btn-danger btn-sm"
                       href='Admin-Registration-Delete.aspx?id=<%# Eval("reg_id") %>'>Delete</a>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>

    </asp:GridView>

</asp:Content>--%>

