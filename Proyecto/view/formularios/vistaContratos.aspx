<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vistaContratos.aspx.cs" Inherits="view_formularios_vistaContratos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/Inicio.css" rel="stylesheet" />
    <title></title>
</head>
<body>
       <%--header--%>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Contratos</h1>
        </div>
    </div>
    <%--   navbar--%>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="admin.aspx">INICIO</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link active" href="form_productos.aspx">Nuevos Productos<span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="modificarProductos.aspx">Editar Productos</a>
                <a class="nav-item nav-link" href="form_listadopedidos.aspx">Pedidos</a>
                <a class="nav-item nav-link" href="vistaContratos.aspx">contratos</a>
            </div>
        </div>
    </nav>
</body>
</html>
