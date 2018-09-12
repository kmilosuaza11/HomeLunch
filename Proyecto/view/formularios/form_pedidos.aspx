<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form_pedidos.aspx.cs" Inherits="form_pedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/verPro.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 36%;
            height: 149px;
        }

        .auto-style2 {
            width: 104px;
        }
    </style>
</head>
<body>

       <%--header--%>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Sugerencia</h1>
        </div>
    </div>
    <%--   navbar--%>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="usuario.aspx">INICIO</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link active" href="ver_productos.aspx">Ver Productos<span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="form_sugerencias.aspx">Hacer sugerencia</a>
                <a class="nav-item nav-link" href="form_pedidos.aspx">Hacer Pedido</a>
                <a class="nav-item nav-link disabled" href="form_contratos.aspx">Solicitar Contrato</a>
            </div>
        </div>
    </nav>
        <br />
        <br />
        <center>
            <form runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Direccion</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">FechaEntrega</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Hora</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Time"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Ciudad</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Estado</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" class="btn btn-warning" runat="server" OnClick="Button1_Click" Text="guardar" />
                </td>
            </tr>
        </table>

        <br />
    </form>
    </center>




</body>
<script src="../Scripts/jquery-3.3.1.min.js"></script>
<script src="../Scripts/bootstrap.min.js"></script>
</html>
