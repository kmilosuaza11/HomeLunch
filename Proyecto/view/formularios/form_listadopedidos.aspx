<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form_listadopedidos.aspx.cs" Inherits="form_listadopedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/verPro.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <%--header--%>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Pedidos</h1>
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
                <a class="nav-item nav-link" href="form_listadopedidos">Pedidos</a>
                <a class="nav-item nav-link disabled" href="#">Disabled</a>
            </div>
        </div>
    </nav>
        <br />
        <br />
        <br />
        <br />
                
        <center>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id_pedido" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_pedido" HeaderText="id_pedido" InsertVisible="False" ReadOnly="True" SortExpression="id_pedido" />
                <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                <asp:BoundField DataField="fech_entrega" HeaderText="fech_entrega" SortExpression="fech_entrega" />
                <asp:BoundField DataField="hora" HeaderText="hora" SortExpression="hora" />
                <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad" />
                <asp:BoundField DataField="doc_usu" HeaderText="doc_usu" SortExpression="doc_usu" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homelunchConnectionString %>" DeleteCommand="DELETE FROM [tbl_pedidos] WHERE [id_pedido] = @id_pedido" InsertCommand="INSERT INTO [tbl_pedidos] ([direccion], [fech_entrega], [hora], [ciudad], [doc_usu], [estado]) VALUES (@direccion, @fech_entrega, @hora, @ciudad, @doc_usu, @estado)" SelectCommand="SELECT * FROM [tbl_pedidos]" UpdateCommand="UPDATE [tbl_pedidos] SET [direccion] = @direccion, [fech_entrega] = @fech_entrega, [hora] = @hora, [ciudad] = @ciudad, [doc_usu] = @doc_usu, [estado] = @estado WHERE [id_pedido] = @id_pedido">
            <DeleteParameters>
                <asp:Parameter Name="id_pedido" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="fech_entrega" Type="String" />
                <asp:Parameter Name="hora" Type="String" />
                <asp:Parameter Name="ciudad" Type="String" />
                <asp:Parameter Name="doc_usu" Type="Int32" />
                <asp:Parameter Name="estado" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="fech_entrega" Type="String" />
                <asp:Parameter Name="hora" Type="String" />
                <asp:Parameter Name="ciudad" Type="String" />
                <asp:Parameter Name="doc_usu" Type="Int32" />
                <asp:Parameter Name="estado" Type="String" />
                <asp:Parameter Name="id_pedido" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
            </center>
</body>
<script src="../Scripts/bootstrap.min.js"></script>
<script src="../Scripts/jquery-3.3.1.min.js"></script>
</html>
