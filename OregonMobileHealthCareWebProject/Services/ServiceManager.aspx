<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ServiceManager.aspx.cs" Inherits="OregonMobileHealthCareWebProject.Services.ServiceManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Service Manager Page</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Service Manager</h1>
    <h2>Services</h2>
    <asp:Label ID="lblServices" AssociatedControlID="uxServices" runat="server">Services: </asp:Label>
    <br />
    <asp:GridView ID="uxServices" runat="server">
    </asp:GridView>
    <br />

    <h2>Add A Service</h2>
    <asp:Label ID="lblName" AssociatedControlID="uxName" runat="server">Service Name: </asp:Label>
    <asp:TextBox ID="uxName" runat="server" />
    <br />
    <asp:Label ID="lblCost" AssociatedControlID="uxCost" runat="server">Service Cost: </asp:Label>
    <asp:TextBox ID="uxCost" runat="server" />
    <br />
    <asp:Label ID="lblDescription" AssociatedControlID="uxDescription" runat="server">Service Description: </asp:Label>
    <asp:TextBox ID="uxDescription" TextMode="MultiLine" runat="server" />
    <br />  

    <asp:Button ID="uxAddService" Text="Add Service" OnClick="uxAddService_Click" runat="server" />
</asp:Content>
