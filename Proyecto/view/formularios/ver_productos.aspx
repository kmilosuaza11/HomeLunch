<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ver_productos.aspx.cs" Inherits="view_formularios_ver_productos" %>

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
     <%--header--%>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Productos</h1>
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
                <a class="nav-item nav-link" href="form_pedidos.aspx">Hacer Pedido</a>&nbsp;<a class="nav-item nav-link disabled" href="form_contratos.aspx">Solicitar Contrato</a>
            </div>
        </div>
    </nav>
         <br />
         <br />
          
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="id_producto" HeaderText="id Producto" />
                        <asp:BoundField DataField="id_pedido" HeaderText="Pedido" />
                        <asp:BoundField DataField="valor" HeaderText="agregar" />
                        <asp:BoundField DataField="descripcion" HeaderText="Descripcion" />
                        <asp:BoundField DataField="Titulo" HeaderText="Titulo" />
                        <asp:TemplateField HeaderText="imagen">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("id_producto","manejador.ashx?id_producto={0}") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
         <br />
     </form>
    </center>

</body>
</html>
