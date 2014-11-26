<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewRegistrationData.aspx.cs" Inherits="OregonMobileHealthCareWebProject.App_Code.ViewRegistrationData" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>View Registration Data</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Your submitted information: </h2>
    <span class="DisplaySpan">User Name: </span>
    <asp:Literal ID ="uxUserName" runat="server" />
    <br />
    <span class="DisplaySpan">First Name: </span>
    <asp:Literal ID ="uxFirstName" runat="server" />
    <br />
    <span class="DisplaySpan">Last Name: </span>
    <asp:Literal ID ="uxLastName" runat="server" />
    <br />
    <span class="DisplaySpan">Gender: </span>
    <asp:Literal ID ="uxGender" runat="server" />
    <br />
    <span class="DisplaySpan">Password: </span>
    <asp:Literal ID ="uxPassword" runat="server" />
    <br />
    <span class="DisplaySpan">Email Address: </span>
    <asp:Literal ID ="uxEmail" runat="server" />
</asp:Content>
