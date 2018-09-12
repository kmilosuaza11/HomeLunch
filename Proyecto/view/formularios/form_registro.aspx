<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form_registro.aspx.cs" Inherits="form_registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/registro.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 39%;
            height: 284px;
        }

        .auto-style2 {
            width: 149px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron">
            <h1 class="display-4">Bienvenidos</h1>
            <p class="lead">Regitrate para formar parte de nosotros y disfrutar de nuestros servicios</p>
            <hr class="my-4">
            <h3>YA ESTAS REGISTRADO?</h3>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/view/formularios/form_login.aspx">Ingresa</asp:HyperLink>
        </div>
        <center>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Documento</td>
                <td>
                    <asp:TextBox ID="txtDocumento" runat="server" TextMode="Number"></asp:TextBox>
                    <br />
                    <asp:Label ID="lblDocumento" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">rol</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="id_rol" DataValueField="id_rol">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homelunchConnectionString %>" SelectCommand="SELECT [id_rol] FROM [tbl_rol]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nombre</td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Apellido</td>
                <td>
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Telefono</td>
                <td>
                    <asp:TextBox ID="txtTelefono" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">clave</td>
                <td>
                    <asp:TextBox ID="txtClave" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Correo</td>
                <td>
                    <asp:TextBox ID="txtCorreo" runat="server" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="guardar" style="height: 33px" />
                </td>
            </tr>
        </table>
        <br />
    </form>
    </center>

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
<script src="../Scripts/bootstrap.min.js"></script>
<script src="../Scripts/jquery-3.3.1.min.js"></script>
</html>
