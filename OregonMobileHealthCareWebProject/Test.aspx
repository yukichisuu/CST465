<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="OregonMobileHealthCareWebProject.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test</title>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js" />

    <script type="text/javascript">
        $(document).ready(function()
        {
            $('#<%=uxButton.ClientID%>').click(function () {
                alert("Hello");
            });
        });
    </script>
</head>
<body>
    <h1>Test</h1>

    
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="uxButton" Text="Button" runat="server" />
    </div>
    </form>
</body>
</html>
