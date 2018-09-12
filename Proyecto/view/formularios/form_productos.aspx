<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form_productos.aspx.cs" Inherits="view_formularios_form_productos1" %> 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/Inicio.css" rel="stylesheet" />

</head>
<body>
    <%--header--%>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Ingresa nuevos Productos</h1>
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
                <a class="nav-item nav-link" href="forms_listadopedidos.aspx">Pedidos</a>
                <a class="nav-item nav-link disabled" href="#">Disabled</a>
            </div>
        </div>
    </nav>
    <br />
    <br />
   <section class="fish">
    <form id="form1" runat="server">
        <div class="container">

            <div class="wixx">

                <div class="col-md-4 col-md-offset-4" id="rxn">
                    Producto agregado:
                    <br />
                    <asp:Image ID="ImgPreview"  width="200" src="../../imagenes/ff2.png"  runat="server" />
                    &nbsp;<br />
                    
                    Archivo:
                    <asp:FileUpload ID="fuploadImagen" accept=".jpg" runat="server" CssClass="form-control" />
                    <br />
                     Valor:
                    <asp:TextBox ID="txtValor" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    <br />
                     Descripcion:
                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                    Titulo de Imagen:
                    <asp:TextBox ID="txtTitulo" runat="server" CssClass="form-control"></asp:TextBox>
                      <br />
                    <asp:Button ID="btnSubir" runat="server" Text="Guardar Producto" CssClass="btn btn-success" />
                </div>
            </div>
        </div>
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
    </form>
</section>       
        
</body>
</html>
