<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form_sugerencias.aspx.cs" Inherits="view_formularios_form_sugerencias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/verPro.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 25%;
        }
        .auto-style2 {
            width: 102px;
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
    <br />
    <br />
     
    <center>
    <form id="form1" runat="server">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">documendo</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="doc_usu" DataValueField="doc_usu">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:homelunchConnectionString %>" SelectCommand="SELECT [doc_usu] FROM [tbl_usuario]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Sugerencia</td>
                <td>
                    <asp:TextBox ID="txtSugerencia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Fecha</td>
                <td>
                    <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" OnClick="Button1_Click" Text="Enviar" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_sugerencia" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="id_sugerencia" HeaderText="id_sugerencia" InsertVisible="False" ReadOnly="True" SortExpression="id_sugerencia" />
                <asp:BoundField DataField="doc_usu" HeaderText="doc_usu" SortExpression="doc_usu" />
                <asp:BoundField DataField="sugerencia" HeaderText="sugerencia" SortExpression="sugerencia" />
                <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homelunchConnectionString %>" DeleteCommand="DELETE FROM [tbl_sugerencias] WHERE [id_sugerencia] = @id_sugerencia" InsertCommand="INSERT INTO [tbl_sugerencias] ([doc_usu], [sugerencia], [fecha]) VALUES (@doc_usu, @sugerencia, @fecha)" SelectCommand="SELECT * FROM [tbl_sugerencias]" UpdateCommand="UPDATE [tbl_sugerencias] SET [doc_usu] = @doc_usu, [sugerencia] = @sugerencia, [fecha] = @fecha WHERE [id_sugerencia] = @id_sugerencia">
            <DeleteParameters>
                <asp:Parameter Name="id_sugerencia" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="doc_usu" Type="String" />
                <asp:Parameter Name="sugerencia" Type="String" />
                <asp:Parameter Name="fecha" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="doc_usu" Type="String" />
                <asp:Parameter Name="sugerencia" Type="String" />
                <asp:Parameter Name="fecha" Type="String" />
                <asp:Parameter Name="id_sugerencia" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </form>
        </center>
</body>
</html>
