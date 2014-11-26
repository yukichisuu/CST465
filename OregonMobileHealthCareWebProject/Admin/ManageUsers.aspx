<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="OregonMobileHealthCareWebProject.Admin.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Manage Users</title>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Manage Users</h1>
    
    <h3>Add Roles</h3>
    <asp:Label ID="lblRoleName" AssociatedControlID="uxRoleName" runat="server">Role Name: </asp:Label>
    <asp:TextBox ID="uxRoleName" runat="server" />
    <br />
    <asp:Button ID="uxCreateRole" Text="Create Role" OnClick="uxCreateRole_Click" runat="server" />
    <br />

    <h3>Remove Roles</h3>
    <asp:Label ID="lblCurrentRoles" AssociatedControlID="uxCurrentRoles" runat="server">Roles: </asp:Label>
    <asp:DropDownList ID="uxCurrentRoles" runat="server" />
    <br />
    <asp:Button ID="uxRemoveRole" Text="Remove Role" OnClick="uxRemoveRole_Click" runat="server" />
    <br />

    <h3>Role Membership</h3>
    <asp:Label ID="lblUsers" AssociatedControlID="uxUsers" runat="server">Users: </asp:Label>
    <asp:DropDownList ID="uxUsers" runat="server" />
    <br />
    <asp:Label ID="lblRoles" AssociatedControlID="uxRoles" runat="server">Roles: </asp:Label>
    <asp:DropDownList ID="uxRoles" runat="server" />
    <br />
    <asp:Button ID="uxAddToGroup" Text="Add To Group" OnClick="uxAddtoGroup_Click" runat="server" />
    <br />
    <asp:Button ID="uxRemoveFromGroup" Text="Remove From Group" OnClick="uxRemoveFromGroup_Click" runat="server" />
    <br />
    <asp:Literal ID="uxOutput" runat="server" />
    <br />
</asp:Content>
