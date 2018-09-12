<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmEncriptacionMD5.aspx.cs" Inherits="Interfaces_frmEncriptacionMD5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:TextBox ID="txtTexto" runat="server"></asp:TextBox>
        <asp:Button ID="btnOk" runat="server" Text="encriptar" OnClick="btnOk_Click" />
        <br />
        <asp:Label ID="lblTextoEncriptado" runat="server" Text=""></asp:Label>
        
    </form>
</body>
</html>
