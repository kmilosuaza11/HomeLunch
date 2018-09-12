<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usuario.aspx.cs" Inherits="view_formularios_usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/verPro.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="cerrar.aspx">Cerrar Sesion</asp:HyperLink>
        </div>
    </form>
     <%--header--%>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Usuario</h1>
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
</body>
</html>
