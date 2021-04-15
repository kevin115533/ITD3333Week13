<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="main.css" /> 
</head>
<body runat="server" >
    <form id="form1" runat="server" >
        <div>
            <label>Name: </label>
            <asp:TextBox ID="nameTxt" runat="server"></asp:TextBox><br />
            <label>Password: </label>
            <asp:TextBox ID="passwordTxt" runat="server"></asp:TextBox><br /><br /><br />
            <asp:Button ID="loginBtn" runat="server" Text="Login" OnClick="loginBtn_Click" /><br /><br />
            <asp:Label ID="statusLbl" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
