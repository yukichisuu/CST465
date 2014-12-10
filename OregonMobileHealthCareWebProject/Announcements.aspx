<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Announcements.aspx.cs" Inherits="OregonMobileHealthCareWebProject.Announcements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Announcements</title>

    <%--<script type="text/javascript" src="jquery-2.1.1.min.js" />--%>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%=uxSubmitAnnouncement.ClientID%>').click(function () {
                alert("Hello");
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
    <link rel="stylesheet" href="/StyleSheets/AnnouncementStyleSheet.css" type="text/css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Announcements</h1>

    <asp:UpdatePanel ID="pnlAnnouncement" runat="server">
        <ContentTemplate>
            <asp:UpdateProgress ID="uxProgress" runat="server">
                <ProgressTemplate>
                    <img src="ajax.gif" alt="Updating" style="height:25px;width:25px;" />
                    Updating Panel...
                </ProgressTemplate>
            </asp:UpdateProgress>

            <div id="lblAnnouncement">
                Add New Announcement
            </div>

            <br />

            <div id="NewAnnouncement">
                YOLO
            </div>

            <br />
            
            <asp:Button ID="uxSubmitAnnouncement" Text="Submit Announcement" OnClick="uxSubmitAnnouncement_Click" runat="server" />
        </ContentTemplate>    
    </asp:UpdatePanel>
</asp:Content>
