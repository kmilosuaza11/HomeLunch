<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form_contratos.aspx.cs" Inherits="form_contratos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/verPro.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 35%;
        }
        .auto-style3 {
            width: 87px;
        }
        .auto-style4 {
            width: 83px;
        }
    </style>
</head>
         <%--header--%>
    <form id="form1" runat="server">
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Contratos</h1>
        </div>
    </div>
    <%--   navbar--%>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="usuario.aspx">Contrato</a>
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
        <br />
        <br />
        <center>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Documento</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="doc_usu" DataValueField="doc_usu">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:homelunchConnectionString %>" SelectCommand="SELECT [doc_usu] FROM [tbl_usuario]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Descripcion</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Producto</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Titulo" DataValueField="Titulo">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:homelunchConnectionString %>" SelectCommand="SELECT [Titulo] FROM [tbl_productos]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Estado</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Fecha Inicio</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Fecha Fin</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
            </center>
<body>




   
    <br />




   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id_contrato" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="id_contrato" HeaderText="id_contrato" InsertVisible="False" ReadOnly="True" SortExpression="id_contrato" />
            <asp:BoundField DataField="doc_usu" HeaderText="doc_usu" SortExpression="doc_usu" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
            <asp:BoundField DataField="producto" HeaderText="producto" SortExpression="producto" />
            <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
            <asp:BoundField DataField="fech_ini" HeaderText="fech_ini" SortExpression="fech_ini" />
            <asp:BoundField DataField="fech_fin" HeaderText="fech_fin" SortExpression="fech_fin" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homelunchConnectionString %>" DeleteCommand="DELETE FROM [tbl_contratos] WHERE [id_contrato] = @id_contrato" InsertCommand="INSERT INTO [tbl_contratos] ([doc_usu], [descripcion], [producto], [estado], [fech_ini], [fech_fin]) VALUES (@doc_usu, @descripcion, @producto, @estado, @fech_ini, @fech_fin)" SelectCommand="SELECT * FROM [tbl_contratos]" UpdateCommand="UPDATE [tbl_contratos] SET [doc_usu] = @doc_usu, [descripcion] = @descripcion, [producto] = @producto, [estado] = @estado, [fech_ini] = @fech_ini, [fech_fin] = @fech_fin WHERE [id_contrato] = @id_contrato">
        <DeleteParameters>
            <asp:Parameter Name="id_contrato" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="doc_usu" Type="Int32" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="producto" Type="String" />
            <asp:Parameter Name="estado" Type="String" />
            <asp:Parameter Name="fech_ini" Type="String" />
            <asp:Parameter Name="fech_fin" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="doc_usu" Type="Int32" />
            <asp:Parameter Name="descripcion" Type="String" />
            <asp:Parameter Name="producto" Type="String" />
            <asp:Parameter Name="estado" Type="String" />
            <asp:Parameter Name="fech_ini" Type="String" />
            <asp:Parameter Name="fech_fin" Type="String" />
            <asp:Parameter Name="id_contrato" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </form>
</body>
<script src="../Scripts/jquery-3.3.1.min.js"></script>
<script src="../Scripts/bootstrap.min.js"></script>
</html>
