<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OregonMobileHealthCareWebProject.Security.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Register</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Register User</h1>

    <asp:CreateUserWizard MembershipProvider="SqlMembership" ContinueDestinationPageUrl="~/Default.aspx" runat="server" />
</asp:Content>