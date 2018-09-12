<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form_login.aspx.cs" Inherits="form_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>    
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/stLogin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 168px;
        }
        .auto-style2 {
            width: 42%;
        }
        .auto-style3 {
            width: 168px;
        }
    </style>
    </head>

<body>
  <%--header--%>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Inicio Session.</h1>
        </div>
    </div>

    <br />
    <br />
    <br />
           
    <form id="form1" runat="server">
    <center class="auto-style1">


        <table class="auto-style2">
            <tr>
                <td colspan="2">Iniciar sesion</td>
            </tr>
            <tr>
                <td class="auto-style3">correo</td>
                <td>
                    <asp:TextBox ID="txtCorreo" runat="server" TextMode="Email" onpaste="return false" oncut="return false" oncopy="return false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">clave</td>
                <td>
                    <asp:TextBox ID="txtClave" runat="server" TextMode="Password" onpaste="return false" oncut="return false" oncopy="return false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnEnviar" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Iniciar Sesion" />
                    <br />
                    <asp:Label ID="lblError" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                   
            </tr>
        </table>
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/view/formularios/form_registro.aspx">Registrate Aqui</asp:HyperLink>


        </center>
    </form>
    <%--    foother--%>
    <div class="card">
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
    <h5 class="card-title">Special title treatment</h5>
    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
</body>
<script src="../Scripts/jquery-3.3.1.min.js"></script>
<script src="../Scripts/bootstrap.min.js"></script>
</html>


