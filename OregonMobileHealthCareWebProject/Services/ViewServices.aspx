<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewServices.aspx.cs" Inherits="OregonMobileHealthCareWebProject.Services.ViewServices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>View Services</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>View Services</h1>

    <h2>Select Service From Drop Down List</h2>
    <asp:DropDownList ID="uxServices" runat="server" />
    <br />
    <asp:Button ID="uxShowService" Text="Show Service" OnClick="uxShowService_Click" runat="server" />
    <br />

    <asp:Label ID="lblService" AssociatedControlID="uxService" runat="server">Service: </asp:Label>
    <br />
    <asp:GridView ID="uxService" runat="server">

    </asp:GridView>
</asp:Content>
