<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OregonMobileHealthCareWebProject.Security.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Login Page</h1>
    <asp:Login MembershipProvider="SqlMembership" CreateUserText="Register" CreateUserUrl="~/Security/Register.aspx" runat="server" />
</asp:Content>