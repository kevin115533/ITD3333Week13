<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Success.aspx.cs" Inherits="Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="success.css" /> 
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>Congratulations! You are now logged in!</label><br /><br />
            <asp:Button ID="logoutBtn" runat="server" Text="Logout" OnClick="logoutBtn_Click" />
        </div>
    </form>
</body>
</html>
