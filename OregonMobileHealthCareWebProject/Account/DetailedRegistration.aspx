<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetailedRegistration.aspx.cs" Inherits="OregonMobileHealthCareWebProject.Account.DetailedRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Detailed Registration</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Register new user.</h1>
    <br />

    <asp:ValidationSummary ID="RegisterValidationSummary" HeaderText="Please correct the following: <br />" ValidationGroup="RegisterValidationGroup" runat="server" />
    <asp:Label ID="RegisterFormLabel" Text="Enter the following information: " runat="server" />
    <br />
    <asp:Label ID="UserNameLabel" AssociatedControlID="uxUserName" Text="User Name: " runat="server" />
    <asp:TextBox ID="uxUserName" runat="server" />
    <asp:RequiredFieldValidator ID="UserNameRequiredFieldValidator" ControlToValidate="uxUserName" Text="*" ErrorMessage="User Name is required." ValidationGroup="RegisterValidationGroup" runat="server" />
    <br />
    <asp:Label ID="FirstNameLabel" AssociatedControlID="uxFirstName" text="First Name: " runat="server" />
    <asp:TextBox ID="uxFirstName" runat="server" />
    <asp:RequiredFieldValidator ID="FirstNameRequiredFieldValidator" ControlToValidate="uxFirstName" Text="*" ErrorMessage="First Name is required." ValidationGroup="RegisterValidationGroup" runat="server" />
    <asp:Label ID="LastNameLabel" AssociatedControlID="uxLastName" text=" Last Name: " runat="server" />
    <asp:TextBox ID="uxLastName" runat="server" />
    <asp:RequiredFieldValidator ID="LastNameRequiredFieldValidator" ControlToValidate="uxLastName" Text="*" ErrorMessage="Last Name is required." ValidationGroup="RegisterValidationGroup" runat="server" />
    <br />
    <asp:Label ID="GenderLabel" AssociatedControlID="uxGender" Text="Gender: " runat="server" />
    <asp:DropDownList ID="uxGender" runat="server">
        <asp:ListItem Value="0">Select</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Prefer not to disclose.</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="GenderRequiredFieldValidator" InitialValue="0" ControlToValidate="uxGender" Text="*" ErrorMessage="Please select an option from the drop down list." ValidationGroup="RegisterValidationGroup" runat="server" />
    <br />
    <asp:Label ID="PasswordLabel" AssociatedControlID="uxPassword" Text="Password: " runat="server" />
    <asp:TextBox ID="uxPassword" TextMode="Password" runat="server" />
    <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" ControlToValidate="uxPassword" Text="*" ErrorMessage="Password is required." ValidationGroup="RegisterValidationGroup" runat="server" />
    <asp:CheckBox ID="PasswordCheckBox" Text="Show Password" AutoPostBack="true" OnCheckedChanged="PasswordCheckBox_CheckedChanged" runat="server" />
    <br />
    <asp:Label ID="ConfirmPasswordLabel" AssociatedControlID="uxConfirmPassword" Text="Confirm Password: " runat="server" />
    <asp:TextBox ID="uxConfirmPassword" TextMode="Password" runat="server" />
    <asp:RequiredFieldValidator ID="ConfirmPasswordFieldValidator" ControlToValidate="uxConfirmPassword" Text="*" ErrorMessage="Please confirm your password." ValidationGroup="RegisterValidationGroup" runat="server" />
    <asp:CompareValidator ID="ConfirmPasswordCompareValidator" ControlToCompare="uxPassword" ControlToValidate="uxConfirmPassword" Text="*" ErrorMessage="Passwords do not match." ValidationGroup="RegisterValidationGroup" runat="server" />
    <br />
    <asp:Label ID="EmailLabel" AssociatedControlID="uxEmail" Text="Email Address: " runat="server" />
    <asp:TextBox ID="uxEmail" runat="server" />
    <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" ControlToValidate="uxEmail" Text="*" ErrorMessage="Email is required." ValidationGroup="RegisterValidationGroup" runat="server" />
    <br />
    <asp:Label ID="ConfirmEmailLabel" AssociatedControlID="uxConfirmEmail" Text="Confirm Email Address: " runat="server" />
    <asp:TextBox ID="uxConfirmEmail" runat="server" />
    <asp:RequiredFieldValidator ID="ConfirmEmailRequiredFieldValidator" ControlToValidate="uxConfirmEmail" Text="*" ErrorMessage="Please confirm your email address." ValidationGroup="RegisterValidationGroup" runat="server" />
    <asp:CompareValidator ID="ConfirmEmailCompareValidator" ControlToCompare="uxEmail" ControlToValidate="uxConfirmEmail" Text="*" ErrorMessage="Email addresses do not match." ValidationGroup="RegisterValidationGroup" runat="server" />
    <br /> 
    <asp:Button ID="uxSubmit" Text="Submit" OnClick="uxSubmit_Click" ValidationGroup="RegisterValidationGroup" runat="server" />
</asp:Content>
