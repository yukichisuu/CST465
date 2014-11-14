<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="OregonMobileHealthCareWebProject.Account.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Logout</h1>
    <asp:Button ID="uxLogout" Text="Logout" OnClick="uxLogout_Click" runat="server" />
</asp:Content>
