<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Aisha_Website_V1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Registration</title>
</head>
<body>
    <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


        <h2>User Registration</h2>

        <div style="max-width:400px; margin:auto;">



            <!-- Full Name -->
    <label>Full Name</label>
    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="Required" ForeColor="Red" />

    <!-- Address -->
    <label class="mt-3">Address</label>
    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>

    <!-- Personal Image -->
    <label class="mt-3">Personal Image (jpg/png)</label>
    <asp:FileUpload ID="fuImage" runat="server" CssClass="form-control" />

    <!-- CV -->
    <label class="mt-3">CV (PDF Only)</label>
    <asp:FileUpload ID="fuCV" runat="server" CssClass="form-control" />

    <!-- Date of Birth -->
    <label class="mt-3">Date of Birth</label>
    <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>

    <!-- Email -->
    <label class="mt-3">Email</label>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail"
        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
        ErrorMessage="Invalid Email" ForeColor="Red" />

    <!-- Phone -->
    <label class="mt-3">Phone Number</label>
    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>

    <!-- Gender -->
    <label class="mt-3">Gender</label><br />
    <asp:RadioButton ID="rbMale" runat="server" GroupName="gender" Text="Male" />
    <asp:RadioButton ID="rbFemale" runat="server" GroupName="gender" Text="Female" />

    <!-- Certificate -->
    <label class="mt-3">Certificate</label>
    <asp:DropDownList ID="ddlCert" runat="server" CssClass="form-control">
        <asp:ListItem>Bachelor</asp:ListItem>
        <asp:ListItem>Master</asp:ListItem>
        <asp:ListItem>Doctorate</asp:ListItem>
    </asp:DropDownList>

    <!-- Hidden Accept -->
    <asp:HiddenField ID="hidAccepted" runat="server" />

    <!-- Accept Button -->
    <asp:Button ID="btnAccept" runat="server" Text="Accept Terms"
        CssClass="btn btn-info mt-3"
        OnClientClick="showTerms(); return false;" />

    <!-- Save -->
    <asp:Button ID="btnSave" runat="server" Text="Save"
        CssClass="btn btn-success mt-3"
        OnClick="btnSave_Click" />

    <asp:Label ID="lblMsg" runat="server" CssClass="text-success"></asp:Label>
            
</div>

        <!-- POPUP (Terms & Conditions) -->
<div class="modal" id="termsModal" tabindex="-1">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">


        <div class="modal-header">
        <h5 class="modal-title">Terms & Conditions</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

        <div class="modal-body">
        <p>
          Terms & Conditions.....
        </p>

        <input type="checkbox" id="chkAgree" /> I agree to the terms.
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-primary" onclick="acceptTerms()">OK</button>
      </div>

         </div>
  </div>
</div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    function showTerms() {
        var modal = new bootstrap.Modal(document.getElementById('termsModal'));
        modal.show();
    }

    function acceptTerms() {
        if (!document.getElementById("chkAgree").checked) {
            alert("You must agree to the terms first.");
            return;
        }

        document.getElementById("<%= hidAccepted.ClientID %>").value = "yes";
        bootstrap.Modal.getInstance(document.getElementById('termsModal')).hide();
    }
</script>

</form>
</body>
</html>
   