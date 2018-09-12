<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modificarProductos.aspx.cs" Inherits="view_formularios_modificarProductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/Inicio.css" rel="stylesheet" />
    <script src="js/validaciones.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <%--header--%>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Modificar Productos</h1>
            <p class="lead">Aca podras modificar los productos.</p>
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
                <a class="nav-item nav-link" href="#">Editar Productos</a>
                <a class="nav-item nav-link" href="form_pedidos.aspx">Pedidos</a>
                <a class="nav-item nav-link disabled" href="#">Disabled</a>
            </div>
        </div>
    </nav>
        <br />
        <br />
        <br />
        <center>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id_producto" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="id_producto" HeaderText="id_producto" InsertVisible="False" ReadOnly="True" SortExpression="id_producto" />
                <asp:BoundField DataField="id_pedido" HeaderText="id_pedido" SortExpression="id_pedido" />
                <asp:BoundField DataField="valor" HeaderText="valor" SortExpression="valor" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homelunchConnectionString %>" DeleteCommand="DELETE FROM [tbl_productos] WHERE [id_producto] = @id_producto" InsertCommand="INSERT INTO [tbl_productos] ([id_pedido], [valor], [descripcion], [Imagen], [Titulo]) VALUES (@id_pedido, @valor, @descripcion, @Imagen, @Titulo)" SelectCommand="SELECT * FROM [tbl_productos]" UpdateCommand="UPDATE [tbl_productos] SET [id_pedido] = @id_pedido, [valor] = @valor, [descripcion] = @descripcion, [Imagen] = @Imagen, [Titulo] = @Titulo WHERE [id_producto] = @id_producto">
            <DeleteParameters>
                <asp:Parameter Name="id_producto" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id_pedido" Type="String" />
                <asp:Parameter Name="valor" Type="String" />
                <asp:Parameter Name="descripcion" Type="String" />
                <asp:Parameter Name="Imagen" Type="Object" />
                <asp:Parameter Name="Titulo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_pedido" Type="String" />
                <asp:Parameter Name="valor" Type="String" />
                <asp:Parameter Name="descripcion" Type="String" />
                <asp:Parameter Name="Imagen" Type="Object" />
                <asp:Parameter Name="Titulo" Type="String" />
                <asp:Parameter Name="id_producto" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
    </center>



    </body>
</html>
