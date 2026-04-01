<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Aisha_Website_V1.Default" %>

<%@ Register Src="~/Component/Header_ctrl.ascx" TagPrefix="uc1" TagName="Header_ctrl" %>
<%@ Register Src="~/Component/Footer_ctrl.ascx" TagPrefix="uc1" TagName="Footer_ctrl" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title><%: Page.Title %> </title>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
   
</head>
<body>
    <form id="form1" runat="server">
 

        <uc1:Header_ctrl runat="server" ID="Header_ctrl" />
















<h1 style="text-align: center;color: #7a4e34;"> Digital Organization</h1>
<div class="content">
<p>Under Talal Abu-Ghazaleh Global Digital,training firms offer programs to enhance individual and organizational.</p>
<img src="c:\Users\webtrainee\Downloads\training.png"alt="tag.com"style="float:right;width:"200"height:"200">

<p>The Talal Abu-Ghazaleh E-Training Center offers many certificates, including Talal Abu- Ghazaleh International Diploma in IT Skills (TAG-DIT). It is a certificate that has been designed to develop the basic skills in information technology. The program includes using Microsoft programs, which ensure that participants acquire practical and effective skills.</p>

  
</div>
            
        <uc1:Footer_ctrl runat="server" ID="Footer_ctrl" />

    </form>
</body>
</html>
